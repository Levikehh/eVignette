class User {
  String name;

  User({required this.name});

  User.fromJson(Map<String, dynamic> json) : name = json['name'];

  Map<String, dynamic> toJson() => {'name': name};
}

List<User> users = [
  User(
    name: 'Levente',
  ),
  User(
    name: 'Csongor',
  ),
  User(
    name: 'Vivi',
  ),
];
