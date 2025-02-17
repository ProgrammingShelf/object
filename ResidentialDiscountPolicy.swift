class ResidentialDiscountPolicy: AdditionalRatePolicy {
    private var rateLimit: Double
    
    init(rateLimit: Double = 8000, previous: RatePolicy) {
        self.rateLimit = rateLimit
        
        super.init(previous: previous)
    }
    
    override func afterCalculation(_ fee: Double, using usage: Double) -> Double {
        if fee > rateLimit {
            return fee - rateLimit
        }
        
        return 0
    }
}
