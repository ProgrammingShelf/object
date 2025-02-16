class ValueAddedTaxPolicy(private val ratePolicies: List<RatePolicy>) : AdditionalRatePolicy(ratePolicies) {
    override fun afterCalculated(fee: Double): Double {
        return fee * VALUE_ADDED_TAX_RATE
    }

    companion object {
        const val VALUE_ADDED_TAX_RATE = 0.1
    }
}