class Person {
  String name;
  int age;
  String address;

  Person({required this.name, required this.age, required this.address});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'],
      age: json['age'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'address': address,
    };
  }
}
