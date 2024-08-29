import 'dart:io';

String readResponse(String name) =>
    File('test/_responses/$name.json').readAsStringSync();
