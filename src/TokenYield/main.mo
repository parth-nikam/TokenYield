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
    let newCurrentValue: Int = currentValue - amount;

    if (newCurrentValue < 0) {
      Debug.print("Insufficient funds");
    } else {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    };
  };
}