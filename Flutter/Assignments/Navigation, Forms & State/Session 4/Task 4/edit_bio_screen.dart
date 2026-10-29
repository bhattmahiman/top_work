import 'package:flutter/material.dart';

class EditBioScreen extends StatefulWidget {
  final String currentBio;

  const EditBioScreen({super.key, required this.currentBio});

  @override
  State<EditBioScreen> createState() => _EditBioScreenState();
}

class _EditBioScreenState extends State<EditBioScreen> {
  late final TextEditingController bioController;

  @override
  void initState() {
    super.initState();
    bioController = TextEditingController(text: widget.currentBio);
  }

  @override
  void dispose() {
    bioController.dispose();
    super.dispose();
  }

  void saveBio() {
    Navigator.pop(context, bioController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Bio'),
        actions: [
          TextButton(
            onPressed: saveBio,
            child: const Text(
              'Save',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bio',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: bioController,
              maxLines: 4,
              maxLength: 150,
              decoration: InputDecoration(
                hintText: 'Write something about yourself...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                alignLabelWithHint: true,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Share something about yourself with your followers.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
