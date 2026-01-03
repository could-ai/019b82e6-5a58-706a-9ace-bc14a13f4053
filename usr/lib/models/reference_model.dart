class ReferenceModel {
  final String title;
  final String authors;
  final String publicationDate;
  final String background; // Latar Belakang/Tujuan
  final String method;     // Metode Penelitian
  final String theory;     // Kerangka Teori
  final String results;    // Hasil Penelitian
  final String doi;
  final String url;

  ReferenceModel({
    required this.title,
    required this.authors,
    required this.publicationDate,
    required this.background,
    required this.method,
    required this.theory,
    required this.results,
    required this.doi,
    required this.url,
  });
}
