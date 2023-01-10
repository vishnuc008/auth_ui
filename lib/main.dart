import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: authuii(),debugShowCheckedModeBanner: false));
}
class authuii extends StatefulWidget{
  @override
  State<authuii> createState() => _authuiiState();
}

class _authuiiState extends State<authuii> {
  late bool formVisible;
  int? _formsIndex;
  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/3.jpg"),
      fit: BoxFit.cover)),
      child: Stack(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          Container(
            color: Colors.black54,
            child: Column(
              children: [
                const SizedBox(height: kToolbarHeight+40,),
                Expanded(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("WELCOME",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                      const SizedBox(height: 10),
                      const Text("Welcome To This Awesome Login App.\n You Are Awesome",style: TextStyle(color: Colors.white,fontSize: 18)
                      ,textAlign: TextAlign.center)
                    ],
                    
                  ),
                ),
                Row(
                  children: [const Padding(padding: EdgeInsets.all(10)),
                    const SizedBox(width:10),
                  
                    
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        onPressed:(() {
                          setState(() {
                            formVisible=true;
                            _formsIndex=1;
                          });
                        }) , child: const Text("LOGIN")),
                    ),
                
                  
                  SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                        onPressed: (() {
                          setState(() {
                            formVisible=true;
                            _formsIndex=2;
                          });
                        }), child: const Text("SIGNUP")),
                        ),SizedBox(width: 10,)],
                    
                    ),
                    
                      const SizedBox(height: 40,),
                      OutlinedButton.icon(onPressed: (() {
                        
                      }), icon: Icon(FontAwesomeIcons.google), 
                      label: Text("Continue With Google",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      style: OutlinedButton.styleFrom(backgroundColor: Colors.transparent)
                      )

                  ],
                    
                ),

                 
                ),
               AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            child: (!formVisible)
                ? null
                : Container(
                    color: Colors.black54,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _formsIndex == 1
                                    ? Colors.red
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: _formsIndex == 1
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  _formsIndex = 1;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: _formsIndex == 2
                                    ? Colors.red
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                              ),
                              child: Text("Signup",
                                  style: TextStyle(
                                    color: _formsIndex == 2
                                        ? Colors.white
                                        : Colors.black,
                                  )),
                              onPressed: () {
                                setState(() {
                                  _formsIndex = 2;
                                });
                              },
                            ),
                            const SizedBox(width: 10.0),
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                setState(() {
                                  formVisible = false;
                                });
                              },
                            )
                          ],
                        ),
                        Container(
                          child: AnimatedSwitcher(
                            duration: Duration(milliseconds: 300),
                            child:
                               _formsIndex == 1 ? loginn(): signupp(),
                          ),
                        )
                      ],
                    ),
                  ),
          )
        ],
      ),
    ));
  }
}
  
class loginn extends StatefulWidget{
  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  @override
  Widget build(BuildContext context) {
    return Container(
   margin: const EdgeInsets.all(16),
   decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
   ),
   child: ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.all(16),
    children: [
      const TextField(
    decoration: InputDecoration(
      hintText: "enter your email id",
      hintStyle: TextStyle(fontStyle: FontStyle.italic),
      border: OutlineInputBorder()

    )

    
      ),
      const SizedBox(height: 10,),
      const TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "enter your password",
          hintStyle: TextStyle(fontStyle: FontStyle.italic),
          border: OutlineInputBorder()
          
        ),
      ),
      const SizedBox(height: 10),
      ElevatedButton(style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
        onPressed: (() {
        
      }), child: const Text("LOGIN"))
    ],
   ),
    );
  } 
}
class signupp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
    margin: const EdgeInsets.all(16),
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(20)),
    child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      children: [
        const TextField(
          decoration: InputDecoration(
            hintText: "enter your email",
            hintStyle: TextStyle(fontStyle: FontStyle.italic),
            border: OutlineInputBorder()

          ),
          
        ),
        const SizedBox(height: 10),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "enter your password",
            hintStyle: TextStyle(fontStyle: FontStyle.italic),
            border: OutlineInputBorder()),

            
        ),
        const SizedBox(height: 10),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "confirm password",
            hintStyle: TextStyle(fontStyle: FontStyle.italic),
            
            border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          
        ),
          onPressed: (() {
          
        }), child: const Text("signup"))
      ],
    ),
   );
  }

}