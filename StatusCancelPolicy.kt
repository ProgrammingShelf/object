
class StatusCancelPolicy (
    var orderStatus: OrderStatus
): CancelPolicy {

    fun setCancelPolicy(orderStatus: OrderStatus){
        this.orderStatus = orderStatus
    }

    override fun isCancelEnable(): Boolean {
        return if(orderStatus == OrderStatus.Preparing) false
        else true
    }

}