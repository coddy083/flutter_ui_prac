import 'package:flutter/material.dart';

class CurrentcyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInvert;
  final int sequence;

  final _blackColor = const Color(0xFF182123); //private

  const CurrentcyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInvert,
    required this.sequence,
  });

  Offset sequenceOffset() {
    double y = sequence * -10;
    return sequence == 1 ? const Offset(0, 0) : Offset(0, y);
  }

  void handleClick() {
    //handleClick 이벤트
    // print(name);
  }

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: sequenceOffset(),
      child: GestureDetector(
        //GestureDetector 로 감싸서 onTap으로 이벤트 발생
        onTap: handleClick,
        child: Container(
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
        ),
      ),
    );
  }
}
