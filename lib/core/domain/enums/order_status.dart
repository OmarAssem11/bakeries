enum OrderStatus {
  pending('pending'),
  preparing('preparing'),
  outForDelivery('outForDelivery'),
  delivered('delivered'),
  cancelled('cancelled');

  final String text;
  const OrderStatus(this.text);
}
