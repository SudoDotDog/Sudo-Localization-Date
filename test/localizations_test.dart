import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:localizations_date/src/declare/date.dart';

import 'mock.dart';

void main() {
  testWidgets('mock date parse widget in english', (WidgetTester tester) async {
    final DateTime date = DateTime.now();

    await tester.pumpWidget(
      MockParseWidget(
        locale: Locale('en'),
        date: date,
        dateConfig: LocalizationDateFormatDateConfig.all,
      ),
    );

    final Finder textFinder = find.byType(Text);
    final Text textWidget = textFinder.evaluate().single.widget;

    expect(textWidget.data, "2021");
  });
}
