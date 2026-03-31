

import 'package:flutter_bloc/flutter_bloc.dart';

import 'registration_event.dart';
import 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<SubmitRegistration>((event, emit) async {
      emit(RegistrationLoading());

      await Future.delayed(const Duration(seconds: 2));

      if (event.name.isNotEmpty &&
          event.email.isNotEmpty &&
          event.password.isNotEmpty) {
        emit(RegistrationSuccess());
      } else {
        emit(RegistrationFailure('Please fill all fields'));
      }
    });
  }
}