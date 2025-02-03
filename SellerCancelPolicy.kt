enum class SellerType(val type: Int){
    CancelEnable(1),
    CancelDisable(2);
}

class SellerCancelPolicy(
    var type: Int
): CancelPolicy {

    fun setCancelPolicy(type: Int){
        this.type = type
    }

    override fun isCancelEnable(): Boolean {
        return if(type == SellerType.CancelDisable.type) false
        else true
    }
}