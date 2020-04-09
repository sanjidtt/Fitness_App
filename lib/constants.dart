double stepcount = 3500;

int choice;

void increm() {
  stepcount += 100;
}

String percentageModifier(double value) {
  value = stepcount;
  final roundedValue = value.ceil().toInt().toString();
  return '$roundedValue';
}
