import Debug "mo:base/Debug"

actor DBank {
  // ##Assigning variables
  var currentValue = 300; //var here is a keyword that creates a variable
  currentValue := 100;

  let id = 72391672937; //let is similiar to const in JS, value that doesnt changes
  //id:=8679870989878; // expects a value thats immutable

  // ##Displaying as output
  // Debug.print("Hello World!!");
  // Debug.print(debug_show(id));

  public func topUp(amount: Nat) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Nat) {
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
  };

}
