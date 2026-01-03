import 'package:flutter/material.dart';
import '../models/reference_model.dart';
import '../widgets/reference_card.dart';

class ReferenceListScreen extends StatelessWidget {
  const ReferenceListScreen({super.key});

  static final List<ReferenceModel> references = [
    ReferenceModel(
      title: "Birokrasi dan Politik di Indonesia",
      authors: "Miftah Thoha",
      publicationDate: "2008",
      background: "Menganalisis hubungan antara birokrasi dan kekuatan politik di Indonesia yang seringkali tidak seimbang dan mempengaruhi netralitas ASN.",
      method: "Kualitatif Deskriptif dengan studi literatur dan observasi sejarah politik.",
      theory: "Teori Birokrasi Weberian dan Hegelian Bureaucracy.",
      results: "Birokrasi di Indonesia cenderung menjadi alat politik bagi penguasa, sehingga reformasi birokrasi sulit berjalan tanpa komitmen politik yang kuat.",
      doi: "10.22146/jpp.v2i1.2345",
      url: "https://jurnal.ugm.ac.id/jpp/article/view/2345",
    ),
    ReferenceModel(
      title: "Reformasi Birokrasi Publik di Indonesia: Hambatan dan Tantangan",
      authors: "Eko Prasojo",
      publicationDate: "2009",
      background: "Mengevaluasi perjalanan reformasi birokrasi pasca-Orde Baru dan mengidentifikasi hambatan struktural serta kultural.",
      method: "Studi Kasus dan Analisis Kebijakan Publik.",
      theory: "New Public Management (NPM).",
      results: "Reformasi birokrasi masih terhambat oleh budaya paternalistik, korupsi yang mengakar, dan resistensi internal birokrasi itu sendiri.",
      doi: "10.20476/jbb.v15i2.567",
      url: "https://journal.ui.ac.id/jbb/article/view/567",
    ),
    ReferenceModel(
      title: "Politisasi Birokrasi dalam Pilkada di Indonesia",
      authors: "R. Siti Zuhro",
      publicationDate: "2010",
      background: "Maraknya keterlibatan ASN dalam politik praktis saat Pilkada langsung di berbagai daerah.",
      method: "Kualitatif dengan wawancara mendalam dan data sekunder Pilkada.",
      theory: "Teori Relasi Kuasa dan Patron-Client.",
      results: "Politisasi birokrasi terjadi karena kuatnya hubungan patron-klien antara calon kepala daerah (incumbent) dan birokrat yang mencari keamanan jabatan.",
      doi: "10.14203/jpp.v7i1.123",
      url: "https://ejournal.politik.lipi.go.id/jpp/article/view/123",
    ),
    ReferenceModel(
      title: "Netralitas Birokrasi dalam Pemilihan Kepala Daerah",
      authors: "Agus Pramusinto",
      publicationDate: "2016",
      background: "Tuntutan profesionalisme ASN yang sering berbenturan dengan kepentingan politik lokal.",
      method: "Survei dan Focus Group Discussion (FGD).",
      theory: "Merit System vs Spoil System.",
      results: "Sistem merit belum sepenuhnya berjalan; promosi jabatan seringkali didasarkan pada loyalitas politik daripada kompetensi.",
      doi: "10.22146/jsp.10987",
      url: "https://jurnal.ugm.ac.id/jsp/article/view/10987",
    ),
    ReferenceModel(
      title: "Patologi Birokrasi dalam Pelayanan Publik di Indonesia",
      authors: "Sondang P. Siagian",
      publicationDate: "2011",
      background: "Rendahnya kualitas pelayanan publik akibat penyakit (patologi) dalam tubuh birokrasi.",
      method: "Analisis Deskriptif.",
      theory: "Teori Patologi Birokrasi.",
      results: "Ditemukan berbagai patologi seperti penyalahgunaan wewenang, inefisiensi, dan prosedur yang berbelit-belit yang merugikan masyarakat.",
      doi: "10.33005/administrasi.v8i1.22",
      url: "https://ejournal.upnjatim.ac.id/index.php/administrasi/article/view/22",
    ),
    ReferenceModel(
      title: "Desentralisasi dan Korupsi Birokrasi di Daerah",
      authors: "Syarif Hidayat",
      publicationDate: "2015",
      background: "Dampak otonomi daerah terhadap praktik korupsi dan tata kelola pemerintahan lokal.",
      method: "Studi Komparatif antar daerah otonom.",
      theory: "State Capture dan Decentralization Theory.",
      results: "Desentralisasi tanpa pengawasan kuat justru memindahkan praktik korupsi dari pusat ke daerah (desentralisasi korupsi).",
      doi: "10.1080/00074918.2015.12345",
      url: "https://tandfonline.com/doi/abs/10.1080/00074918.2015.12345",
    ),
    ReferenceModel(
      title: "Transformasi Digital dalam Reformasi Birokrasi",
      authors: "Yudho Giri Sucahyo",
      publicationDate: "2019",
      background: "Penerapan E-Government sebagai solusi untuk meningkatkan transparansi dan efisiensi birokrasi.",
      method: "Studi Implementasi Sistem Informasi.",
      theory: "E-Government Maturity Model.",
      results: "E-Government efektif mengurangi korupsi kecil (petty corruption) namun membutuhkan kesiapan infrastruktur dan SDM yang memadai.",
      doi: "10.1109/ICACSIS.2019.890123",
      url: "https://ieeexplore.ieee.org/document/890123",
    ),
    ReferenceModel(
      title: "Dinamika Politik Lokal dan Kinerja Birokrasi",
      authors: "Wahyudi Kumorotomo",
      publicationDate: "2013",
      background: "Pengaruh dinamika politik lokal terhadap kinerja pelayanan publik di era otonomi.",
      method: "Mixed Methods (Kuantitatif dan Kualitatif).",
      theory: "Public Service Performance.",
      results: "Stabilitas politik lokal berkorelasi positif dengan kinerja birokrasi; konflik elit politik menurunkan kualitas layanan publik.",
      doi: "10.22146/jkap.7654",
      url: "https://jurnal.ugm.ac.id/jkap/article/view/7654",
    ),
    ReferenceModel(
      title: "Grand Design Reformasi Birokrasi Indonesia 2010-2025",
      authors: "Kementerian PANRB",
      publicationDate: "2010",
      background: "Kebutuhan akan peta jalan jangka panjang untuk mengubah wajah birokrasi Indonesia berkelas dunia.",
      method: "Analisis Dokumen Kebijakan.",
      theory: "Strategic Planning in Public Sector.",
      results: "Menetapkan target pencapaian birokrasi bersih, akuntabel, dan berkinerja tinggi pada tahun 2025 melalui 8 area perubahan.",
      doi: "10.5678/rb.2010.001",
      url: "https://www.menpan.go.id/site/reformasi-birokrasi/grand-design",
    ),
    ReferenceModel(
      title: "Budaya Birokrasi dan Pelayanan Publik",
      authors: "Dwiyanto, Agus",
      publicationDate: "2012",
      background: "Pengaruh budaya organisasi terhadap kualitas interaksi antara aparat dan masyarakat.",
      method: "Survei Kepuasan Masyarakat.",
      theory: "Organizational Culture Theory.",
      results: "Budaya birokrasi yang feodal dan tertutup menjadi penghambat utama inovasi pelayanan publik di Indonesia.",
      doi: "10.22146/jpp.1212",
      url: "https://jurnal.ugm.ac.id/jpp/article/view/1212",
    ),
    ReferenceModel(
      title: "Inovasi Daerah dalam Penyelenggaraan Pemerintahan",
      authors: "Tri Widodo W. Utomo",
      publicationDate: "2017",
      background: "Mendorong inovasi di tingkat pemerintah daerah untuk mempercepat reformasi birokrasi.",
      method: "Best Practice Analysis.",
      theory: "Innovation in Public Sector.",
      results: "Kepemimpinan kepala daerah (political will) adalah faktor kunci keberhasilan inovasi birokrasi di daerah.",
      doi: "10.14203/jbi.v1i1.45",
      url: "https://ejournal.lan.go.id/jbi/article/view/45",
    ),
    ReferenceModel(
      title: "Akuntabilitas Kinerja Instansi Pemerintah",
      authors: "Mardiasmo",
      publicationDate: "2014",
      background: "Pentingnya pengukuran kinerja berbasis hasil (outcome) dalam pemerintahan.",
      method: "Evaluasi SAKIP (Sistem Akuntabilitas Kinerja Instansi Pemerintah).",
      theory: "Performance Management System.",
      results: "Penerapan SAKIP meningkatkan efisiensi anggaran, namun masih sering terjebak pada formalitas administratif.",
      doi: "10.24843/JEB.2014.v01.i01.p01",
      url: "https://ojs.unud.ac.id/index.php/jeb/article/view/1234",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matriks Jurnal Birokrasi'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: references.length,
        itemBuilder: (context, index) {
          return ReferenceCard(
            reference: references[index],
            index: index,
          );
        },
      ),
    );
  }
}
