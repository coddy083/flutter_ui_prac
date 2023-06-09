import 'package:flutter/material.dart';

class CurrentcyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInvert;

  final _blackColor = const Color(0xFF182123); //private

  const CurrentcyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInvert,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30,
      ),
      decoration: BoxDecoration(
        color: isInvert ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: isInvert ? _blackColor : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      color: isInvert ? _blackColor : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      color: isInvert ? _blackColor : Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Transform.scale(
            scale: 3,
            child: Transform.translate(
              offset: const Offset(2, 8),
              child: Icon(
                icon,
                color: isInvert ? _blackColor : Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
