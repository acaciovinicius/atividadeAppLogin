import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:meu_app/main.dart';

void main() {
  testWidgets('Login screen widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the app title is present.
    expect(find.text('Meu App'), findsOneWidget);
    expect(find.text('Bem Vindo!'), findsOneWidget);
    expect(find.text('Sign in'), findsOneWidget);

    // Verify that the TextFields are present.
    expect(find.byType(TextField), findsNWidgets(2)); // User Name and Password

    // Verify that the button is present.
    expect(find.text('Login'), findsOneWidget);

    // Tap the login button and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(); // Wait for navigation

    // Verify that the success message is shown on the next screen.
    expect(find.text('Parabéns, tá logado!!'), findsOneWidget);
  });
}
