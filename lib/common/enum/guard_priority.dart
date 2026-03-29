enum GuardPriority implements Comparable<GuardPriority> {

  criticalSystem(1),
  passcode(2),
  authentication(3),
  biometric(4);

  final int value;
  const GuardPriority(this.value);

  @override
  int compareTo(GuardPriority other) => value.compareTo(other.value);

  // Helper Operators (Optional but useful)
  bool operator <(GuardPriority other) => value < other.value;
  bool operator >(GuardPriority other) => value > other.value;
}