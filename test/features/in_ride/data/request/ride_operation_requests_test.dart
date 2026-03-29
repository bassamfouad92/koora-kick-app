import 'package:koora_kick/features/in_ride/data/request/ride_operation_requests.dart';
import 'package:test/test.dart';

void main() {
  group('StartRideRequestBody', () {
    test('toJson() should include "bus" key when bus value is not empty', () {
      final requestBody = StartRideRequestBody('ABC-123');
      final json = requestBody.toJson();

      expect(json, containsPair('bus', 'ABC-123'));
    });

    test('toJson() should NOT include "bus" key when using default value (empty string)', () {
      final requestBody = StartRideRequestBody(null);
      final json = requestBody.toJson();

      expect(json, isNot(contains('bus')));
    });
  });
}
