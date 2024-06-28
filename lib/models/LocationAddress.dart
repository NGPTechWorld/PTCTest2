import 'dart:convert';

class LocationAddress {
  String name;
  String street;
  String city;
  String details;
  LocationAddress({
    required this.name,
    required this.street,
    required this.city,
    required this.details,
  });

  String getLocation() {
    return '$street, $city';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'street': street,
      'city': city,
      'details': details,
    };
  }

  factory LocationAddress.fromMap(Map<String, dynamic> map) {
    return LocationAddress(
      name: map['name'] as String,
      street: map['street'] as String,
      city: map['city'] as String,
      details: map['details'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationAddress.fromJson(String source) =>
      LocationAddress.fromMap(json.decode(source) as Map<String, dynamic>);
}
