


import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Stream<User?> AuthStateChanges() {
    return _auth.authStateChanges();
  }

  User? getCurrentUser() {
    return _auth.currentUser;
  }

  Future<UserCredential> signInWithEmailAndPassword({
    required String email, 
    required String password}) async {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

}