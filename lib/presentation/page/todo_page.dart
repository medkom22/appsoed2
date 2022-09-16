import 'package:appsoed/common/constant.dart';
import 'package:appsoed/domain/model/todo.dart';
import 'package:appsoed/presentation/provider/todo_notifier.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          body: todoProvider.todo.isNotEmpty
              ? ListView.builder(
                  itemCount: todoProvider.todo.length,
                  itemBuilder: (BuildContext context, int index) {
                    Todo todo = todoProvider.todo[index];
                    return ListTile(
                      title: Text(todo.todo),
                    );
                  },
                )
              : _emptyContent(),
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
                        onSubmitted: (value) {},
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Batal'),
                        ),
                        TextButton(
                          onPressed: () {
                            debugPrint(todoProvider.todoController.text);
                            provider
                                .insertTodo(todoProvider.todoController.text)
                                .then(
                              (_) {
                                Navigator.pop(context);
                              },
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
}
