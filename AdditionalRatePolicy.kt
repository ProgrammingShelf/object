abstract class AdditionalRatePolicy(private val ratePolicies: List<RatePolicy>) : RatePolicy {
    override fun calculateFee(electricity: Electricity): Double {
        val fee = ratePolicies.sumOf { it.calculateFee(electricity) }
        return afterCalculated(fee)
    }

    abstract protected fun afterCalculated(fee: Double): Double
}