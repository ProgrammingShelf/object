interface RatePolicy {
    fun calculateFee(electricity: Electricity): Double
}