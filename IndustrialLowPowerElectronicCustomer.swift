class IndustrialLowPowerElectronicCustomer: ElectronicCustomer {
    internal var tierList: [RateTier] {
        return [
            .init(fixedRate: 5500, usageRate: 116.2, minLimit: 0, maxLimit: .greatestFiniteMagnitude)
        ]
    }
}
