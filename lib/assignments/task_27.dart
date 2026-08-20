class Account {
  double balance;
  Account(this.balance);
}

mixin InterestCalculator on Account {
  void addInterest() {
    balance += balance * 0.05;
    print("New Balance: $balance");
  }
}

class SavingsAccount extends Account with InterestCalculator {
  SavingsAccount(double balance) : super(balance);
}

void main() {
  var acc = SavingsAccount(1000);
  acc.addInterest();
}
