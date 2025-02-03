class OrderItem(
    private val uid: String,
    private var product: Product,
    private var status: Int,
    private var quantity: Int,
) {

    private val cancelManager = OrderItemCancelManager()

    fun setOrderItem(product: Product, status: Int, quantity: Int) {
        this.product = product
        this.status = status
        this.quantity = quantity
    }

    fun cancel() {
        cancelManager.cancelOrder(this)
    }

    fun calculatePrice(): Double {
        return product.getPrice() * quantity
    }

    fun canCancel(): Boolean {
        return product.canCancel()
    }

//    fun caculateReturnPrice() : Double {
//        return if(product.canCancel()) caculatePrice() else 0.0
//    }

}
