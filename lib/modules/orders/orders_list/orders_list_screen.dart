import 'package:flutter/material.dart';
import '../../../data/values/strings.dart';
import '../../../routes/app_routes.dart';
import '../order_status_card.dart';

/// Order List Screen
class OrderListScreen extends StatelessWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(AppStrings.orders)),

        /// ListView containing order lists.
        body: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.orderDetails);
              },
              child: OrderStatusCard(
                isOrderDelivered: false,
                onPressed: () {},
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.orderDetails);
              },
              child: OrderStatusCard(
                  isOrderDelivered: true,
                  price: "₹ 1,498.00",
                  productList: "Boat wireless headphones (Deep Base)",
                  onPressed: () {}),
            )
          ],
        )

        /// This will be used later when data will come from APIs.
        /* ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              /// Order Status Card
              return const OrderStatusCard(
                  buttonText: "", isOrderDelivered: true);
            })*/

        );
  }
}
