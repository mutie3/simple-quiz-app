import 'package:flutter/material.dart';
import 'package:quize_app/models/qustion_item_model.dart';
import 'package:quize_app/widgets/answer_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int totalScore = 0;
  bool showTotalScore = false;
  int? selectedAnswerIndex;

  void changeQuestion() {
    if (selectedAnswerIndex == null) return;

    setState(() {
      totalScore += 10;
      selectedAnswerIndex = null;
      if (questionIndex + 1 < qustions.length) {
        questionIndex += 1;
      } else {
        showTotalScore = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F4F8), // استخدام لون خلفية فاتح وهادئ

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: !showTotalScore
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Step ${questionIndex + 1} of ${qustions.length}",
                        style:
                            TextStyle(color: Colors.grey[600], fontSize: 14)),
                    const SizedBox(height: 10),
                    Text(
                      qustions[questionIndex].title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: List.generate(
                        qustions[questionIndex].answers.length,
                        (index) => AnswerBox(
                          answerMap: qustions[questionIndex].answers[index],
                          isSelected: selectedAnswerIndex == index,
                          qustionsChangeCallback: () {
                            setState(() {
                              selectedAnswerIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedAnswerIndex == null
                            ? Colors.grey
                            : Color(0xFF4CAF50), // اللون الأخضر الزاهي
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed:
                          selectedAnswerIndex == null ? null : changeQuestion,
                      child: Text(
                        questionIndex + 1 == qustions.length
                            ? "Submit"
                            : "Next",
                        style: const TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Congratulations!",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      Text(
                        "Your total score is: $totalScore",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            questionIndex = 0;
                            totalScore = 0;
                            showTotalScore = false;
                            selectedAnswerIndex = null;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        child: const Text("Restart Quiz"),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
