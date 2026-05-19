// This is a basic Flutter widget test.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bookloom/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BookLoomApp());

    // Wait for the splash screen to render
    await tester.pumpAndSettle();

    // Verify it doesn't crash
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
