class Electricity (val usage: Int, private val ratePolicy: RatePolicy) {

    fun calculateFee(): Double {
        return ratePolicy.calculateFee(this)
    }

    companion object {
        const val MINIMUM_USAGE = 1
        const val LOW_USAGE = 200
        const val HIGH_USAGE = 400
    }

}