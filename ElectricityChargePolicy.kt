class ElectricityChargePolicy: RatePolicy {

    override fun calculateFee(electricity: Electricity): Double {
        val result = if(electricity.usage < Electricity.MINIMUM_USAGE) {
            0.0
        } else if(electricity.usage in (Electricity.MINIMUM_USAGE + 1)..<Electricity.LOW_USAGE) {
            electricity.usage * MINIMUM_RATE_FEE
        } else if(electricity.usage in (Electricity.LOW_USAGE + 1)..<Electricity.HIGH_USAGE) {
            (Electricity.LOW_USAGE * MINIMUM_RATE_FEE) + ((electricity.usage - Electricity.MINIMUM_USAGE) * LOW_RATE_FEE)
        } else {
            (Electricity.LOW_USAGE * MINIMUM_RATE_FEE) + (Electricity.LOW_USAGE * LOW_RATE_FEE) + ((electricity.usage - Electricity.HIGH_USAGE) * HIGH_RATE_FEE)
        }
        return result
    }

    companion object {
        private const val MINIMUM_RATE_FEE = 115.0
        private const val LOW_RATE_FEE = 206.6
        private const val HIGH_RATE_FEE = 307.3
    }

}