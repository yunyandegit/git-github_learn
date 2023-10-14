import 'dart:async';
import 'dart:convert';

import 'dart:math';

const cc = '''
[{
  "cc_number": "4041593500379265",
  "name": "Margie Moyer",
  "expire": "2024-08-26T01:09:34Z",
  "cvv": 571
}, {
  "cc_number": "5100179502768914",
  "name": "Barnaby Rickesies",
  "expire": "2022-01-27T16:53:23Z",
  "cvv": 684
}, {
  "cc_number": "5100146360853997",
  "name": "Martita Dreher",
  "expire": "2022-11-28T18:43:39Z",
  "cvv": 955
}, {
  "cc_number": "5100148386629617",
  "name": "Wenona Easeman",
  "expire": "2024-10-27T03:23:46Z",
  "cvv": 881
}, {
  "cc_number": "4041377394922111",
  "name": "Dominique Yaneev",
  "expire": "2024-05-21T16:55:27Z",
  "cvv": 839
}, {
  "cc_number": "4238753050436",
  "name": "Filippo Marieton",
  "expire": "2024-08-04T22:06:41Z",
  "cvv": 488
}, {
  "cc_number": "5517015535181880",
  "name": "Brana Swaden",
  "expire": "2023-11-17T15:27:22Z",
  "cvv": 581
}, {
  "cc_number": "4017954766419056",
  "name": "Nicolea Stanfield",
  "expire": "2023-12-18T23:06:33Z",
  "cvv": 829
}, {
  "cc_number": "4409078942016200",
  "name": "Audry Teale",
  "expire": "2024-09-22T20:59:58Z",
  "cvv": 115
}, {
  "cc_number": "5048377440973928",
  "name": "Georgy Atwood",
  "expire": "2024-05-18T03:09:33Z",
  "cvv": 113
}, {
  "cc_number": "5584769701191077",
  "name": "Massimo O'Kenny",
  "expire": "2023-02-02T01:37:00Z",
  "cvv": 278
}, {
  "cc_number": "5100145867895386",
  "name": "Carol-jean Chubb",
  "expire": "2022-01-10T03:13:11Z",
  "cvv": 417
}, {
  "cc_number": "4041373519241651",
  "name": "Tedda Mughal",
  "expire": "2024-10-21T07:08:07Z",
  "cvv": 965
}, {
  "cc_number": "4017956852297",
  "name": "Marcellus Knaggs",
  "expire": "2022-03-23T17:20:41Z",
  "cvv": 903
}, {
  "cc_number": "4017957999535234",
  "name": "Nikkie Skahill",
  "expire": "2024-04-09T15:43:42Z",
  "cvv": 961
}, {
  "cc_number": "4017953192739",
  "name": "Karlie Vidler",
  "expire": "2023-03-08T15:02:26Z",
  "cvv": 527
}, {
  "cc_number": "5007663849579476",
  "name": "Riley Postle",
  "expire": "2023-04-01T15:06:50Z",
  "cvv": 537
}, {
  "cc_number": "4041376734458273",
  "name": "Neille Husselbee",
  "expire": "2024-11-23T01:31:31Z",
  "cvv": 805
}, {
  "cc_number": "4231353372292",
  "name": "Galvan Loren",
  "expire": "2024-05-29T23:27:58Z",
  "cvv": 770
}, {
  "cc_number": "5139424296190288",
  "name": "Yevette Mott",
  "expire": "2022-11-04T05:29:22Z",
  "cvv": 884
}, {
  "cc_number": "5002355688081111",
  "name": "Winthrop Eate",
  "expire": "2021-10-28T07:41:50Z",
  "cvv": 375
}, {
  "cc_number": "4041372138685",
  "name": "Myron Bunney",
  "expire": "2024-01-16T10:31:00Z",
  "cvv": 658
}, {
  "cc_number": "5048377520143376",
  "name": "Tara Bootman",
  "expire": "2022-05-03T05:45:14Z",
  "cvv": 669
}, {
  "cc_number": "5108751615632906",
  "name": "Karil Hollington",
  "expire": "2022-07-25T22:01:18Z",
  "cvv": 445
}, {
  "cc_number": "5493894254432411",
  "name": "Carmen Corck",
  "expire": "2024-01-06T15:00:59Z",
  "cvv": 378
}, {
  "cc_number": "4041596134890",
  "name": "Jill Bruniges",
  "expire": "2023-04-04T18:34:43Z",
  "cvv": 132
}, {
  "cc_number": "4017955958509",
  "name": "Alonzo Raleston",
  "expire": "2024-02-05T18:30:13Z",
  "cvv": 656
}, {
  "cc_number": "5048376687736543",
  "name": "Cordie Bang",
  "expire": "2021-11-08T19:42:47Z",
  "cvv": 607
}, {
  "cc_number": "5581888734156957",
  "name": "Tracey De la Zenne",
  "expire": "2023-01-15T12:42:21Z",
  "cvv": 621
}, {
  "cc_number": "4041592600248958",
  "name": "Marietta Saylor",
  "expire": "2023-05-15T19:10:25Z",
  "cvv": 604
}, {
  "cc_number": "4876902858653876",
  "name": "Millard Smallthwaite",
  "expire": "2022-10-06T08:31:45Z",
  "cvv": 513
}, {
  "cc_number": "5317279737162633",
  "name": "Galven Grazier",
  "expire": "2023-12-11T07:07:10Z",
  "cvv": 163
}, {
  "cc_number": "5100148115546553",
  "name": "Noel Stanyforth",
  "expire": "2023-08-13T17:47:42Z",
  "cvv": 140
}, {
  "cc_number": "5100134327411562",
  "name": "Francine Forgan",
  "expire": "2022-05-31T04:28:19Z",
  "cvv": 594
}, {
  "cc_number": "4041597593334186",
  "name": "Jeanelle Tatham",
  "expire": "2023-01-28T19:56:24Z",
  "cvv": 787
}, {
  "cc_number": "5520932681983064",
  "name": "Moria Cheyenne",
  "expire": "2022-12-23T05:09:08Z",
  "cvv": 675
}, {
  "cc_number": "4448895303095439",
  "name": "Miran Kirkebye",
  "expire": "2023-05-05T09:16:42Z",
  "cvv": 615
}, {
  "cc_number": "5386584978864649",
  "name": "Hayyim Cuddihy",
  "expire": "2024-12-25T06:16:16Z",
  "cvv": 884
}, {
  "cc_number": "5048376665353246",
  "name": "Jamaal Sumbler",
  "expire": "2024-03-20T13:16:34Z",
  "cvv": 154
}, {
  "cc_number": "4041595711425",
  "name": "Tracey Brennenstuhl",
  "expire": "2022-03-01T10:59:00Z",
  "cvv": 431
}, {
  "cc_number": "4041377074683405",
  "name": "Faustina Ordish",
  "expire": "2024-04-12T13:25:44Z",
  "cvv": 842
}, {
  "cc_number": "4564205552248275",
  "name": "Hadrian Crust",
  "expire": "2022-09-23T23:57:43Z",
  "cvv": 656
}, {
  "cc_number": "5108752630631774",
  "name": "Weber Killingback",
  "expire": "2022-10-07T12:35:29Z",
  "cvv": 905
}, {
  "cc_number": "5586337554405594",
  "name": "Kacie Brager",
  "expire": "2023-01-18T20:04:42Z",
  "cvv": 512
}, {
  "cc_number": "5108755921822523",
  "name": "Emylee Boissieux",
  "expire": "2024-01-01T17:27:21Z",
  "cvv": 419
}, {
  "cc_number": "4041591565529063",
  "name": "Hale Skingle",
  "expire": "2024-12-01T04:49:28Z",
  "cvv": 914
}, {
  "cc_number": "5100173775105193",
  "name": "Correna Beggs",
  "expire": "2022-03-02T23:08:20Z",
  "cvv": 329
}, {
  "cc_number": "5564375001709636",
  "name": "Ainslie Willbraham",
  "expire": "2024-12-05T21:06:17Z",
  "cvv": 948
}, {
  "cc_number": "4041595680619519",
  "name": "Brent Outhwaite",
  "expire": "2024-06-03T17:57:20Z",
  "cvv": 351
}, {
  "cc_number": "4017956133417",
  "name": "Susann Edmett",
  "expire": "2023-03-03T19:11:59Z",
  "cvv": 303
}, {
  "cc_number": "5100130559407732",
  "name": "Enrika Dumini",
  "expire": "2022-10-30T14:42:53Z",
  "cvv": 894
}, {
  "cc_number": "5108759422701384",
  "name": "Corney Wallman",
  "expire": "2022-01-19T21:13:27Z",
  "cvv": 714
}, {
  "cc_number": "4041598625069626",
  "name": "Giraud Ruck",
  "expire": "2022-10-15T03:17:27Z",
  "cvv": 877
}, {
  "cc_number": "4041590885398",
  "name": "Timofei Goeff",
  "expire": "2023-12-11T07:49:47Z",
  "cvv": 751
}, {
  "cc_number": "5007669257506687",
  "name": "Aaron Andreacci",
  "expire": "2022-05-22T04:18:14Z",
  "cvv": 508
}, {
  "cc_number": "4041591161294",
  "name": "Thia Rouzet",
  "expire": "2023-06-04T14:08:36Z",
  "cvv": 856
}, {
  "cc_number": "4244206246647",
  "name": "Gustavo Hiscoe",
  "expire": "2021-10-09T08:55:29Z",
  "cvv": 277
}, {
  "cc_number": "4017958345439741",
  "name": "Philipa Lamboll",
  "expire": "2022-11-17T23:59:31Z",
  "cvv": 588
}, {
  "cc_number": "4041373520113",
  "name": "Polly Iskower",
  "expire": "2023-06-10T16:48:56Z",
  "cvv": 103
}, {
  "cc_number": "4017957780588",
  "name": "Jaimie McGaugey",
  "expire": "2022-06-07T20:49:19Z",
  "cvv": 507
}, {
  "cc_number": "5220304336773675",
  "name": "Wadsworth Morritt",
  "expire": "2022-08-20T07:47:38Z",
  "cvv": 870
}, {
  "cc_number": "5469935976086538",
  "name": "Torr Phippin",
  "expire": "2022-12-08T09:25:29Z",
  "cvv": 949
}, {
  "cc_number": "5413686197406891",
  "name": "Fernande McAteer",
  "expire": "2023-04-01T07:44:24Z",
  "cvv": 528
}, {
  "cc_number": "5174808095470931",
  "name": "Eunice Flatt",
  "expire": "2024-01-06T22:52:36Z",
  "cvv": 222
}, {
  "cc_number": "4041596593426",
  "name": "Prudence Erb",
  "expire": "2024-08-16T11:19:24Z",
  "cvv": 421
}, {
  "cc_number": "5002357208554833",
  "name": "Bernete Button",
  "expire": "2023-11-10T06:33:39Z",
  "cvv": 865
}, {
  "cc_number": "5100149206627732",
  "name": "Cassie Wordington",
  "expire": "2022-04-03T19:52:25Z",
  "cvv": 599
}, {
  "cc_number": "5010127730504238",
  "name": "Welbie Selbach",
  "expire": "2022-05-19T03:22:33Z",
  "cvv": 119
}, {
  "cc_number": "5100179201914553",
  "name": "Cordy Tapner",
  "expire": "2024-11-03T09:41:19Z",
  "cvv": 781
}, {
  "cc_number": "4041376298376341",
  "name": "Darnell Rippon",
  "expire": "2023-06-26T16:33:15Z",
  "cvv": 898
}, {
  "cc_number": "4308633829596401",
  "name": "Pat Rolstone",
  "expire": "2021-12-16T16:42:02Z",
  "cvv": 504
}, {
  "cc_number": "5223224201589989",
  "name": "Doroteya Perett",
  "expire": "2023-07-13T12:23:55Z",
  "cvv": 465
}, {
  "cc_number": "4532339701488505",
  "name": "Trefor Marron",
  "expire": "2024-09-14T13:42:52Z",
  "cvv": 414
}, {
  "cc_number": "5007667857876880",
  "name": "Che Letherbury",
  "expire": "2022-07-01T09:39:00Z",
  "cvv": 983
}, {
  "cc_number": "4041370416742039",
  "name": "Ripley Gilsthorpe",
  "expire": "2022-03-18T15:52:14Z",
  "cvv": 995
}, {
  "cc_number": "5329074469375156",
  "name": "Jerry Biaggi",
  "expire": "2023-01-14T01:53:55Z",
  "cvv": 194
}, {
  "cc_number": "4041373456051816",
  "name": "Rana Gutch",
  "expire": "2022-08-17T07:29:15Z",
  "cvv": 584
}, {
  "cc_number": "4041591296159826",
  "name": "Rae Roos",
  "expire": "2024-10-16T19:18:14Z",
  "cvv": 385
}, {
  "cc_number": "4041593397702355",
  "name": "Annabel Calcut",
  "expire": "2022-02-17T23:22:22Z",
  "cvv": 727
}, {
  "cc_number": "4017955223359",
  "name": "Essy Ploughwright",
  "expire": "2024-07-01T22:18:26Z",
  "cvv": 506
}, {
  "cc_number": "4041378562404684",
  "name": "Adey Lutz",
  "expire": "2024-08-18T00:30:41Z",
  "cvv": 482
}, {
  "cc_number": "4041598278919",
  "name": "Bennie Grindrod",
  "expire": "2023-05-06T08:21:26Z",
  "cvv": 958
}, {
  "cc_number": "4017957632706",
  "name": "Layney Laycock",
  "expire": "2023-03-07T13:15:16Z",
  "cvv": 164
}, {
  "cc_number": "4017954824652",
  "name": "Kalvin Eddington",
  "expire": "2021-11-13T07:01:08Z",
  "cvv": 723
}, {
  "cc_number": "5100134885809207",
  "name": "Tory Hounihan",
  "expire": "2023-11-22T21:27:29Z",
  "cvv": 684
}, {
  "cc_number": "5566258480665974",
  "name": "Bertine Simeon",
  "expire": "2024-03-02T19:55:02Z",
  "cvv": 349
}, {
  "cc_number": "4041595588807",
  "name": "Louella Avard",
  "expire": "2023-01-24T00:41:28Z",
  "cvv": 956
}, {
  "cc_number": "5010120537457106",
  "name": "Zulema Kondratyuk",
  "expire": "2023-05-12T05:13:08Z",
  "cvv": 234
}, {
  "cc_number": "5490448676889154",
  "name": "Courtnay Freebury",
  "expire": "2023-08-18T20:28:36Z",
  "cvv": 201
}, {
  "cc_number": "4041374210599",
  "name": "Leupold Airton",
  "expire": "2024-07-18T06:17:47Z",
  "cvv": 153
}, {
  "cc_number": "4041376961157523",
  "name": "Kari Hourstan",
  "expire": "2023-04-15T19:41:57Z",
  "cvv": 157
}, {
  "cc_number": "5007665230023600",
  "name": "Padraig Wilkisson",
  "expire": "2022-03-09T20:13:18Z",
  "cvv": 480
}, {
  "cc_number": "4041378007173",
  "name": "Ulrica Breton",
  "expire": "2022-04-10T00:28:37Z",
  "cvv": 586
}, {
  "cc_number": "4896786655613548",
  "name": "Donica Cafferky",
  "expire": "2024-09-03T11:20:08Z",
  "cvv": 675
}, {
  "cc_number": "4041595728478985",
  "name": "Maurits Pammenter",
  "expire": "2024-05-05T03:56:58Z",
  "cvv": 961
}, {
  "cc_number": "4041593759640",
  "name": "Herminia Brownlow",
  "expire": "2023-11-12T19:58:33Z",
  "cvv": 349
}, {
  "cc_number": "4975500662864091",
  "name": "Rosy Haston",
  "expire": "2023-10-12T12:26:29Z",
  "cvv": 809
}, {
  "cc_number": "4041596415315241",
  "name": "Wylie Lamerton",
  "expire": "2022-07-30T15:43:15Z",
  "cvv": 670
}, {
  "cc_number": "4041598106911775",
  "name": "Verney Jepp",
  "expire": "2024-02-11T18:51:02Z",
  "cvv": 946
}, {
  "cc_number": "4041597300946",
  "name": "Marline Aizic",
  "expire": "2024-10-21T02:46:56Z",
  "cvv": 359
}]
''';

void main() async {
  final _controller = StreamController<CC>();

  final result = List<CC>.from(json.decode(cc).map((el) => CC.fromJSON(el)));

  for (CC cc in result) {
    _controller.sink.add(cc);
  }

  _controller.stream.listen((event) {
    print('Nama         :' + event.name);
    print('CC Number    :' + event.ccNumber);
    print('Expire       :' + '${event.expire.month}/${event.expire.year}');
    print('CVV          :' + event.cvv.toString());
    print('\n');
  });
}

class CC {
  final String ccNumber;
  final String name;
  final DateTime expire;
  final int cvv;

  const CC({
    required this.ccNumber,
    required this.name,
    required this.expire,
    required this.cvv,
  });

  factory CC.fromJSON(Map<String, dynamic> map) {
    return CC(
      ccNumber: map['cc_number'],
      name: map['name'],
      expire: DateTime.parse(map['expire']),
      cvv: map['cvv'],
    );
  }
}
