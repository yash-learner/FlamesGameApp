import 'package:flutter/material.dart';
class Page extends StatefulWidget {
  @override
   _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
var rel;
String  f1;
String  f2;
 String c;
final TextEditingController firstName = TextEditingController(text: "");
final TextEditingController secondName = TextEditingController(text: "");

@override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    firstName.dispose();
    secondName.dispose();
    super.dispose();
  }

@override
  void initState() {
    super.initState();
    rel='';
  }
void showRelation(){
  setState(() {
 /*   String s = 'foo';
s.codeUnits.forEach((f) => print(new String.fromCharCode(f)));
s.runes.forEach((f) => print(new String.fromCharCode(f)));*/
 // name1 = name1.trim();
 // name2 = name2.trim();
 f1=firstName.text;
 f2=secondName.text;
 int i, j, k=0, l = 1, n, m, sc = 0, tc, rc = 0, le,rc1;
   String s="yaswanth";
   String str1="kumar";
   var f =['f','l','a','m','e','s'];
   String es= "flames";
   print(f);
   print(es);
   s=s.replaceFirst(new  RegExp(r'a'),'');
  str1= str1.replaceFirst('a','');
   print(str1);
   print(s);
   
   //f1.forEach((element) => print(element));
    String st = 'foo';
st.codeUnits.forEach((f) => print(new String.fromCharCode(f)));
st.runes.forEach((f) => print(new String.fromCharCode(f)));
var a = f1.split("");
var b = f2.split("");
print(a);
print(b[0]);
n=a.length;
m=b.length;
print(n);
print(m);
tc = n + m; 
/*for(int i=0; i<n; i++) {
    //print(f1[i]);
    print(b[i]);
}*/
for (i = 0; i < n; i++) { 
         c=a[i];
         print(c);
        for (j = 0; j < m; j++) { 
            if (c[0] == b[j]) { 
                a[i] = '-1'; 
                b[j] = '-1';
                sc = sc + 2; 
                break; 
            } 
        } 
    } 
    print(sc);
    print(a);
    print(b);
    rc = tc - sc; 
    print(rc);
    le=es.length;
    while(le!=1)
    {   print("le ${le}");
        print("y1");
        rc1=rc;
        print(rc1);
        while(rc1!=0)
        {
            print("y2");
            if(k<es.length)
            {
                k=k+1;
                rc1=rc1-1;
            }
            else
            {
                k=1;
                rc1=rc1-1;
            }
            
        }
        es= es.replaceFirst(es[k-1],'');
        print(es.length);
        print(es);
        le=le-1;
        k=k-1;
        
    }
    if(es=='f')
    {
        rel= "FRIENDSHIP";  
    }
    else if(es=='l')
    {
      rel= "LOVERS";  
    }
     else if(es=='a')
    {
      rel= "AFFECTION";  
    }
     else if(es=='m')
    {
      rel= "MARRIAGE";  
    }
     else if(es=='e')
    {
      rel= "ENEMIES";  
    }
     else if(es=='s')
    {
      rel= "SIBLINGS";  
    }
    
});
}
void doClear()
    {
      setState(() {
        firstName.text="";
        secondName.text="";
        rel = '';
      });
    }





   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLAMES APP'),
        backgroundColor: Colors.orange,
      ),
       body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Text("FLAMES",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
              
                 keyboardType: TextInputType.text,
                 controller: firstName,
                 style: TextStyle(
                   fontSize: 20,fontWeight: FontWeight.bold
                 ),
                 decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Your Name',
               ),
              // onSaved: (input) => name1 = input,
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
    
                 keyboardType: TextInputType.text,
                 controller: secondName,
                 style: TextStyle(
                   fontSize: 20,fontWeight: FontWeight.bold
                 ),
                 decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: 'Your Crush Name',
      
               ),
               //onSaved: (input) => name2 = input,
            
               ),
             ),
             Text("Output :$rel",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             Container(
           child: Center(
           child: RaisedButton(
             color: Colors.orange,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Know The Relation',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          onPressed:showRelation,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        ),
        
      ), 
    ),
    Container(
           child: Center(
           child: RaisedButton(
             color: Colors.orange,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('CLEAR',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          onPressed:doClear,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        ),),),
    ],
         ),
       ),
    );
  }
} 


/*
/* Simple Hello, World! program */
void main(){
   print("Hello, World!");
   String s="yaswanth";
   String str1="kumar";
   s=s.replaceFirst(new  RegExp(r'a'),'');
  str1= str1.replaceFirst('a','');
   print(str1);
   print(s);
   String f1="sameer";
  String  f2="aditya";
  string a = f1;
  string b = f2;
  
   //f1.forEach((element) => print(element));
    String st = 'foo';
st.codeUnits.forEach((f) => print(new String.fromCharCode(f)));
st.runes.forEach((f) => print(new String.fromCharCode(f)));
int i,j;
for(int i=0; i<f1.length; i++) {
    print(f1[i]);
}
for(i=0; i<f1.length; i++) {
    print('e');
    for(j=0; i<f2.length; j++) {
         print('s');
           print(" w = ${f1[i+1]}");
           print(f1.codeUnitAt(i));
            print(f2.codeUnitAt(j));
    if(f1.codeUnitAt(i)==f2.codeUnitAt(j)){
          print(" w1= ${f1[i+1]}");
         f1= f1.replaceFirst(f1[i],'');
          f2= f2.replaceFirst(f1[i],'');
    }
}
}
print(f1);
print(f2);
}
*/
