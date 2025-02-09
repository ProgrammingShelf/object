class RefundCalculator() {

    fun calculateRefund(order: Order): Double {
        var totalRefund = 0.0
        for (item in order.getItems()) {
            if (item.canCancel()) {
                totalRefund += calculateRefundForItem(item);
            }
        }
        return totalRefund
    }

    fun calculateRefundForItem(orderItem: OrderItem): Double {
        val cancellationFee = 5.0
        val refundAmount = item.calculatePrice() - cancellationFee;
        return if(refundAmount > 0) refundAmount else 0
    }

}
