import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key,
    required this.result, required this.isMale, required this.age}) : super(key: key);
  final int result;
  final bool isMale;
  final int age;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Back"),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Your Summary",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height:200,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   const Text("Your BMI is",
                       style: TextStyle(
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight: FontWeight.bold,
                       )),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(" $result",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Kg/m²",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
            const SizedBox(height: 30,
            ),
            //msg about the bmi calculator
            Container(
              width: double.infinity,
              height:300,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:const [
                  SizedBox(height: 15,),

                  Text(
                    "BMI Categories:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30,),
                  Expanded(
                    child: Text(
                      "Underweight = <18.5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Normal weight = 18.5–24.9",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Overweight = 25–29.9",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Obesity = BMI of 30 or greater",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
