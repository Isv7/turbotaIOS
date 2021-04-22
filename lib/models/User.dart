import 'dart:convert';

class User {
  const User(this.name, this.phone, this.firebaseID, this.token);

  final String name;
  final String phone;
  final String firebaseID;
  final String token;

  factory User.fromResponse(Map<String, dynamic> user) {
    return User(
      user["name"],
      user["phone"],
      user["firebase_id"],
      user["token"],
    );
  }

  String toJson() {
    return json.encode({
      "name": this.name,
      "phone": this.phone,
      "firebase_id": this.firebaseID,
      "token": this.token,
    });
  }

  @override
  String toString() {
    return '{ name: $name, phone: $phone, firebase_id: $firebaseID, token: $token }';
  }
}
