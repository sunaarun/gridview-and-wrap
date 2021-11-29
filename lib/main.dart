import 'package:flutter/material.dart';
import 'package:gridview_wrap_example/custom_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  myGridView(),
    );
  }
}
class myGridView extends StatelessWidget {
   myGridView({Key? key}) : super(key: key);
  List<String> names = ['Sana', 'Ali','Ramy', 'Maram', 'Somaya','Nadia', 'Hend','Ilaham', 'Ahlam'];
  TextStyle myStyle= TextStyle(fontSize: 30,color: Colors.white,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview and Wrap Example'),
      ),
    body:build_gridview()
    );

  }

  build_gridview(){
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        reverse: true,
        itemCount: 300,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.amber,
            child: Center(child: Text('$index')),
          );
        }
    );
  }
  count_gridview(){
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 10/1, // width to height
      crossAxisCount: 2,

      children: [
        Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.pink[300],child: Text('${names[1]}',style: myStyle,),),
        Container( color: Colors.pink[300],child: Text('${names[2]}',style: myStyle,),),
        Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
    ],);
  }
  extent_gridview()
  {
    return GridView.extent(

        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
          Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
          Container( color: Colors.pink[300],child: Text('${names[1]}',style: myStyle,),),
          Container( color: Colors.pink[300],child: Text('${names[2]}',style: myStyle,),),
          Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
          Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),

        ],
    );

  }
  costum_gridview(){
    return GridView.custom(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 200
        ), childrenDelegate: MyCustomDelegate());
  }
  wrap_build()
  {
    return Wrap(
      spacing: 20,
      runSpacing: 100,
      children: [
        Container( width: 100,color: Colors.yellow[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.pink[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.blue[300],child: Text('${names[1]}',style: myStyle,),),
        Container( color: Colors.amber[300],child: Text('${names[2]}',style: myStyle,),),
        Container( color: Colors.teal[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.blueGrey[300],child: Text('${names[0]}',style: myStyle,),),
        Container( width: 200,height: 200,color: Colors.yellow[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.indigo[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.blue[300],child: Text('${names[1]}',style: myStyle,),),
        Container( color: Colors.deepPurple[300],child: Text('${names[2]}',style: myStyle,),),
        Container( color: Colors.teal[300],child: Text('${names[0]}',style: myStyle,),),
        Container( color: Colors.orange[300],child: Text('${names[0]}',style: myStyle,),),
      ],
    );
  }
}

