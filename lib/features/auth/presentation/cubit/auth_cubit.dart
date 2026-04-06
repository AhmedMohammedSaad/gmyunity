import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      if (email == 'test@gym.com' && password == 'password') {
        emit(const AuthSuccess('Login Successful'));
      } else {
        emit(const AuthError('Invalid credentials'));
      }
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> signup(String name, String email, String password) async {
    emit(AuthLoading());
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      emit(const AuthSuccess('Signup Successful'));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }

  Future<void> resetPassword(String email) async {
    emit(AuthLoading());
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));
      emit(const AuthSuccess('Reset link sent'));
    } catch (e) {
      emit(AuthError(e.toString()));
    }
  }
}
