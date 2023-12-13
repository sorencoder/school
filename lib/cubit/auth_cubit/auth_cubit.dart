import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school/cubit/auth_cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialState());
}

void validate(String email, String password, String confirmPassword) {
  if (email == '' || password == '' || confirmPassword == '') {}
  if (password != confirmPassword) {
  } else {
    singup(email, password);
  }
}

void singup(String email, String password) async {
  final firebase = FirebaseAuth.instance;
  try {
    firebase.signInWithEmailAndPassword(email: email, password: password);
  } catch (e) {
    print(e.toString());
  }
}
