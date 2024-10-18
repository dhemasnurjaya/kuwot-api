# An example of using a custom Dockerfile with Dart Frog
# Official Dart image: https://hub.docker.com/_/dart
# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.17)
FROM dart:stable AS build

# Install sqlite
RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev

# Copy sqlite library to runtime
RUN set -eux; \
    case "$(dpkg --print-architecture)" in \
        amd64) \
            TRIPLET="x86_64-linux-gnu" ;; \
        armhf) \
            TRIPLET="arm-linux-gnueabihf" ;; \
        arm64) \
            TRIPLET="aarch64-linux-gnu" ;; \
        *) \
            echo "Unsupported architecture" ; \
            exit 5;; \
    esac; \
    FILES="/lib/$TRIPLET/libsqlite3.so"; \
    for f in $FILES; do \
        dir=$(dirname "$f"); \
        mkdir -p "/runtime$dir"; \
        cp --archive --link --dereference --no-target-directory "$f" "/runtime$f"; \
    done

WORKDIR /app

# Resolve app dependencies.
COPY pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY . .

# Build auto-generated source code.
RUN dart run build_runner build --delete-conflicting-outputs

# Generate a production build.
RUN dart pub global activate dart_frog_cli
RUN dart pub global run dart_frog_cli:dart_frog build

# Ensure packages are still up-to-date if anything has changed.
RUN dart pub get --offline
RUN dart compile exe build/bin/server.dart -o build/bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch
WORKDIR /app
COPY --from=build /runtime/ /
COPY --from=build /app/build/bin/server /app/bin/
#COPY --from=build /app/build/quotes.db /app/
COPY --from=build /app/build/.env /app/
COPY --from=build /app/build/public/ /app/public/
# Uncomment the following line if you are serving static files.
# COPY --from=build /app/build/public /public/

# Start the server.
CMD ["/app/bin/server"]
