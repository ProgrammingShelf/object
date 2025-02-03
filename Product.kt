class Product(
    private val uid: String,
    private var name: String,
    var price: Double,
    private var description: String,
    private var imageURL: String,
    var cancelPolicy: CancelPolicy,
) {

    fun setProduct(name: String, price: Double, description: String, image: String, cancelPolicy: CancelPolicy) {
        this.name = name
        this.price = price
        this.description = description
        this.imageURL = image
        this.cancelPolicy = cancelPolicy
    }

    fun canCancel(): Boolean {
        return cancelPolicy.isCancelEnable()
    }

    fun getPrice(): Double {
        return price
    }

}