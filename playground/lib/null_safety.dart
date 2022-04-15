void nullSafety() {
  int? someNumber;
  increaseValue(someNumber);
}

void increaseValue(int? value) {
  value = value ?? 0;
  value++;
  print(value);
}
