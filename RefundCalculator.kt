class RefundCalculator(
    var cancellationFee: Double
) {

    fun setCancellationFee(fee: Double) {
        this.cancellationFee = fee
    }

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
        val refundAmount = orderItem.calculatePrice() - cancellationFee
        return if(refundAmount > 0) refundAmount else 0.0
    }

}
