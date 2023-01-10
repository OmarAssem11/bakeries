enum OrderStatus {
  pending('pending'),
  preparing('preparing'),
  outForDelivery('outForDelivery'),
  delivered('delivered');

  final String text;
  const OrderStatus(this.text);
}
