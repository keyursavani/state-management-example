class Cart{

  late final int? id;
  late final String? productid;
  late final String? productname  ;
  late final int? initialprice;
  late final int? produtidprice;
  late final int? quantity;
  late final String? unittag;
  late final String? image;

  Cart({
    required this.id,
    required this.productid,
    required this.productname,
    required this.initialprice,
    required this.produtidprice,
    required this.quantity,
    required this.unittag,
    required this.image

  });

  Cart.fromMap(Map<dynamic , dynamic>  res)
        : id = res['id'],
        productid = res['productid'],
        productname = res['productname'],
        initialprice = res['initialprice'],
        produtidprice = res['produtidprice'],
        quantity = res['quantity'],
        unittag = res['unittag'],
        image = res['image'];

  Map<String, Object?> toMap(){
    return {
      'id' : id,
      'productid' : productid,
      'productname' : productname,
      'initialprice' : initialprice,
      'produtidprice' : produtidprice,
      'quantity' : quantity,
      'unittag' : unittag,
      'image' : image,
    };
  }
}