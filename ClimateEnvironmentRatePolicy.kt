class ClimateEnvironmentRatePolicy: BasicRatePolicy() {
    override fun calculateElectricityChargePolicy(electricity: Electricity): Double {
        return electricity.usage * ENVIRONMENT_FEE
    }

    companion object {
        private const val ENVIRONMENT_FEE = 9.0
    }
}