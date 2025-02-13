class Order(
    private val uid: String,
    private val userUID: String,
    var orderItemList: List<OrderItem>,
    var totalPrice: String,
) {

    fun setOrder(orderItemList: List<OrderItem>, totalPrice: String) {
        this.orderItemList = orderItemList
        this.totalPrice = totalPrice
    }

    fun getItems(): List<OrderItem> {
        return orderItemList
    }

}