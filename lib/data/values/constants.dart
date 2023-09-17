class Timeouts {
  Timeouts._privateConstructor();

  static const connectionTimeout = 30000;
  static const receiveTimeout = 30000;
}

class AppSecrets {
  AppSecrets._privateConstructor();

  static const apiKey = "054851f4b1c94dde957ce22e15de1fdd";
}

class Constants {
  static const topUpPrice = [200, 500, 1000, 1500];
  static const paymentHistory = [
    {"success": "false", "amount": "1000", "timestamp": "2023-03-22T04:24:25Z"},
    {"success": "true", "amount": "1000", "timestamp": "2023-03-22T04:24:25Z"},
    {"success": "false", "amount": "1000", "timestamp": "2023-03-22T04:24:25Z"},
    {"success": "true", "amount": "1000", "timestamp": "2023-03-22T04:24:25Z"}
  ];
}

class Dummies {
  static const dummyFAQs = [
    "How are items packaged?",
    "Can I use Credit/Debit card to pay for orders?",
    "How to use wallet and redeem coupons.",
  ];
  static const dummyFAQCategories = [
    "Orders",
    "Cancellations and Returns",
    "Payments",
  ];
}
