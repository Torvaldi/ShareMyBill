class User {
  final String firstName;
  final String lastName;
  final bool isAdmin;

  User({required this.firstName, required this.lastName, this.isAdmin = false});

  // getters
  String get fullName => '$firstName $lastName';
}
