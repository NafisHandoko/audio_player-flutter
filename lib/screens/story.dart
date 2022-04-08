import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(padding: const EdgeInsets.only(bottom: 20), children: [
        Text(
          '''\t\t\t\t\tPada zaman dahulu di perkampungan Sumatra Barat hiduplah janda bernama Mande Rubayah dan anak laki-lakinya yang bernama Malin Kundang. Ketika Malin Kundang dewasa, ada kapal besar merapat di Pantai Air Manis, jadi dia meminta izin ke ibunya untuk merantau ke kota. Dengan berat hati Mande Rubayah mengizinkannya pergi. Tetapi setelah itu tidak terdengar kabar apapun dari anaknya.\n 
\t\t\t\t\tMande Rubayah hanya mendengar kabar bahwa Malin Kundang menikahi seorang gadis bangsawan. Karena itu dia sangat gembira dan ingin segera bertemu dengan anaknya. Hingga suatu hari Malin Kundang dan istrinya mendatangi desa. Mande Rubayah yang sangat gembira langsung memeluk anaknya dengan erat. Tetapi Malin Kundang terkejut karena dipeluk wanita tua miskin dan tidak percaya bahwa dia adalah ibunya. Tiba-tiba Istrinya meludah dan berkata, “Wanita jelek inikah ibumu? Mengapa dahulu kamu berbohong kepadaku? Bukankah dahulu kamu bilang bahwa ibumu adalah seorang bangsawan yang sederajat denganku?”.\n
\t\t\t\t\tMalin Kundang langsung mendorong ibunya sampai terjatuh, “Wanita gila! Aku bukan anakmu!” katanya. Mande Rubayah terkejut dan berkata, “Malin, Malin, anakku. Aku ibumu! Mengapa kamu menjadi seperti ini?”.\n
\t\t\t\t\tMalin Kundang tidak memedulikan dan tidak mengakui ibunya karena malu pada istrinya. Mande Rubayah tidak menyangka anaknya bisa berbuat demikian. Kemudian dia berdoa, “Ya Tuhan, kalau ternyata dia bukan anakku, aku memaafkan perbuatannya tadi. Tapi kalau memang dia adalah anakku yang bernama Malin Kundang, aku mohon keadilanmu, Ya Tuhan!” katanya sambil menangis.\n
\t\t\t\t\tCuaca di laut mendadak gelap. Hujan deras dan badai tiba-tiba turun dan menghantam kapal Malin Kundang hingga hancur. Besoknya, terlihat kepingan kapal Malin Kundang telah menjadi batu. Terlihat juga batu yang menyerupai tubuh manusia. Itulah tubuh Malin Kundang, anak durhaka yang dikutuk ibunya menjadi batu.''',
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ]),
    );
  }
}
