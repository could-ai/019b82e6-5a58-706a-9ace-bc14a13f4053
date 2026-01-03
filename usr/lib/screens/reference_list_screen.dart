import 'package:flutter/material.dart';
import '../models/reference_model.dart';
import '../widgets/reference_card.dart';

class ReferenceListScreen extends StatelessWidget {
  const ReferenceListScreen({super.key});

  // Data dummy sebagai contoh karena dokumen asli belum diunggah
  static final List<ReferenceModel> dummyReferences = [
    ReferenceModel(
      title: "Deep Learning for Image Recognition",
      authors: "J. Smith, A. Doe",
      doi: "10.1109/CVPR.2023.001",
      url: "https://example.com/paper1",
      publicationDate: "2023",
    ),
    ReferenceModel(
      title: "Flutter: A Cross-Platform Framework",
      authors: "Google Team",
      doi: "10.1145/333.444",
      url: "https://flutter.dev",
      publicationDate: "2024",
    ),
    ReferenceModel(
      title: "Artificial Intelligence in Healthcare",
      authors: "Dr. House, Dr. Wilson",
      doi: "10.1016/j.ai.2023.12",
      url: "https://example.com/health-ai",
      publicationDate: "2022",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Referensi Dokumen'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: dummyReferences.length,
        itemBuilder: (context, index) {
          return ReferenceCard(reference: dummyReferences[index]);
        },
      ),
    );
  }
}
