import 'package:appsoed/common/constant.dart';
import 'package:appsoed/domain/model/todo.dart';
import 'package:appsoed/presentation/provider/todo_notifier.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});
  final DateTime now = DateTime.now();
  //format datetime

  @override
  Widget build(BuildContext context) {
    String today = DateFormat.EEEE().format(now);
    String date = DateFormat.yMMMMd().format(now);
    var provider = Provider.of<TodoNotifier>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [darkBlueColor, blueColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Consumer<TodoNotifier>(
        builder: (context, todoProvider, child) => Scaffold(
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      today,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                todoProvider.todo.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: todoProvider.todo.length,
                        itemBuilder: (BuildContext context, int index) {
                          Todo todo = todoProvider.todo[index];
                          return _buildTodoItem(todo, provider, context);
                        },
                      )
                    : _emptyContent()
              ],
            ),
          ),
          floatingActionButton: SizedBox(
            height: 75,
            width: 75,
            child: FloatingActionButton(
              backgroundColor: whiteColor,
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      title: const Text('Buat list mu hari ini'),
                      content: TextField(
                        controller: todoProvider.todoController,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            provider.insertTodo(
                              todoProvider.todoController.text,
                            );
                          },
                          child: const Text('Tambah'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Icon(
                Icons.add,
                color: blueColor,
                size: 36,
              ),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'DAILY TASK',
              style: TextStyle(
                color: blackColor,
                fontWeight: bold,
                fontSize: 20,
                letterSpacing: 8.0,
              ),
            ),
            centerTitle: true,
          ),
        ),
      ),
    );
  }

  _emptyContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://cdni.iconscout.com/illustration/premium/thumb/businessman-completed-tasks-5037983-4202464.png',
            placeholder: (context, url) => const CircularProgressIndicator(),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Tidak ada tugas yang harus dikerjakan',
            style: TextStyle(
              color: blackColor,
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }

  _buildTodoItem(Todo todo, TodoNotifier provider, BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                todo.todo,
                style: TextStyle(
                  color: blackColor,
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      title: Text('Hapus ${todo.todo}'),
                      content:
                          const Text('Apakah kamu yakin ingin menghapusnya?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Batal'),
                        ),
                        TextButton(
                          onPressed: () {
                            provider.deleteTodo(todo.id).then(
                              (_) {
                                Navigator.pop(context);
                              },
                            );
                          },
                          child: const Text('Hapus'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: Icon(
                Icons.clear,
                color: greenColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
