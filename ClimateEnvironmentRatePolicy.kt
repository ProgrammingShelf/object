class ClimateEnvironmentRatePolicy(private val environmentFee: Double): RatePolicy {
    override fun calculateFee(electricity: Electricity): Double {
        return electricity.usage * environmentFee
    }
}