import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/reference_model.dart';

class ReferenceCard extends StatelessWidget {
  final ReferenceModel reference;
  final int index;

  const ReferenceCard({super.key, required this.reference, required this.index});

  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget _buildSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            content,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(16.0),
        title: Text(
          '${index + 1}. ${reference.title}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            '${reference.authors} (${reference.publicationDate})',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                _buildSection('Latar Belakang / Tujuan:', reference.background),
                _buildSection('Metode Penelitian:', reference.method),
                _buildSection('Kerangka Teori:', reference.theory),
                _buildSection('Hasil Penelitian:', reference.results),
                const Divider(height: 24),
                if (reference.doi.isNotEmpty)
                  InkWell(
                    onTap: () => _launchUrl('https://doi.org/${reference.doi}'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.link, size: 16, color: Colors.blue),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'DOI: ${reference.doi}',
                              style: const TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (reference.url.isNotEmpty)
                  InkWell(
                    onTap: () => _launchUrl(reference.url),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          const Icon(Icons.public, size: 16, color: Colors.green),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Link: ${reference.url}',
                              style: const TextStyle(
                                color: Colors.green,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
