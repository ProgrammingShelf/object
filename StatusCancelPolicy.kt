
class StatusCancelPolicy (
    var type: Int
): CancelPolicy {

    fun setCancelPolicy(type: Int){
        this.type = type
    }

    override fun isCancelEnable(): Boolean {
        return if(type == OrderStatus.Preparing.type) false
        else true
    }

}