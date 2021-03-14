class User {
  final int id;
  final String name;
  final String imageUrl;

  User({
    this.id,
    this.name,
    this.imageUrl,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Nick',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User teacher = User(
  id: 1,
  name: 'Teacher',
  imageUrl: 'assets/images/greg.jpg',
);
final User student2 = User(
  id: 2,
  name: 'student 2',
  imageUrl: 'assets/images/greg.jpg',
);
