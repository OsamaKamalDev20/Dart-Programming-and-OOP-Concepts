class BankAccount {
  // Private fields using underscore to enforce encapsulation
  String _bankName;
  String _accountHolderName;
  double _balance;

  // Constructor to initialize the bank account
  BankAccount(this._bankName, this._accountHolderName, this._balance);

// Getter method for Bank Name
  String get bankName => _bankName;

  // Getter method for account holder's name
  String get accountHolderName => _accountHolderName;

  // Getter method for balance
  double get balance => _balance;

  // Method to deposit money into the account
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print(
          'Deposit of ${amount.toStringAsFixed(2)} PKR successful. New balance = ${_balance.toStringAsFixed(2)} PKR');
    } else {
      print('Deposit amount must be greater than zero.');
    }
  }

  // Method to withdraw money from the account
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print(
          'Withdrawal of ${amount.toStringAsFixed(2)} PKR successful. New balance = ${_balance.toStringAsFixed(2)} PKR');
    } else {
      print('Insufficient funds or invalid withdrawal amount.');
    }
  }
}

void main() {
  print("");
  print("-------------------- Encapsulation Project --------------------");
  print("-------------- Bank Account Management System --------------");
  print("");
  // Creating a new bank account
  BankAccount account =
      BankAccount("Bank ALAFALAH ISLAMIC ", "OSAMA KAMAL ADHAMI", 8025.15);

  // Displaying account holder's name and initial balance
  print("Bank Name = ${account._bankName}");
  print("Account Holder = ${account.accountHolderName}");
  print("Initial Balance = ${account.balance.toStringAsFixed(2)} PKR");

  // Performing some transactions
  account.deposit(40000); // Depositing money
  account.withdraw(3000.0); // Withdrawing money
  account.withdraw(50000); // Attempting to withdraw more than the balance
}
