import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_assignment_3/main.dart';

void main() {
  testWidgets('Personal Information Card smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Personal Information'), findsOneWidget);
    expect(find.text('Sanchita Suryawanshi'), findsOneWidget);
    expect(find.text('Software Developer'), findsOneWidget);
    expect(find.text('21 Years'), findsOneWidget);
    expect(find.text('ID2026001'), findsOneWidget);
    expect(find.text('O+'), findsOneWidget);
    expect(find.text('Mumbai, India'), findsOneWidget);
  });
}
