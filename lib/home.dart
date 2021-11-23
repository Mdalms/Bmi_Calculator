import 'dart:math';
import 'dart:ui';
import 'package:bmi/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMale=true;
  double  height=180;
  int age=18;
  int weight=40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child:  Text(
            "BMI CALCULATOR",
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children:  [
            //male and female
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //male button
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        padding: const EdgeInsets.all(0),
                        child: Container(

                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color:isMale? Colors.cyan: Colors.indigo,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: const[
                              //icon male
                              Expanded(
                                child: Icon(Icons.male,
                                size: 100,
                                color: Colors.white,),
                              ),
                              // icon female
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("MALE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  //female button
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        padding: const EdgeInsets.all(0),
                        child: Container(

                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: ! isMale? Colors.cyanAccent: Colors.indigo,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: const[
                              //icon female
                              Expanded(
                                child: Icon(Icons.female,
                                  size: 100,
                                  color: Colors.white,),
                              ),
                              // icon female
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text("FEMALE",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 30,
                                    fontStyle: FontStyle.normal,
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            // height slider
            Expanded(
              child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text(
                      "HEIGHT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children:
                      [
                        //weight
                        Text(
                          "${height.round()}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,

                          ),),
                        const SizedBox(
                          width: 5,
                        ),
                        //cm
                        const Text(
                          "cm",
                          style:  TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,

                          ),),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Slider(
                      value: height,
                      min:80,
                      max: 290,
                      onChanged: (value){
                        setState(() {
                          height=value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            ),
            // weight and age
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //male button
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //weight text
                            const Expanded(
                              child: Text(
                                "WEIGHT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            //number of the weight
                            Expanded(
                              child: Text(
                                "$weight",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),


                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: [
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        weight --;
                                      });
                                    },
                                    mini: true,
                                    child: const Icon(
                                        Icons.remove
                                    ),

                                  ),
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        weight ++;
                                      });
                                    },
                                    mini: true,
                                    child: const Icon(
                                        Icons.add,
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //female button
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //age text
                            const Expanded(
                              child: Text(
                                "AGE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                            //number of the weight
                            Expanded(
                              child: Text(
                                "$age",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),


                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: [
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        age --;
                                      });
                                    },
                                    mini: true,
                                    child: const Icon(
                                        Icons.remove
                                    ),

                                  ),
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        age ++;
                                      });
                                    },
                                    mini: true,
                                    child: const Icon(
                                      Icons.add,
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            //calculate button
            MaterialButton(
              padding: const EdgeInsets.all(0),
              onPressed: (){
                double result= weight / pow(height / 100, 2);
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Result(
                  age: age,
                  isMale: isMale,
                  result: result.round(),
                ),), );
              },
              child: Container(
                height: 50 ,
                width: double.infinity,
                decoration:const BoxDecoration(
                  color:  Colors.indigo,
                ),
                child: const Center(
                  child: Text("Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
