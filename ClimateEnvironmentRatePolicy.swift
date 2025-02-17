class ClimateEnvironmentRatePolicy: AdditionalRatePolicy {
    private let ratePerKwh: Double
    
    init(ratePerKwh: Double = 9, previous: RatePolicy) {
        self.ratePerKwh = ratePerKwh
        
        super.init(previous: previous)
    }

    override func afterCalculation(_ fee: Double, using usage: Double) -> Double {
        return fee + (usage * ratePerKwh)
    }
}
