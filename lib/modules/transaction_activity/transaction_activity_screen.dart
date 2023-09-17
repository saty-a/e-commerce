import 'package:ecommerce_app/data/values/constants.dart';
import 'package:ecommerce_app/widgets/cards/transaction_activity_card.dart';
import 'package:flutter/material.dart';

import '../../data/values/strings.dart';

class TransactionActivity extends StatelessWidget {
  const TransactionActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(
              left: 24,
            ),
            child: Text(AppStrings.recentActivity),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return TransactionActivityCard(
                    success:
                        Constants.paymentHistory.elementAt(index)["success"] ??
                            "",
                    amount:
                        Constants.paymentHistory.elementAt(index)["amount"] ??
                            "",
                    timestamp: Constants.paymentHistory
                            .elementAt(index)["timestamp"] ??
                        "");
              },
              itemCount: Constants.paymentHistory.length),
        ));
  }
}
