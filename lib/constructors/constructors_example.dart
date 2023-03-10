class User {
  final String name;
  final int age;

  const User(this.age, {required this.name});
}


void main() {
  const toto1 = User(42, name: 'toto');
  const toto2 = User(42, name: 'toto');

  var toto3 = User(42, name: 'toto');
  var toto4 = User(42, name: 'toto');

  print(toto1 == toto2);
  print(toto3 == toto4);
}