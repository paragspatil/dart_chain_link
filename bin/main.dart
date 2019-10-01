// In these exercises we will pretend that we do not have access to the standard
// List class in Dart. Instead, we will implement our own list using 'links' as
// described below.

// Exercise 1: Create a class called 'Link' which has two fields.  Choose
// types for each field so that you can create an object structure that looks
// like this:
// https://s1.whiteboardfox.com/s/2ae37dc832647bad.png

class Student{
  String name;
  int score;
}
class Link {
  String value;
  Link next;

}


main() {
  // Exercise 2:  Create the object structure shown in the above link
  // including the variable called 'firstLink'

  Student student1 = Student();
  student1.name = 'raj';
  student1.score = 60;
  Link Firstlink = Link();
  Firstlink.value= "mark";
  Link SecondLink = Link();
  SecondLink.value = "MAkiko";
  Firstlink.next = SecondLink;
  Link ThirdLink = Link();
  ThirdLink.value = "paul";
  SecondLink.next = ThirdLink;
  ThirdLink.next = null;
  showdata(Firstlink);
  insert('parag', Firstlink, 1s);
  print('---------------------');
  showdata(Firstlink);

}


// Exercise 3: Create a function which takes a Link parameter and prints out
// all the values in the list.  For example, if the function is given the
// firstLink variable, then it will print:
// Raj
// Makiko
// Paul
void showdata(Link t){
  Link temp = t;
  while(temp.next!=null) {
    if (temp.value == null) {
      print("List is empty");
    }
    else {
      print(temp.value);
      temp = temp.next;
      if(temp.next==null){
        print(temp.value);
      }

    }

  }




  }




// Exercise 4: Create a function which takes a Link parameter and a String
// parameter, and adds another link to the end of the chain.  The new link
// value should be the String parameter passed into the function.typedef

void getLink(String s, Link head) {
  Link te = head;
  Link templ = Link();


  if(head.next == null){
    head.value = s;
    te = te.next;
  }
  else{

    templ.value = te.value;
    templ.next = null;
    te.value = s;

    te.next = templ;
    head = te;
  }
}




// *** Stretch ****
// Exercise 5: Create a function called insert which takes a Link,
// an integer index and a String, and inserts a link at the given index
// in the chain.  For example, calling insert(firstLink, 2, "A") should
// update the chain structure to look like this:
// https://s1.whiteboardfox.com/s/77ff03ee231f2f60.png
void insert(String s, Link head,int j) {
  Link t = head;
  int i=0;
  for(i=1;i<=j;i++){
    t = t.next;
  }
  t.value = s;
  head = t;

}