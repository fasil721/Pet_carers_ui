class UserModel {
  UserModel({
    this.email,
    this.id,
    this.password,
    this.username,
  });

  String? email;
  String? id;
  String? password;
  String? username;

  Map<String, String> toJson() => {
        "email": email!,
        "id": id!,
        "password": password!,
        "username": username!,
      };
}
