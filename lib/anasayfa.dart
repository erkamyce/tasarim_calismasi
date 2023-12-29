import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

//left - start - leading
//right - end -trailing
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    var d = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: anaRenk,
      appBar: AppBar(
        title:  Text("PizzaTo" ,style: TextStyle(color: yaziRenk2 , fontFamily: "Pacifico" , fontSize: ekranGenisligi/17),),
        backgroundColor: ikinciRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.only(top: ekranGenisligi/25),
            child: Text(d!.pizzaBaslik, style: TextStyle(fontSize: 28 , color: ikinciRenk,fontWeight: FontWeight.bold),),
          ),
            Padding(
              padding: EdgeInsets.only(top: ekranGenisligi/25),
              child: Image.asset("resimler/pizza_resim.png"),
            ),
          Padding(
            padding: EdgeInsets.only(top: ekranGenisligi/25),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               Chip(icerik: d.peynirYazi),
               Chip(icerik: d.sucukYazi),
               Chip(icerik: d.zeytinYazi),
               Chip(icerik: d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(fontSize: 22 , color: yaziRenk1,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(fontSize: 26 , color: ikinciRenk,fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(fontSize: 22 , color: yaziRenk1,),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(d.fiyat, style: TextStyle(fontSize: 40 , color: ikinciRenk,fontWeight: FontWeight.bold),),
              SizedBox(width: ekranGenisligi/2.5, height: ekranYuksekligi/14,
                child: TextButton(onPressed: (){},
                  child: Text(d.buttonYazi,style: TextStyle(color: yaziRenk2 ,fontSize: 26),),
                  style: TextButton.styleFrom(
                      backgroundColor: ikinciRenk,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5 )))
                  ),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}

class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: ikinciRenk),

    );
  }
}

