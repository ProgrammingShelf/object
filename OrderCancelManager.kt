class OrderCancelManager {

    fun cancelOrder(order: Order) {
        cancelOrderItem(order.orderItemList)
    }

    fun cancelOrderItem(orderItemList: List<OrderItem>) {
        for(orderItem in orderItemList) {
            if(orderItem.canCancel()) {
                orderItem.setStatus(OrderStatus.Canceled)
            }
        }
    }

}