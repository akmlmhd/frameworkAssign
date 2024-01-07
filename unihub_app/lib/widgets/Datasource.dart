import 'package:unihub_app/widgets/info_hepa.dart';
import 'package:unihub_app/widgets/info_keselamatan.dart';
import 'package:unihub_app/widgets/info_pku.dart';
import '../models/Uni.dart';

//all data have been there
class Datasource{
  List<Uni>loadUni(){
    return[
      Uni(
          '013-3664295',
          'assets/images/keselamatan.jpeg',
          'Keselamatan',
          infoKeselamatan()
          ),
      Uni(
        '011-17962120',
        'assets/images/hepa.jpeg',
        'Hal Ehwal Pelajar',
        infoHepa()
        ),
      Uni(
        '019-5375236',
        'assets/images/pku.jpeg',
        'Pusat Kesihatan Universiti',
        infoPku()
        )
    ];
  }
}