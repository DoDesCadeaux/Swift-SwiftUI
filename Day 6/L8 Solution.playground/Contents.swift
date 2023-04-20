
struct Car {
    
    private var make = "Toyota"
    private var model = "Camry"
    private var year = "1999"
    private var details:String {
        year + " " + make + " " + model
    }
    
    func getDetails() -> String {
        return details
    }
}
