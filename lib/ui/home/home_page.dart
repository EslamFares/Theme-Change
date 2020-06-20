import 'package:flutter/material.dart';
import 'package:themes_change_using_bloc/ui/prefrrence/preference_page.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context)=>Preferencepage()
                      ));
            },
          )
        ],
      ),
      body: Center(
        child: Container(
          // ignore: deprecated_member_use
          child: Text('Home',style: Theme.of(context).textTheme.display1,),
        ),
      ),
    );
  }
}
