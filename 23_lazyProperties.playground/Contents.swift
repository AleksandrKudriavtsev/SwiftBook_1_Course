import UIKit

func bigDataProcessingFunc() -> String {
    return "Very long process"
}

class Processing {
    let smallDataProcessing = "Small data processing"
    let averageDataProcessing = "Average data processinng"
    lazy var bigDataProcessing = bigDataProcessingFunc()
}

let process = Processing()
process.bigDataProcessing
process

