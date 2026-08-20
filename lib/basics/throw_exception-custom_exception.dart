class InsufficientBalanceException implements Exception {
  double balance;
  double amount;

  InsufficientBalanceException(this.balance, this.amount);

  @override
  String toString() {
    return 'insufficientBalance: avalible rs.$balance , Requsted rs.$amount';
  }
}

void withdraw(double balance, double amount) {
  if (amount > balance) {
    throw InsufficientBalanceException(balance, amount);
  }
  print('withdraw rs.$amount successfully');
}

void main() {
  try {
    withdraw(5000.0, 1000.0);
  } on InsufficientBalanceException catch (e) {
    print(e);
  } finally {
    print('transcation attemt complete');
  }
}
