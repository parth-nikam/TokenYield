import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor TokenYield {
  stable var currentValue: Float = 300;

  let id = 1234;

  stable var startTime = Time.now();
  Debug.print(debug_show(startTime));

  public func topUp(amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float) {
    let newCurrentValue: Float = currentValue - amount;

    if (newCurrentValue < 0) {
      Debug.print("Insufficient funds.");
    } else {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    };
  };

  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS/1000000000;

    currentValue := currentValue * ((1.01) ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  }
}