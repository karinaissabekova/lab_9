abstract class RegistrationEvent {}

class SubmitRegistration extends RegistrationEvent {
  final String name;
  final String email;
  final String password;

  SubmitRegistration({
    required this.name,
    required this.email,
    required this.password,
  });
}