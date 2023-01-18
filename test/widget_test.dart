// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:signin_example/main.dart';

void main() {
  testWidgets('SignUp Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const SignUpApp());

    //查找含有'Sign up'文本 => 将会查找到很多
    expect(find.text('Sign up'), findsWidgets);

    //查找含有'Welcome!'文本 => findsNothing
    expect(find.text('Welcome!'), findsNothing);

    // // Tap the Sign up button.
    // await tester.tap(find.byType(TextButton));

    // // Rebuild the widget after the state has changed.
    // await tester.pump();
    // var f = find.text('Sign up');
    // //查找含有'Welcome!'文本 => findsNothing
    // expect(f, findsWidgets);
  });
}
