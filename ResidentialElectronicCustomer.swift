class ResidentialElectronicCustomer: ElectronicCustomer {
    internal var tierList: [RateTier] {
        return [
            .init(fixedRate: 910, usageRate: 120, minLimit: 0, maxLimit: 200),
            .init(fixedRate: 1600, usageRate: 214.6, minLimit: 200, maxLimit: 400),
            .init(fixedRate: 7300, usageRate: 307.3, minLimit: 400, maxLimit: .greatestFiniteMagnitude),
        ]
    }
}
