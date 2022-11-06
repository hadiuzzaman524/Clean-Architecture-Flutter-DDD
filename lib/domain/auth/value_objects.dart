import 'package:clean_architecture/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const EmailAddress._(this.value);
  factory EmailAddress(String input) {
    return EmailAddress._(validEmailAddress(input));
  }
}

class Password extends ValueObjects<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const Password._(this.value);
  factory Password(String input) {
    return Password._(validPassword(input));
  }
}
