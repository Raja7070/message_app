import 'package:flutter/material.dart';

class CateegoriesSelector extends StatefulWidget {
  @override
  _CateegoriesSelectorState createState() => _CateegoriesSelectorState();
}

class _CateegoriesSelectorState extends State<CateegoriesSelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 28.0,
                  color:
                      index == selectedIndex ? Color(0x55CFD8DC) : Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
