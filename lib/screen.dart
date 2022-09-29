import 'package:basketballpoints/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Screens extends StatelessWidget {
  int teamApoints=0;
  int teamBpoints=0;
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder:(context,state){
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Team A",style: TextStyle(fontSize:32),
                        ),
                        Text("${BlocProvider.of<CounterCubit>(context).TeamAPoints}",style: TextStyle(fontSize:150),
                        ),
                        ElevatedButton(onPressed: (){

                          BlocProvider.of<CounterCubit>(context).TeamIncerment(buttonNumber: 1, team: 'A');
                        },
                          child:Text("Add 1 Point ",style:TextStyle(fontSize:24,color:Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

                        ),

                        ElevatedButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).TeamIncerment(buttonNumber: 2, team:'A');
                        },
                          child:Text("Add 2 Point ",style:TextStyle(fontSize:24,color:Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

                        ),

                        ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).TeamIncerment(buttonNumber: 3, team:'A');
                        },
                          child:Text("Add 3 Point ",style:TextStyle(fontSize:24,color:Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

                        ),

                      ]),
                ),
                Container(
                  height:500,
                  child: VerticalDivider(
                    color:Colors.grey,
                    thickness:1,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Team B",style: TextStyle(fontSize:32),
                        ),
                        Text("${BlocProvider.of<CounterCubit>(context).TeamBPoints}",style: TextStyle(fontSize:150),
                        ),
                        ElevatedButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).TeamIncerment(buttonNumber: 1, team:'B');
                        },
                          child:Text("Add 1 Point ",style:TextStyle(fontSize:24,color:Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

                        ),

                        ElevatedButton(onPressed: (){
                                BlocProvider.of<CounterCubit>(context).TeamIncerment(buttonNumber: 2, team: 'B');
                        },
                          child:Text("Add 2 Point ",style:TextStyle(fontSize:24,color:Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

                        ),

                        ElevatedButton(onPressed: (){
                          BlocProvider.of<CounterCubit>(context).TeamIncerment(buttonNumber: 3, team:'B');
                        },
                          child:Text("Add 3 Point ",style:TextStyle(fontSize:24,color:Colors.black),),
                          style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

                        ),

                      ]),
                ),

              ],
            ),
            SizedBox(
              height:120,
            ),
            ElevatedButton(onPressed: (){
                BlocProvider.of<CounterCubit>(context).zero();
            },
              child:Text("Reset ",style:TextStyle(fontSize:24,color:Colors.black),),
              style:ElevatedButton.styleFrom(primary: Colors.orange,minimumSize:Size(60,50)),

            ),
          ],
        ),
      );
    }, listener: (context,state){
    });
  }
}
