enum class PaymentType(val type: Int){
    Credit(1),
    Cash(2),
    Point(3);
}

class PaymentCancelPolicy (
    var paymentType: PaymentType
): CancelPolicy {

    override fun isCancelEnable(): Boolean {
        return if(paymentType == PaymentType.Point) false
        else true
    }

}