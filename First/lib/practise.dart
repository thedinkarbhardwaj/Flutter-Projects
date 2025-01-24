
import 'dart:io';

void main(){

  // print("Dinkar");
  //
  // stdout.write("Enter your name:-");
  //
  // var name = stdin.readLineSync();
  //
  // print("Welcome $name");

  // int a = 1;
  //
  // print("$a");
  //
  // BigInt longvalue;
  // longvalue = BigInt.parse("84355555555555555555555555555555555555349");
  //
  // print(longvalue);
  //
  // // with num keyword we can stre both int and double value
  // num store = 45.33;
  // stdout.write(store);



  // var name = "dinkar";
  //
  // name = "anam";
  // // name = 10;   once assign then we can't change data type or enter another data type
  // print(name);
  //
  // dynamic subject = "math"; // with dynamic keyword we can assign another data type value
  //
  // subject = 3;
  // print(subject);


  // var mycls = myClass();
  // mycls.namePrint();


  // var list = [10,20,30,40];
  // list.add(50);
  //
  // list.insert(0, 1);
  //
  // print(list);
  //
  // var list2 = [32,45,23];
  //
  // list.addAll(list2);
  // print(list);
  // var reversedList = list2.reversed;
  //
  // print(reversedList);
  //
  // list2.sort();
  // print(list2);
  //
  // var contain = list2.contains(32);
  //
  // print(contain);



  var hash = {
    'name':'dinkar',
    'Age': 24,
    'job desc':'Android'
  };

  hash['name'] = 43 ;

  // hash.remove('name');

  print(hash);

}

class myClass{

  // this is default consturtor
    myClass(){

      print("myClass object created");
    }


    void namePrint(){

      print("Hello");

    }


}