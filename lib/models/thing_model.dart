import 'package:fisher_notes/models/enums/fishing_type.dart';
import 'package:fisher_notes/models/enums/length_type.dart';
import 'package:fisher_notes/models/enums/thing_type.dart';

class Thing {
  //The entity Id
  String id;
  //The user Id
  String userId;
  //The name of the thing
  String name;
  //The description of the thing
  String description;
  //Image URL
  String imageUrl;
  //Price of the thing
  double price;
  //Weight
  double weightG;
  // Type of the thing (Wobbler, Rod)
  ThingType type;
  // Type of fishing
  FishingType fishingType;
  double length;
  LengthType lengthType;

  Thing({this.id, this.userId, this.name, this.description, this.imageUrl, this.price, this.weightG, this.type, this.fishingType, this.length, this.lengthType});

}
//Бойлы Dynamite Baits Fluro Pop-Up & Dumbells CompleX-T 10mm

//TODO: Remove after include database
List<Thing> things = [
  Thing(
    name: 'Удилище карповое Fox Eos Rod',
    price: 1624,
    id: '1',
    description: 'Cамая дешевая за все время линейка удилищ компании FOX предлагает непревзойденное соотношение цена/качество',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-FOXCRD255.jpg',
    type: ThingType.rod,
  ),
  Thing(
    name: 'Удилище карповое Fox Eos Rod',
    price: 1624,
    id: '2',
    description: 'Cамая дешевая за все время линейка удилищ компании FOX предлагает непревзойденное соотношение цена/качество',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-FOXCRD255.jpg',
    type: ThingType.rod,
  ),
  Thing(
    name: 'Удилище карповое Fox Eos Rod',
    price: 1624,
    id: '3',
    description: 'Cамая дешевая за все время линейка удилищ компании FOX предлагает непревзойденное соотношение цена/качество',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-FOXCRD255.jpg',
    type: ThingType.rod,
  ),
  Thing(
    name: 'Катушка Shimano Twin Power 15',
    price: 7922,
    id: '12',
    description: 'Катушка Shimano Twin Power (Твин Павер) 15 была создана инженерами компании Shimano на основе базы флагмана модельного ряда безынерционных катушек Stella.',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-SHIMANOTWIN15_mid.jpg',
    type: ThingType.reel,
  ),
  Thing(
    name: 'Катушка Shimano Twin Power 15',
    price: 7922,
    id: '13',
    description: 'Катушка Shimano Twin Power (Твин Павер) 15 была создана инженерами компании Shimano на основе базы флагмана модельного ряда безынерционных катушек Stella.',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-SHIMANOTWIN15_mid.jpg',
    type: ThingType.reel,
  ),
  Thing(
    name: 'Катушка Shimano Twin Power 15',
    price: 7922,
    id: '14',
    description: 'Катушка Shimano Twin Power (Твин Павер) 15 была создана инженерами компании Shimano на основе базы флагмана модельного ряда безынерционных катушек Stella.',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-SHIMANOTWIN15_mid.jpg',
    type: ThingType.reel,
  ),
  Thing(
    name: 'Воблер Deps Balisong Minnow 130SF Longbill',
    price: 461,
    id: '21',
    description: 'Учитывая огромную популярность компания Deps расширила модельный ряд японским хитом Balisong Minnow Longbill. Тело воблера не претерпело изменений, строение внутренних камер осталось прежним',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-DEPSBALMIN130SF_mid.jpg',
    type: ThingType.wobbler,
  ),
  Thing(
    name: 'Воблер Deps Balisong Minnow 130SF Longbill',
    price: 461,
    id: '21',
    description: 'Учитывая огромную популярность компания Deps расширила модельный ряд японским хитом Balisong Minnow Longbill. Тело воблера не претерпело изменений, строение внутренних камер осталось прежним',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-DEPSBALMIN130SF_mid.jpg',
    type: ThingType.wobbler,
  ),
  Thing(
    name: 'Воблер Deps Balisong Minnow 130SF Longbill',
    price: 461,
    id: '21',
    description: 'Учитывая огромную популярность компания Deps расширила модельный ряд японским хитом Balisong Minnow Longbill. Тело воблера не претерпело изменений, строение внутренних камер осталось прежним',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/RK-DEPSBALMIN130SF_mid.jpg',
    type: ThingType.wobbler,
  ),
  Thing(
    name: 'Лента PVA Fox Fox Edges Fast Melt 5mm x 40m',
    price: 111,
    id: '31',
    description: 'ПВА система Fox International Edges Pva Mesh System – кілька видів розчинних циліндричних сіток для різних наповнювачів і пір року. Комплект складають туба з ПВА матеріалом і плунжер, поміщені в прозорий герметичний футляр. Надалі виробник пропонує купувати тільки сітку на бобіні. Детальніше на ibis.net.ua https://ibis.net.ua/ua/products/details/pva-sistema-fox-international-edges-fast-melt-pva-stix-14mm-7m/',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/CPV082_mid.jpg',
    type: ThingType.tackle,
  ),
  Thing(
    name: 'Лента PVA Fox Fox Edges Fast Melt 5mm x 40m',
    price: 111,
    id: '31',
    description: 'ПВА система Fox International Edges Pva Mesh System – кілька видів розчинних циліндричних сіток для різних наповнювачів і пір року. Комплект складають туба з ПВА матеріалом і плунжер, поміщені в прозорий герметичний футляр. Надалі виробник пропонує купувати тільки сітку на бобіні. Детальніше на ibis.net.ua https://ibis.net.ua/ua/products/details/pva-sistema-fox-international-edges-fast-melt-pva-stix-14mm-7m/',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/CPV082_mid.jpg',
    type: ThingType.tackle,
  ),
  Thing(
    name: 'Лента PVA Fox Fox Edges Fast Melt 5mm x 40m',
    price: 111,
    id: '31',
    description: 'ПВА система Fox International Edges Pva Mesh System – кілька видів розчинних циліндричних сіток для різних наповнювачів і пір року. Комплект складають туба з ПВА матеріалом і плунжер, поміщені в прозорий герметичний футляр. Надалі виробник пропонує купувати тільки сітку на бобіні. Детальніше на ibis.net.ua https://ibis.net.ua/ua/products/details/pva-sistema-fox-international-edges-fast-melt-pva-stix-14mm-7m/',
    imageUrl: 'https://carpzander.com.ua/published/publicdata/STORE/attachments/SC/products_pictures/CPV082_mid.jpg',
    type: ThingType.tackle,
  ),
];