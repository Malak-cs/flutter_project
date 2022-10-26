void main() {
  int num1 = 100,
      num2 = 200,
      num3 = 500,
      max; // ماكس بتخزن جواتها القيمة, اكبر قيمة طلعناها
  if (num1 > num2 && num1 > num3) {
    max = num1;
  } else if (num2 > num1 && num2 > num3) {
    max = num2;
  } else {
    // هون بكفي الس لحالها عشان خلصت الارقام الثلاث
    max = num3;
  }

  print('Max Value : $max');
}
