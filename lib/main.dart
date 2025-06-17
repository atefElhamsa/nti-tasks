import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_tasks/add_zero_widget.dart';
import 'package:nti_tasks/cubit/count_cubit.dart';
import 'package:nti_tasks/cubit/count_state.dart';
import 'package:nti_tasks/list_images.dart';
import 'package:nti_tasks/pop_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocConsumer<CountCubit, CountState>(
          listener: (context, state) {
            if (state is AddNumState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("تم تحديث الرقم بنجاح"),
                  duration: Duration(milliseconds: 50),
                ),
              );
            }
            if (state is ClearNumState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("تم مسح الرقم بنجاح"),
                  duration: Duration(milliseconds: 50),
                ),
              );
            }
            if (state is ImageState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("تم تحديث الصورة بنجاح"),
                  duration: Duration(milliseconds: 50),
                ),
              );
            }
            if (state is ColorState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("تم تحديث اللون بنجاح"),
                  duration: Duration(milliseconds: 50),
                ),
              );
            }
            if (state is TextState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("تم تحديث النص بنجاح"),
                  duration: Duration(milliseconds: 50),
                ),
              );
            }
          },
          builder: (context, state) {
            final cubit = context.read<CountCubit>();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: cubit.colorAppBar,
                actions: [PopWidget(cubit: cubit)],
                title: Text(
                  cubit.textAppBar,
                  style: const TextStyle(color: Colors.white),
                ),
                centerTitle: true,
              ),
              body: Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(cubit.imageBack),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AddZeroWidget(cubit: cubit),
                      const SizedBox(height: 50),
                      ListImages(cubit: cubit),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
