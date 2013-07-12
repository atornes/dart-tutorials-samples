// Auto-generated from stopwatch.html.
// DO NOT EDIT.

library stopwatch_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'dart:html';
import 'dart:async';
import 'package:web_ui/web_ui.dart';


// Original code


final __changes = new __observe.Observable();

String __$counter = '00:00';
String get counter {
  if (__observe.observeReads) {
    __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'counter');
  }
  return __$counter;
}
set counter(String value) {
  if (__observe.hasObservers(__changes)) {
    __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'counter',
        __$counter, value);
  }
  __$counter = value;
}
Stopwatch mywatch = new Stopwatch();

ButtonElement stopButton;
ButtonElement startButton;
ButtonElement resetButton;

void main() {
  startButton = query("#startbutton");
  stopButton = query("#stopbutton");
  stopButton.disabled = true;
  resetButton = query("#resetbutton");
  resetButton.disabled = true;
}

void startwatch() {
  mywatch.start();
  var oneSecond = new Duration(seconds:1);
  new Timer.periodic(oneSecond, updateTime);
  startButton.disabled = true;
  stopButton.disabled = false;
  resetButton.disabled = true;
}

void stopwatch() {
  mywatch.stop();
  startButton.disabled = false;
  resetButton.disabled = false;
  stopButton.disabled = true;
}

void resetwatch() {
  mywatch.reset();
  counter = '00:00';
  resetButton.disabled = true;
}

void updateTime(Timer _) {
  var s = mywatch.elapsedMilliseconds~/1000;
  var m = 0;
  
  if (s >= 60) { m = s ~/ 60; s = s % 60; }
    
  String minute = (m <= 9) ? '0$m' : '$m';
  String second = (s <= 9) ? '0$s' : '$s';
  counter = '$minute:$second';
}

// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  var __e1, __e2, __e3, __e4;
  var __t = new autogenerated.Template(__root);
  __e1 = __root.nodes[3].nodes[1];
  var __binding0 = __t.contentBind(() => counter, false);
  __e1.nodes.addAll([new autogenerated.Text('\n      '),
      __binding0,
      new autogenerated.Text('\n      ')]);
  __e2 = __root.nodes[3].nodes[3].nodes[1];
  __t.listen(__e2.onClick, ($event) { startwatch(); });
  __e3 = __root.nodes[3].nodes[3].nodes[3];
  __t.listen(__e3.onClick, ($event) { stopwatch(); });
  __e4 = __root.nodes[3].nodes[3].nodes[5];
  __t.listen(__e4.onClick, ($event) { resetwatch(); });
  __t.create();
  __t.insert();
}

//# sourceMappingURL=stopwatch.dart.map