import 'package:flutter_test/flutter_test.dart';
import 'package:test_app_02/counter.dart';

main() {
  group(
    "Counter clas:",
    () {
      late Counter counter;

      setUp(() {
        counter = Counter();
      });

      test(
        "Given Counter class, when instantiated, then count =0",
        () {
          expect(counter.count, 0);
        },
      );

      test(
        "Given Counter class, when instantiated and incrementCount called, then count = 1",
        () {
          counter.incrementCount();

          expect(counter.count, 1);
        },
      );

      test(
        "Given Counter class, wehn decrementCount is called, then count = -1",
        () {
          counter.decrementCount();

          expect(counter.count, -1);
        },
      );

      test(
        "Given Counter class, when incrementCount is called then reset is called, then count = 0",
        () {
          counter.incrementCount();
          counter.reset();

          expect(counter.count, 0);
        },
      );

      test(
        "Given Counter class, when decrementCount is called then reset is called, then count = 0",
        () {
          counter.decrementCount();
          counter.reset();

          expect(counter.count, 0);
        },
      );
    },
  );
}
