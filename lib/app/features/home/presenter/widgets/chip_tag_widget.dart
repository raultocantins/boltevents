import 'package:flutter/material.dart';

class ChipTag extends StatelessWidget {
  const ChipTag({Key? key, required this.label, required this.isSelected})
      : super(key: key);

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Chip(
        avatar: Icon(Icons.radio_button_checked,
            color: isSelected ? Theme.of(context).primaryColor : Colors.black),
        backgroundColor:
            isSelected ? Colors.white : Colors.transparent.withOpacity(0.8),
        label: Text(
          label,
          style: TextStyle(
              fontSize: 16,
              color:
                  isSelected ? Theme.of(context).primaryColor : Colors.white),
        ),
      ),
    );
  }
}
