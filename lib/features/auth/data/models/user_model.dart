class UserModel {
  final String name;
  final String email;
  final String password;
  final String image;
  final String token;

  UserModel({required this.name, required this.email, required this.image, required this.token, required this.password});

  factory UserModel.fromJson(Map<String, dynamic> json,{required String password}) {
    return UserModel(
      name: json['data']['name'],
      email: json['data']['email'],
      image: json['data']['image'],
      token: json['data']['token'],
     password: password,
    );
  }
}
