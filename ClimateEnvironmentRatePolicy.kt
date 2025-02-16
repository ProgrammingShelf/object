class ClimateEnvironmentRatePolicy: RatePolicy {
    override fun calculateFee(electricity: Electricity): Double {
        return electricity.usage * ENVIRONMENT_FEE
    }

    companion object {
        private const val ENVIRONMENT_FEE = 9.0
    }
}