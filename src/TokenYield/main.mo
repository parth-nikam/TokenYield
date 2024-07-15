import Debug "mo:base/Debug";


actor TokenYield {
  var currentValue = 300;
  currentValue := 100;

  let id = 1234;

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
  };
}