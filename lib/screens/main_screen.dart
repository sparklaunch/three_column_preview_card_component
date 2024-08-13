import 'package:flutter/material.dart';
import 'package:three_column_preview_card_component/components/item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          clipBehavior: Clip.hardEdge,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Item(
                title: "Sedans",
                content:
                    "Choose a sedan for its affordability and excellent fuel economy. Ideal for cruising in the city or on your next road trip.",
                color: Color.fromRGBO(222, 122, 33, 1),
              ),
              Item(
                title: "SUVs",
                content:
                    "Take an SUV for its spacious interior, power, and versatility. Perfect for your next family vacation and off-road adventures.",
                color: Color.fromRGBO(0, 94, 103, 1),
              ),
              Item(
                title: "Luxury",
                content:
                    "Cruise in the best car brands without the bloated prices. Enjoy the enhanced comfort of a luxury rental and arrive in style.",
                color: Color.fromRGBO(0, 56, 55, 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}
