import 'package:kuwot_api/core/auth/simple_auth_rsa.dart';
import 'package:kuwot_api/env.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockEnv extends Mock implements EnvImpl {}

void main() {
  late MockEnv env;
  late SimpleAuthRSA rsaAuth;

  setUp(() {
    env = MockEnv();
    rsaAuth = SimpleAuthRSA(env: env);
  });

  test('should decrypt token with private key', () {
    // arrange
    const tPrivKey =
        'LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlDWEFJQkFBS0JnUURFUE8yc3RjQVoxN0UxQmhQMllNSGZRa0RVSWI1a1VwSzhSdlR5QzlHR0RhNG5hampaCkR2TzB6b0lDdmlqWjZOT3kvTTUrSTYwNWt3QkdMV3Q0eWE3SThEUjE5aElzUHFUU2NjRmt6NDZOSmpjdFNDbHQKZTJtOUtuY3NnN2hkMFJ1UGRxYjhXWTB1OWNNZzFnK0xFTVBvbm15d2t6TTBlVGd6aDBFT3ZRamVUUUlEQVFBQgpBb0dBSTZUdGh2RjhjelU2ZXVjZnVTRGFGak55a3hXTi82ci8vRExuU3cvYWZ2NzlJeXVvSjhVUGYwZ0RWWHcwCjcxL2JGQ2ZYV2hJZzVOUk91SENIbE9rTlZpRGQ2by9KNkNEeXkrdjRqaTc0QVNyd2JhempzL1Q1dmhFMjhPaFYKOWhHdlVERmpUTVZja0d3V0Yrb1RKSEl1UWcxZkRxS0Q0OXRWWDloT3pWd21FQUVDUVFEaUtFZTg1QjdQQUFaeAo5b2pvRlM2MElwbXd5NW1ad3FxSU9RdXp6ZnUydTNiTVdGRHpzejdVK2pmVGJBVkt2MVp6UWVrcW85Y1hVVzVoCnZjanpDVE9GQWtFQTNpSDB6M01MSTEyamJHMWtzRW1KdkxaMHJtUUF4U1NaUjZQdWwxWjE1VVUzbmpCdDl0clkKaTArMHRLTTExTUZpRnkrdW1iWEQ3ODk1MTI4eG1MaUdLUUpCQUxmNWJvcEJ4TEk5NGdCWlBud1ZwejJRbkJnUApPRysxeFVZMXFjaG1PMnNtU3ZqbXEwdmtONnZIdFJ3L1ZucTg5aFdpdTR3ZFpqOG8xak9hME5xc1ZJVUNRQzZGCjhoNFl2RFoyQUNwUFp3MDgrYW9hbEttSnJGZWQ2TFNHY3d3alFhSDVNMExnWmNlVDRsS2JLUC9FUnh2K1BLc2EKZzNrU0JxMk5TTG1FUW1ENEZMRUNRR3UwWThSSCtyQkdXT1ZLV2NNTUtHZzZqYkZ5cUVoSFovMER3ZWNGRElWWgpUR01IMGJPcjJaTjV3S1dSZ01CMUd4dzAzRGNQY1F0VXNlZU1xK1hHa3c4PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQ==';
    const tToken =
        'VwG7aAQ+8cbfyHuHAJzJeq2n9bQnJ1v/OiQQfWuQvtw0voQkbCYGsT0kWI3hHmJDQ6q2v0L8Lrx4AwGzqJXNlhH/P6YGXykGabD8N/5ROWoRc5cCemP1EESyZLk531LSPEg4tFkWN1MLU/4As7Jif4nVbkfwJznDaspjb5evF6s=';
    const tDecryptedToken = '94bccf9c-7ca4-4f2d-86ce-1f9f03ebf34f';

    when(() => env.authPrivateKey).thenReturn(tPrivKey);

    // act
    final decryptedToken = rsaAuth.decryptToken(tToken);

    // assert
    expect(decryptedToken, tDecryptedToken);
  });

  test('should return false when token is not valid', () {
    // arrange
    const tToken = 'invalid-token';
    // act
    final isValid = rsaAuth.isTokenValid(tToken);
    // assert
    expect(isValid, false);
  });

  test('should return true when token is valid', () {
    // arrange
    const tToken = '94bccf9c-7ca4-4f2d-86ce-1f9f03ebf34f';
    // act
    final isValid = rsaAuth.isTokenValid(tToken);
    // assert
    expect(isValid, true);
  });
}
