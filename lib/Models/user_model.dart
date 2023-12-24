class User {
  final int id;
  final String fullname;
  final String email;
  final String password;
  final String roleuser;
  final String? imgprofile;

  User({
    required this.id,
    required this.fullname,
    required this.email,
    required this.password,
    required this.roleuser,
    this.imgprofile,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      fullname: json['fullname'],
      email: json['email'],
      password: json['password'],
      roleuser: json['roleuser'],
      imgprofile: json['imgprofile'],
    );
  }
}