import 'package:flutter/material.dart';
class List_Separator extends StatelessWidget {
  //const List_Separator({Key? key}) : super(key: key);
  var data=["data1","data2","data3","data4","data5","data6"];
  var sepdata=["item1","item2","item3","item4","item5","item6"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Separator"),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: ListView.separated(
            itemBuilder: (ctx,index){
              return Card(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(data[index]),
              ));
            },
            separatorBuilder: (ctx,index){
              return Text(sepdata[index]);
            },
            itemCount: data.length),
      ),
    );
  }
}
