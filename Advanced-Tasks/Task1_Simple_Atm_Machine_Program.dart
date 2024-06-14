import 'dart:io';

void main(){

String username = "Ahmed";
int pin = 4857;
int balance=35000;

print("Enter your username :");
String? cusername = stdin.readLineSync()!; 
print("Enter your pin :");
int? cpin = int.parse(stdin.readLineSync()!);

if(cusername == username && cpin == pin){

print("Welcome to BlueCash Bank Atm");

print("choose from 1-4");
print("1)Balance Check");
print("2)Cash Withdrawal");
print("3)Cash Deposit");

int? choice= int.parse(stdin.readLineSync()!);

if(choice == 1){

print("Sir $username your current balance is $balance");

}

else if(choice == 2){
  print("Enter Cash Withdrawal Amount");

  int? withdrawamount=int.parse(stdin.readLineSync()!);

  if(withdrawamount>0 && withdrawamount<balance){
    int afterwithdraw=balance-withdrawamount;

    print("Sir $username your amount after withdraw is $afterwithdraw Rs left");
  }
  else if(withdrawamount<0){
    print("Sorry you cant take withdraw amount in negative");
  }
  else if(withdrawamount>balance){
    print("Insufficent balance");
  }
}

else  if(choice == 3){
  print("Enter Cash Deposit Amount");

  int? depositamount=int.parse(stdin.readLineSync()!);

  if(depositamount>0){
    int afterdeposit=balance+depositamount;

    print("Sir $username your amount after deposit is $afterdeposit Rs");
  }
  else{
    print("Sorry you cant take deposit amount in negative");
  }
}

else{
  print("invalid choice entered");
}



}
else if(cusername != username){
  print("Invalid username");
}
else if(cpin != pin){
  print("Invalid pin");
}
else{
  print("Invalid username and pin");
}


}


// Explanation:
// The main() function serves as the entry point of the Dart program.
// It prompts the user to enter their username and PIN.
// The program then checks the entered username and PIN for authentication.
// If authentication is successful, the program displays an ATM interface allowing the user to perform various actions.
// If the entered username or PIN is incorrect, appropriate error messages are displayed.
// Import statement for 'dart:io' is used to enable interaction with input/output streams.