import 'package:clean_architecture/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/auth/user.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.emailAlreadyUsed());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailStr, password: passwordStr);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_WRONG_PASSWORD" ||
          e.code == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.cancelledByUser());
    }
  }

  @override
  Future<AppUser?> getSignedInUser() async {
    final uid = _firebaseAuth.currentUser?.uid;
    if (uid != null) {
      return AppUser(id: UniqueId.fromUniqueString(uid??""));
    } else {
      return null;
    }
  }

  @override
  Future<void> signOut() {
    return Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }
}
