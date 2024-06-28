import 'dart:convert';

class CardMoney {
  static int cntId = 0;
  int id;
  String holderName;
  String cardNumber;
  String expDate;
  int cvc;
  double money;
  CardMoney({
    required this.holderName,
    required this.cardNumber,
    required this.expDate,
    required this.cvc,
    required this.money,
  }) : id = ++cntId;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'holderName': holderName,
      'cardNumber': cardNumber,
      'expDate': expDate,
      'cvc': cvc,
      'money': money,
    };
  }

  factory CardMoney.fromMap(Map<String, dynamic> map) {
    return CardMoney(
      holderName: map['holderName'] as String,
      cardNumber: map['cardNumber'] as String,
      expDate: map['expDate'] as String,
      cvc: map['cvc'] as int,
      money: map['money'] as double,
    )..id = map['id'] as int;
  }

  String toJson() => json.encode(toMap());

  factory CardMoney.fromJson(String source) =>
      CardMoney.fromMap(json.decode(source) as Map<String, dynamic>);
}
