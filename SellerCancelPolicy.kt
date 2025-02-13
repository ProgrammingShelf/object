enum class SellerType(val type: Int){
    CancelEnable(1),
    CancelDisable(2);
}

class SellerCancelPolicy(
    var sellerType: SellerType
): CancelPolicy {

    fun setCancelPolicy(sellerType: SellerType){
        this.sellerType = sellerType
    }

    override fun isCancelEnable(): Boolean {
        return if(sellerType == SellerType.CancelDisable) false
        else true
    }
}