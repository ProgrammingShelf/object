enum class PaymentType(val type: Int){
    Credit(1),
    Cash(2),
    Point(3);
}

class PaymentCancelPolicy (
    var type: Int
): CancelPolicy {

    fun setCancelPolicy(type: Int){
        this.type = type
    }

    override fun isCancelEnable(): Boolean {
        return if(type == PaymentType.Point.type) false
        else true
    }

}