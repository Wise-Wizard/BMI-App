import 'dart:math';

class Brain {
  Brain({required this.height, required this.weight});
  final height;
  final weight;
  double _bmi = 0;

  String calculate() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String BMI() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String Interpretation() {
    if (_bmi > 25) {
      return 'You need to exercise more and be in a Calorie Deficit, Fatso.';
    } else if (_bmi > 18.5) {
      return 'Great Job! You are perfectly Lean and Healthy. Keep it up.';
    } else {
      return 'Quoting CBUM: "Skinny Boi", YOu have to eat more!';
    }
  }
}
