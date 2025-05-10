import '../models/dummy_bundle_model.dart';
import '../models/dummy_product_model.dart';

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'Amala',
      weight: '1 kg',
      cover: 'https://i.imgur.com/My0nuXS.png',
      images: ['https://i.imgur.com/My0nuXS.png'],
      price: 5500,
      mainPrice: 6000,
    ),
    ProductModel(
      name: 'IjebuGarri',
      weight: '1 kg',
      cover: 'https://i.imgur.com/k01Rssq.jpeg',
      images: ['https://i.imgur.com/k01Rssq.jpeg'],
      price: 3500,
      mainPrice: 4000,
    ),
    ProductModel(
      name: 'PoundoYam',
      weight: '1 Kg',
      cover: 'https://i.imgur.com/GA1jQ7l.jpeg',
      images: ['https://i.imgur.com/GA1jQ7l.jpeg'],
      price: 5500,
      mainPrice: 6000,
    ),
    ProductModel(
      name: 'YellowGarri',
      weight: '1 Kg',
      cover: 'https://i.imgur.com/DF8bPeo.jpeg',
      images: ['https://i.imgur.com/DF8bPeo.jpeg'],
      price: 3800,
      mainPrice: 4000,
    ),
  ];

  /// List Of Dummy Bundles
  static List<BundleModel> bundles = [
    BundleModel(
      name: 'Shelf A Pack',
      cover: 'https://i.imgur.com/VkVIvKU.jpeg',
      itemNames: ['PoundoYam, YellowGarri, IjebuGarri'],
      price: 12800,
      mainPrice: 14500,
    ),
    BundleModel(
      name: 'Shelf B Pack',
      cover: 'https://i.imgur.com/y42vH85.jpeg',
      itemNames: ['Amala, PoundoYam, YellowGarri, IjebuGarri'],
      price: 18300,
      mainPrice: 22200,
    ),
    BundleModel(
      name: 'Shelf C Pack',
      cover: 'https://i.imgur.com/khFFkXf.jpeg',
      itemNames: ['Amala, YellowGarri, IjebuGarri'],
      price: 12800,
      mainPrice: 14000,
    ),
    BundleModel(
      name: 'Shelf D Pack',
      cover: 'https://i.imgur.com/trkEAQA.png',
      itemNames: ['Amala, YellowGarri, PoundoYam'],
      price: 14800,
      mainPrice: 16000,
    ),
  ];
}
