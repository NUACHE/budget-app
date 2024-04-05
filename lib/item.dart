import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String emoji;
  final String title;
  final MaterialColor color;
  final bool selected;
  const ItemCard({super.key, required this.emoji, required this.title, required this.color,  this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Opacity(
       opacity: selected? 1: 0.7,
        child: Column(
          
          children: [
            Container(
                decoration: BoxDecoration(
                    color: color[100],
                    borderRadius: BorderRadius.circular(12),
                    border:Border.all(color: selected? color : Colors.transparent, width: 3) ),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12),
                  child: Text(
                    emoji,
                    
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 50,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: selected?  color[700]: Colors.black26,
                    overflow: TextOverflow.ellipsis
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
