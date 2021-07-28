import 'package:fashion_app/src/data/model/inventory.dart';
import 'package:fashion_app/src/data/model/product.dart';

class ProductService {
  List<Product> listProduct = [
    Product(
        id: "1",
        title: "Áo thời trang",
        description: "Đẹp",
        price: 200.000,
        amountProduct: 10,
        createAt: "10/10/2021",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Danh mục",
        inventory: [
          Inventory(
            id: "1",
            color: "Vàng",
            size: "M",
            stockQuantity: 10,
          ),
          Inventory(
            id: "2",
            color: "Trắng",
            size: "S",
            stockQuantity: 2,
          ),
          Inventory(
            id: "4",
            color: "Đen",
            size: "S",
            stockQuantity: 1,
          ),
          Inventory(
            id: "5",
            color: "Đỏ",
            size: "XL",
            stockQuantity: 5,
          ),
        ]),
    Product(
        id: "2",
        title: "Áo thời trang 1",
        description: "Đẹp 1",
        price: 350.000,
        amountProduct: 2,
        createAt: "21/2/2020",
        isLike: false,
        urlImage: [
          'https://vcdn1-giaitri.vnecdn.net/2015/04/23/1-4854-1429761605.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=Bp8MxcmkYfVaR4Hvlg9qAg'
        ],
        category: "Danh mục1",
        inventory: [
          Inventory(
            id: "8",
            color: "Xanh",
            size: "M",
            stockQuantity: 10,
          ),
          Inventory(
            id: "9",
            color: "Tím",
            size: "XL",
            stockQuantity: 2,
          ),
        ]),
    Product(
        id: "3",
        title: "Áo thời trang 2",
        description: "Đẹp 2",
        price: 200.000,
        amountProduct: 2,
        createAt: "10/10/2012",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Danh mụ 2c"),
    Product(
        id: "4",
        title: "Áo thời trang 3",
        description: "Đẹp 3",
        price: 210.000,
        amountProduct: 10,
        createAt: "10/10/2029",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Danh mục 3"),
    Product(
        id: "5",
        title: "Áo thời trang 4",
        description: "Đẹp 4",
        price: 500.000,
        amountProduct: 10,
        createAt: "10/10/2014",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Danh mục"),
    Product(
        id: "6",
        title: "Áo thời trang 5",
        description: "Đẹp 5 ",
        price: 150.000,
        amountProduct: 2,
        createAt: "10/10/2011",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Danh mục 5"),
    Product(
        id: "7",
        title: "Áo thời trang 6 ",
        description: "Đẹp 6 ",
        price: 520.000,
        amountProduct: 10,
        createAt: "24/02/2012",
        isLike: false,
        urlImage: [
          'https://cafefcdn.com/thumb_w/650/2019/6/4/5069g-3x2-forever-in-florals-768x512-1559636365541203324963-crop-15596363709051973797845.jpg'
        ],
        category: "Danh mục 6"),
  ];

  Future<List<Product>> getListProduct() async {
    return listProduct;
  }

// Future likeProduct(int isLike) async {
//   if (isLike == 0) {
//     isLike = 1;
//
//   }
// }
}
