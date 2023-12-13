abstract class AuthState {}

class InitialState extends AuthState {}

class LoadingState extends AuthState {}

class SingedInState extends AuthState {}

class ErrorState extends AuthState {
  String errorMessage = '';
  ErrorState(this.errorMessage);
}
