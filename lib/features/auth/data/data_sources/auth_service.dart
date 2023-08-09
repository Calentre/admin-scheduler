import 'dart:html';

import 'package:calentre/config/constants/constants.dart';
import 'package:calentre/core/DTOs/user_dto.dart';
import 'package:calentre/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  AuthService(this._dio, this._userDTO, this._remoteURLs);

  final Dio _dio;
  final UserDTO _userDTO;
  final RemoteURLs _remoteURLs;
  CalentreUser? _calentreUser;
  final supabase = Supabase.instance.client;

  Future<CalentreUser?> signInWithGoogle() async {
    // Create a new provider
    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider.addScope(_remoteURLs.googleContactScope);
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    // Once signed in, return the UserCredential
    final credential =
        await FirebaseAuth.instance.signInWithPopup(googleProvider);

    if (credential.user != null) {
      _calentreUser = CalentreUser(
          userId: credential.user!.uid,
          name: credential.user!.displayName ?? "",
          email: credential.user!.uid);
      return _calentreUser!;
    }

    return _calentreUser;
  }

  Future<void> signInWithEmail() async {
// if(_calentreUser != null) {
//       final AuthResponse res = await supabase.auth.si(
//           email: _calentreUser!.email,);
// }
  }

//supabase signin with email

//Update user

//delete user
}
