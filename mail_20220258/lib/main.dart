import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        
        
        title:  const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ButtonBar(
              children: <Widget>[
              
              Text('Edit',
                style: TextStyle(
                  fontSize: 15.0, 
                  color: Color.fromARGB(255, 43, 207, 236), 
                ),
                
              
              ),

              ],
            ),
            
          
          ],
        ),


      ),
      body: ListView(
        children: const <Widget>[
          

          SizedBox(height: 20),
          Center(
            
            child: Row(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 30.0),
              Text('Mailboxes',
              style: TextStyle(
                  fontSize: 35.0, 
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ],
          ),
            
          ),

          SizedBox(height: 30.0),

          Expanded(
            
              child: Column(
                
                children: <Widget>[
                  
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('Today'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    
                  

                  ListTile(
                    leading: Icon(Icons.mark_as_unread),
                    title: Text('Unread'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                    
                  

                  ListTile(
                    leading: Icon(Icons.inbox),
                    title: Text('Inbox'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  

                  ListTile(
                    leading: Icon(Icons.archive),
                    title: Text('Archive'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  

                  ListTile(
                    leading: Icon(Icons.delete_forever_sharp),
                    title: Text('Junk'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  
                  ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Trash'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),

                ],
              ),
            ),



            SizedBox(height: 30.0),


          ListTile(
            leading: SizedBox(width: 1.0),
            title: Text('¡Cloud',
                style: TextStyle(
                    fontSize: 20.0, 
                    
                  ),
                ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),




        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        
        child: const Icon(Icons.edit_square),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
