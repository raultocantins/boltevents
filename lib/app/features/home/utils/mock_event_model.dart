import 'package:appfest/app/features/home/models/event.dart';

class MockEventModel {
  final List<EventModel> items = [
    EventModel(
        title: "Hyper Fest",
        imageUrl: "https://images.sympla.com.br/62409aba4ced7-xs.png",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://viagemegastronomia.cnnbrasil.com.br/wp-content/uploads/sites/5/2021/12/tan-tan-noodle-bar-2.jpeg?w=1200&h=675&crop=1"),
    EventModel(
        title: "Retiro Tur",
        imageUrl: "https://images.sympla.com.br/61df0bf844f2a-xs.jpg",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://viagemegastronomia.cnnbrasil.com.br/wp-content/uploads/sites/5/2021/12/tan-tan-noodle-bar-2.jpeg?w=1200&h=675&crop=1"),
    EventModel(
        title: "Arena Fest",
        imageUrl:
            "https://pr0.nicelocal.br.com/3yjRA6EezHwxigdij3nx-w/587x440,q85/4px-BW84_n0QJGVPszge3NRBsKw-2VcOifrJIjPYFYkOtaCZxxXQ2RBaYFR7LG6pPJq1VIrbuzRCvEt4JYY_az2F-1FwT8zsuJwb4uPcFrIwKez7wfFK6g",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://viagemegastronomia.cnnbrasil.com.br/wp-content/uploads/sites/5/2021/12/tan-tan-noodle-bar-2.jpeg?w=1200&h=675&crop=1"),
    EventModel(
        title: "Verão Eletrônico",
        imageUrl:
            "https://wscom.com.br/wp-content/uploads/2021/12/Palco-Fest-Verao-Novas-4.jpeg",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://casacor.abril.com.br/wp-content/uploads/sites/7/2016/11/loungebar.jpeg?quality=90&strip=info"),
    EventModel(
        title: "João Gomes ao vivo",
        imageUrl: "https://i.ytimg.com/vi/MBvWdXwqRoo/maxresdefault.jpg",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://i1.sndcdn.com/avatars-000527920803-nb2gv9-t500x500.jpg"),
    EventModel(
        title: "Verão Eletrônico",
        imageUrl:
            "https://wscom.com.br/wp-content/uploads/2021/12/Palco-Fest-Verao-Novas-4.jpeg",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://casacor.abril.com.br/wp-content/uploads/sites/7/2016/11/loungebar.jpeg?quality=90&strip=info"),
    EventModel(
        title: "João Gomes ao vivo",
        imageUrl: "https://i.ytimg.com/vi/MBvWdXwqRoo/maxresdefault.jpg",
        locale: "Palmas - TO",
        profileImageUrl:
            "https://i1.sndcdn.com/avatars-000527920803-nb2gv9-t500x500.jpg"),
  ];

  final List<String> listTag = [
    "Nenhum",
    "Rock",
    "Sertanejo",
    "Funk",
    "Eletrônica",
    "Mpb",
    "Samba"
  ];

  final List<String> listPrices = [
    "Nenhum",
    "\$ 0 - 10",
    "\$ 11 - 20",
    "\$ 21 - 30",
    "\$ 31 - 40",
    "\$ 41 - 50",
    "\$ 51 - 60"
  ];
}
