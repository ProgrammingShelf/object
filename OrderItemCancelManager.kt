class OrderItemCancelManager {

    fun cancelOrder(orderItem: OrderItem) {
        if(orderItem.canCancel()) orderItem.status = OrderStatus.Canceled.type
    }

}