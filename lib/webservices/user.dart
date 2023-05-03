class User {
  final String name;
  final String userName;
  final String email;

  User({
    required this.name,
    required this.userName,
    required this.email
  });

  static User fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'] is String ? json['name'] : null,
        userName: json['username'] is String ? json['username'] : null,
        email: json['email'] is String ? json['email'] : null,
    );
  }
}
