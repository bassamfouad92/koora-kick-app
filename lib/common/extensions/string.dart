extension StringFormattingExtensions on String {
  /// Removes the leading '0' from the string, if it exists.
  ///
  /// This is useful for formatting national phone number examples
  /// where the leading zero is often omitted in international contexts.
  ///
  /// Example:
  /// '010 01234567'.withoutLeadingZero -> '10 01234567'
  /// '12345'.withoutLeadingZero        -> '12345'
  /// ''.withoutLeadingZero             -> ''
  String get withoutLeadingZero {
    if (isNotEmpty && startsWith('0')) {
      return substring(1);
    }
    return this;
  }

  /// Appends ellipsis to the string if it's longer than the specified length.
  String get maskPhone {
    if (isEmpty) return '';
    if (length <= 4) return this;
    return "${substring(0, 4)}** ***${substring(length - 2)}";
  }

  /// Returns the first name from a full name string.
  String get splitString {
    if (isEmpty) return '';
    return split(' ').first;
  }
}