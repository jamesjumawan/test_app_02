class Counter {
  int _count = 0;
  int _increment = 1;

  int get count => _count;

  void incrementCount() {
    _count += _increment++;
  }

  void decrementCount() {
    _count--;
  }

  void reset() {
    _count = 0;
  }
}
