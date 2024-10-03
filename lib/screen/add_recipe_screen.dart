import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class AddRecipeScreen extends ConsumerStatefulWidget {
  const AddRecipeScreen({super.key});
  @override
  ConsumerState<AddRecipeScreen> createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends ConsumerState<AddRecipeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _TitleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void dispose() {
    _TitleController.dispose();
    _descriptionController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe'),
      ),
      body: Center(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _TitleController,
                    decoration: const InputDecoration(labelText: "Recipe Name"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration:
                        const InputDecoration(labelText: 'Recipe Ingridience'),
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        //to do
                        if (_formKey.currentState!.validate()) {
                          final newRecipe = Recipe(
                            id.DateTime.now().toString(),
                            title: _TitleController.text,
                          );
                          ref
                              .read(recipeprovider.notifier)
                              .addRecipe(newRecipe);
                        }
                      },
                      child: const Text("Add Recipe"))
                ],
              ))),
    );
  }
}
