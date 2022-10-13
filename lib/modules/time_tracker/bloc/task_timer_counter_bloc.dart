import 'dart:async';

class TaskTimerBloc {
  StreamController<int> timerController = StreamController<int>();
  void starTimer() {
    int timeInSec = 0;
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        timeInSec++;
        timerController.sink.add(timeInSec);
      },
    );
  }
}
