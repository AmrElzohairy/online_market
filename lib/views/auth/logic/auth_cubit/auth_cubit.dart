import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  var client = Supabase.instance.client;

  Future<void> login(String email, String password) async {
    emit(LoginLoading());
    try {
      await client.auth.signInWithPassword(email: email, password: password);
      emit(LoginSuccess());
    } on AuthException catch (e) {
      log("Error in login in auth cubit in auth exception: ${e.message}");
      emit(LoginFailure(error: e.message));
    } catch (error) {
      log("Error in login in auth cubit in catch: ${error.toString()}");
      emit(LoginFailure(error: error.toString()));
    }
  }
}
