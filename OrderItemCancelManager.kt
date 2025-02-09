class OrderItemCancelManager {

    fun cancelOrder(order: Order) {
        for(orderItem in order.orderItemList) {
            if(orderItem.canCancel()) {
                orderItem.setStatus(OrderStatus.Canceled)
            }
        }
    }

}