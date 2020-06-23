import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25.0)
      return "Overweight";
    else if (_bmi < 18.5)
      return "Underweight";
    else
      return "Normal";
  }

  String getMsg() {
    if (_bmi > 25.0)
      return "You have a higher than a normal weigth. Try to Exercise more.";
    else if (_bmi < 18.5)
      return "You have a normal weigth. Good Job.";
    else
      return "You have a lower than a normal weigth. Try to eat a bit more.";
  }
}
