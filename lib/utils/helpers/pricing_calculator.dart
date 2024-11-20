class Pricingcalculator {
  static double calTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.1;
  }

  static double getShippingCost(String location) {
    return 5.0;
  }

  //static double calCartTotal(CartModel cart) {
  //  return cart.item.map((e) => e.price).fold(0, (previousPrice, currentPrice) =>
  //  previousPrice + currentPrice ?? 0);
  //}
}