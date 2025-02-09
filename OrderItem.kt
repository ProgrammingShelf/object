class OrderItem(
    private val uid: String,
    private var product: Product,
    private var status: OrderStatus,
    private var quantity: Int,
) {


    fun setOrderItem(product: Product, status: OrderStatus, quantity: Int) {
        this.product = product
        this.status = status
        this.quantity = quantity
    }

    fun calculatePrice(): Double {
        return product.getPrice() * quantity
    }

    fun canCancel(): Boolean {
        return product.canCancel()
    }

    fun setStatus(status: OrderStatus) {
        this.status = status
    }

//    fun caculateReturnPrice() : Double {
//        return if(product.canCancel()) caculatePrice() else 0.0
//    }

}
