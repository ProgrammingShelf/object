class BasicRatePolicy: RatePolicy {

    override fun calculateFee(electricity: Electricity): Double {
        val result = if(electricity.usage < Electricity.MINIMUM_USAGE) {
            0.0
        } else if(electricity.usage in (Electricity.MINIMUM_USAGE + 1)..<Electricity.LOW_USAGE) {
            910.0
        } else if(electricity.usage in (Electricity.LOW_USAGE + 1)..<Electricity.HIGH_USAGE) {
            1600.0
        } else {
            7300.0
        }
        return result
    }

}