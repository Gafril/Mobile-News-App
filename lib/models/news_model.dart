class NewsData {
  String? title;
  String? category;
  String? author;
  String? content;
  String? date;
  String? UrlToImage;

  NewsData(
    this.title,
    this.category,
    this.author,
    this.content,
    this.date,
    this.UrlToImage,
  );

  static List<NewsData> breakingNewsData = [
    NewsData(
        "Sekjen PDIP Benarkan Khofifah Sudah Bertemu Megawati",
        "Pemilu",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Sekretaris Jenderal (Sekjen) PDIP Hasto Kristiyanto membenarkan bahwa Ketua Umum Megawati Soekarnoputri telah bertemu dengan Khofifah Indar Parawansa menyusul isu nama Gubernur Jawa Timur itu masuk bursa cawapres Ganjar Pranowo." +
            "Menurut Hasto, Mega telah beberapa kali bertemu Khofifah. Dua di antaranya saat acara pertemuan para kepala desa di GBK pada Maret lalu, dan penanaman pohon mangrove di Surabaya akhir Juli. Pertemuan Ibu Mega dengan Ibu Khofifah kerap berulang kali, ada pertemuan pada saat pertemuan para kepala desa seluruh Indonesia." +
            "Ada pertemuan juga pada saat meninjau mangrove, kata Hasto di kantor DPP PDIP, Selasa (3/10).",
        "Selasa, 03 Okt 2023 18:07 WIB",
        "https://akcdn.detik.net.id/visual/2019/03/23/5b61dd7c-31aa-41b3-96b0-6b355447f241_169.jpeg?w=650&q=90"),
    NewsData(
        "PDIP Sebut Kaesang PSI Sudah Kirim Surat ke Megawati Minta Bertemu",
        "Pemilu",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Sekretaris Jenderal PDIP Hasto Kristiyanto mengatakan telah menerima surat dari Ketua Umum Partai Solidaritas Indonesia (PSI) Kaesang Pangarep untuk bertemu Ketua Umum PDIP Megawati Soekarnoputri." +
            "Surat itu ditujukan kepada Ketua Umum PDI Perjuangan, maka kami akan sampaikan kepada Ibu Megawati Soekarnoputri yang saat ini masih berada di Malaysia, kata Hasto di Kantor DPP PDIP, Selasa (3/10).",
        "Selasa, 03 Okt 2023 19:48 WIB",
        "https://akcdn.detik.net.id/visual/2023/10/01/penutupan-rakernas-pdi-perjuangan-3_169.jpeg?w=650&q=90"),
    NewsData(
        "Kemenag Laporkan Aktivitas Umrah 'Backpacker' ke Polisi",
        "Peristiwa",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Direktur Bina Umrah dan Haji Khusus Kementerian Agama (Kemenag) Nur Arifin memastikan telah membuat laporan ke Polda Metro Jaya terkait aktivitas penawaran umrah 'backpacker' atau umrah mandiri tanpa melalui Penyelenggara Perjalanan Ibadah Umrah (PPIU)." +
            "Perlu diketahui bahwa kami telah mengirimkan surat pengaduan kepada Polda Metro Jaya atas dugaan tindak pidana penyelenggaraan perjalanan ibadah umrah. Surat tersebut kami layangkan pada 12 September 2023, kata Nur dalam keterangan resminya dikutip Selasa (3/10).",
        "Selasa, 03 Okt 2023 20:09 WIB",
        "https://akcdn.detik.net.id/visual/2020/10/09/arab-saudi-kembali-buka-umrah-5_169.jpeg?w=650&q=90"),   
  ];

  static List<NewsData> recentNewsData = [
    NewsData(
        "2 Pekan Operasi Zebra Jaya 2023, Polisi Tilang 2.402 Pengendara",
        "Hukum Kriminal",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Polisi memberikan sanksi tilang terhadap 2.402 pengendara yang melanggar aturan lalu lintas selama dua pekan pelaksanaan Operasi Zebra Jaya 2023 pada 18 September hingga 1 Oktober." +
            "Sanksi tilang dikenakan lewat sistem elektronik atau e-TLE. Total pelanggar yang diberikan sanksi ada sebanyak 2.402 pengendara, kata Kabid Humas Polda Metro Jaya Kombes Trunoyudo Wisnu Andiko dalam keterangannya, Selasa (3/10).",
        "Selasa, 03 Okt 2023 21:30 WIB",
        "https://akcdn.detik.net.id/visual/2023/09/18/operasi-zebra-jaya-2023-11_169.jpeg?w=650&q=90"),
    NewsData(
        "Revisi UU IKN: Otorita Diberi Kewenangan Khusus Menata Ulang Tanah",
        "Politik",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Revisi Undang-undang tentang Ibu Kota Negara (UU IKN) yang baru disahkan melalui Rapat Paripurna DPR, Selasa (3/10) memberikan kewenangan khusus untuk Otorita Ibu Kota." +
            "Dalam draf UU IKN terakhir yang diterima CNNIndonesia.com, terdapat perubahan pada pasal 12 yang mengatur soal kewenangan dan urusan pemerintah. Dalam beleid anyar itu, " +
            "Otorita Ibu Kota diberikan kewenangan khusus atas urusan pemerintahan pusat dan urusan pemerintahan daerah.",
        "Selasa, 03 Okt 2023 20:39 WIB",
        "https://akcdn.detik.net.id/visual/2023/08/23/progres-pembangunan-ikn-nusantara_169.jpeg?w=650&q=90"),
    NewsData(
        "Anak Meninggal Dunia Usai Operasi Amandel, RS di Bekasi Buka Suara",
        "Hukum Kriminal",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Rumah Sakit Kartika Husada mengakui peralatan medis terbatas untuk melakukan penanganan terhadap BA (7), pasien didiagnosis mati batang otak usai jalani operasi amandel. BA dinyatakan meninggal pada Senin (2/10)." +
            "Komisaris RS Kartika Husada Jatiasih Bekasi, Nidya Kartika Yolanda mengatakan pihaknya terkendala peralatan medis untuk melakukan penanganan terhadap pasien anak usai kondisinya memburuk pascaoperasi amandel." +
            "Kalau standar perawatan pasien sudah sesuai dengan kondisi pasien. Cuma, kan, memang kita terkendala alat-alat penunjang seperti pemeriksaan MRI (Magnetic Resonance Imaging), CT Scan memang tidak ada, kata Nidya dalam Konferensi Pers di RS Kartika Husada, Selasa (3/10).",
        "Selasa, 03 Okt 2023 20:03 WIB",
        "https://akcdn.detik.net.id/visual/2022/10/22/ilustrasi-pasien-gagal-ginjal-akut-anak-4_169.jpeg?w=650&q=90"),
    NewsData(
        "Defile Alutsista dan Demo Udara HUT TNI, Warga Bisa Saksikan di Monas",
        "Peristiwa",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Upacara Hari Ulang Tahun (HUT) TNI ke-78 akan digelar di Monas, Jakarta Pusat pada Kamis (5/10) mendatang. TNI menyiapkan defile pasukan, alutsista hingga demo udara yang bisa disaksikan langsung oleh masyarakat." +
            "Asisten Personel (Aspers) Panglima TNI Marsekal Muda (Marsda) Arif Widianto mengatakan Upacara Parade dan Defile HUT ke-78 TNI Tahun 2023 mengerahkan 4.630 personel pasukan dan 130 Alutsista. Persiapannya telah mencapai 95 persen." +
            "Tema pada tahun ini adalah bahwa TNI patriot NKRI, pengawal demokrasi untuk Indonesia maju, ini menandakan bahwa TNI sebagai salah satu pengawal pertahanan dan tentunya tergabung dalam matra darat, laut dan udara yang selalu kokoh dan kuat, dan akan selalu setia pada bangsa dan NKRI, kata Arif di Monas, Selasa (2/10).",
        "Selasa, 03 Okt 2023 18:52 WIB",
        "https://akcdn.detik.net.id/visual/2023/10/03/gladi-bersih-hut-tni-ke-78-di-silang-monas-12_169.jpeg?w=650&q=90"),
  ];

  static List<NewsData> otherNewsData = [
    NewsData(
        "Kedubes Minta Pemerintah Ikut Lindungi Rakyat Palestina dari Israel",
        "Internasional",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Kedutaan Besar (Kedubes) Palestina untuk Indonesia meminta pemerintah Indonesia dan komunitas internasional untuk turut aktif melindungi rakyat Palestina dalam peperangan yang sedang terjadi di Jalur Gaza sejak Sabtu (7/10)." +
            "Dalam keterangan pers yang diterima oleh CNNIndonesia.com pada Senin (9/10), pihak Kedubes Palestina menyatakan bahwa tindakan tersebut perlu dilakukan buntut dari sikap Israel yang melanggar prinsip kemanusiaan dan hukum internasional.",
        "Senin, 09 Okt 2023 19:20 WIB",
        "https://akcdn.detik.net.id/visual/2019/05/17/5d9e1f5b-d528-4bd5-856a-96987fe2a895_169.jpeg?w=650&q=90"),
    NewsData(
        "Israel Umumkan Blokade Total Gaza Perangi Hamas",
        "Internasional",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Israel mengumumkan pihaknya memblokade total Jalur Gaza untuk memerangi kelompok bersenjata Hamas pada Senin (9/10)." +
            "Langkah ini mencakup larangan memasok makanan, air, bahan bakar minyak, dan memutus aliran listrik." +
            "Menteri Pertahanan Israel Yoav Gallant mengatakan pemerintah dia akan memangkas aliran listrik dan memblokade makanan dan BBM yang masuk sebagai bagian (pengepungan total) Gaza yang dikuasai Hamas.",
        "Senin, 09 Okt 2023 18:19 WIB",
        "https://akcdn.detik.net.id/visual/2023/10/08/gaza-mencekam-diserang-balik-israel_169.jpeg?w=650&q=90"),
  ];

  static List<NewsData> hotNewsData = [
    NewsData(
        "TPN Ganjar-Mahfud Beber Dugaan di Balik PDIP Belum Pecat Gibran",
        "Pemilu",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Juru Bicara TPN Ganjar Pranowo dan Mahfud MD, Sunanto, mengungkapkan beberapa hal yang diduga jadi alasan PDIP belum memecat Wali Kota Solo Gibran Rakabuming Raka meski telah dideklarasikan jadi cawapres Prabowo Subianto di Pilpres 2024." +
            "Ia mengatakan hal tersebut lantaran putra sulung Presiden Joko Widodo itu masih belum memberikan pernyataan resmi terkait menerima pinangan Prabowo Subianto sebagai cawapres di Pilpres 2024.",
        "Selasa, 24 Okt 2023 05:40 WIB",
        "https://akcdn.detik.net.id/visual/2023/10/23/sunanto-atau-cak-nanto-1_169.jpeg?w=650&q=90"),
    NewsData(
        "Butet Nantikan Debat Mahfud vs Gibran: Bakal Apik Banget",
        "Pemilu",
        "CNN Indonesia",
        "Jakarta, CNN Indonesia -- Budayawan asal Yogyakarta Butet Kartaredjasa mengaku menantikan debat calon wakil presiden antara Mahfud MD dan Gibran Rakabuming Raka dalam Pilpres 2024." +
            "Menurutnya, hal itu akan menjadi tontonan yang menarik untuk dinikmati. Sebab, keduanya memiliki latar belakang dan pengalaman yang sangat berbeda.",
        "Selasa, 24 Okt 2023 04:45 WIB",
        "https://akcdn.detik.net.id/visual/2023/10/15/butet-minta-gibran-tolak-jadi-cawapres-1_169.mpo?w=650&q=90"),
    // NewsData(
    //     "PDIP Disebut Tak Kontraksi Usai Prabowo Deklarasi Gibran Jadi Cawapres",
    //     "Pemilu",
    //     "CNN Indonesia",
    //     "Jakarta, CNN Indonesia -- Juru bicara Tim Pemenangan Nasional (TPN) Ganjar Pranowo dan Mahfud MD, Chico Hakim, menyebut gonjang-ganjing soal Gibran Rakabuming Raka menjadi bakal cawapres Prabowo Subianto di Pilpres 2024 tak menimbulkan gejolak di internal PDIP." +
    //         "Kisruh ataupun gonjang-ganjing ini juga tidak begitu menimbulkan kontraksi yang besar di internal partai, kata Chico dalam Political Show CNN Indonesia TV, Senin (23/10) malam.",
    //     "Selasa, 24 Okt 2023 05:25 WIB",
    //     "https://akcdn.detik.net.id/visual/2022/06/18/berkunjung-ke-hambalang-prabowo-ajari-gibran-berkuda_169.png?w=650&q=90"),
  ];
}
