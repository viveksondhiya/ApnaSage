import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ApnasageFirebaseUser {
  ApnasageFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ApnasageFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ApnasageFirebaseUser> apnasageFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ApnasageFirebaseUser>(
            (user) => currentUser = ApnasageFirebaseUser(user));
