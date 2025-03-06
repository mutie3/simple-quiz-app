import 'package:flutter/material.dart';
import 'package:quize_app/models/answer_item_model.dart';

class AnswerBox extends StatelessWidget {
  const AnswerBox({
    super.key,
    required this.answerMap,
    required this.qustionsChangeCallback,
    required this.isSelected,
  });

  final AnswerItemModel answerMap;
  final VoidCallback qustionsChangeCallback;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: qustionsChangeCallback,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor:
                isSelected ? Colors.green : Colors.black87, // 🔥 لون أوضح
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (isSelected)
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.check_circle, color: Colors.white),
                ),
              Text(
                answerMap.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isSelected
                      ? Colors.white
                      : Colors.grey[300], // 🔥 لون النص الأبيض عند التحديد
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
