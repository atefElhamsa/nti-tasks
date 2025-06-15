import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_tasks/cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: BlocBuilder<SubjectCubit, SubjectState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.text),
                    const SizedBox(height: 50),
                    Container(height: 200, width: 200, color: state.color),
                    const SizedBox(height: 50),
                    Text(state.number.toString()),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        context.read<SubjectCubit>().changeText(
                          "Atef",
                          Colors.blue,
                          0,
                        );
                      },
                      child: const Text("Change Text"),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
