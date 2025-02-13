class Product(
    private val uid: String,
    private var name: String,
    var price: Double,
    private var description: String,
    private var imageURL: String,
    var cancelPolicies: List<SellerCancelPolicy>,
) {

    fun setProduct(name: String, price: Double, description: String, image: String, cancelPolicies: List<SellerCancelPolicy>) {
        this.name = name
        this.price = price
        this.description = description
        this.imageURL = image
        this.cancelPolicies = cancelPolicies
    }

    fun canCancel(): Boolean {
        return cancelPolicies.any {
            it.isCancelEnable()
        }
    }

    fun getPrice(): Double {
        return price
    }

}