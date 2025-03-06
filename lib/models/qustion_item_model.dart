import 'package:flutter/material.dart';
import 'package:quize_app/models/answer_item_model.dart';

class QustionItemModel {
  final String title;
  final List<AnswerItemModel> answers;
  QustionItemModel({required this.title, required this.answers});
}

List<QustionItemModel> qustions = [
  QustionItemModel(
    title: "What is your favorite food?",
    answers: [
      AnswerItemModel(title: "Meat", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Milk", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "Egg", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "Chicken", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "What is your favorite sport?",
    answers: [
      AnswerItemModel(title: "Football", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Basketball", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "Volleyball", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "Kickboxing", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "What is your favorite animal?",
    answers: [
      AnswerItemModel(title: "Cat", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Dog", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "Lion", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "Monkey", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "What is your favorite color?",
    answers: [
      AnswerItemModel(title: "Blue", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Red", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "Green", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "Yellow", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "Which programming language do you prefer?",
    answers: [
      AnswerItemModel(title: "Python", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Dart", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "JavaScript", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "C++", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "What is your dream travel destination?",
    answers: [
      AnswerItemModel(title: "Japan", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Switzerland", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "Maldives", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "USA", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "What type of movies do you like?",
    answers: [
      AnswerItemModel(title: "Action", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Comedy", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "Sci-Fi", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "Horror", onPressed: () => debugPrint("D")),
    ],
  ),
  QustionItemModel(
    title: "Which social media platform do you use the most?",
    answers: [
      AnswerItemModel(title: "Instagram", onPressed: () => debugPrint("A")),
      AnswerItemModel(title: "Twitter", onPressed: () => debugPrint("B")),
      AnswerItemModel(title: "TikTok", onPressed: () => debugPrint("C")),
      AnswerItemModel(title: "Facebook", onPressed: () => debugPrint("D")),
    ],
  ),
];
