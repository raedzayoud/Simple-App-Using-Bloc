import 'package:blocproject/cubit/counter_cubit.dart';
import 'package:blocproject/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int teamA = 0;
  int teamB = 0;
  MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Points Counter"),
        ),
        body: Container(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Team A",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${BlocProvider.of<CounterCubit>(context).i}",
                      style: TextStyle(fontSize: 80),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncrementeState("A", 1);
                        },
                        child: Text("Add 1 Point"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncrementeState("A", 2);
                        },
                        child: Text("Add 2 Point"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncrementeState("A", 3);
                        },
                        child: Text("Add 3 Point"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 70),
                  height: 500,
                  child: VerticalDivider(
                    endIndent: 10,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Team B",
                      style: TextStyle(color: Colors.orange, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${BlocProvider.of<CounterCubit>(context).j}",
                      style: TextStyle(fontSize: 80),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncrementeState("B", 1);
                        },
                        child: Text("Add 1 Point"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncrementeState("B", 2);
                        },
                        child: Text("Add 2 Point"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .IncrementeState("B", 3);
                        },
                        child: Text("Add 3 Point"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          
                        },
                        child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }, listener: (context, state) {
     
    });
  }
}
