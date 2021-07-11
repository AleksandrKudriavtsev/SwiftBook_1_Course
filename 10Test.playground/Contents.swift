import UIKit

class WorkBook {
    let maxPages = 12
    var text: Int
    var wordsOnPage: Int
    var pages: (Int, Int) {
       return (text / wordsOnPage, (text % wordsOnPage))
    }
    init(text: Int, wordsOnPage: Int) {
        self.text = text
        self.wordsOnPage = wordsOnPage
    }
//    init(page0: Int, page1: Int) {
//        self.page0 = pages.0
//        self.page1 = pages.1
//    }
//
//    var pages0 = pages.0
//    var pages1 = pages.1


//
//
    var calcWorkBookQuantity: Int {
        let alltxt = text % wordsOnPage
        var alltxt1 = text / wordsOnPage
        var alltxt2 = alltxt1 / maxPages
        if alltxt != 0 {
            alltxt1 += 1
        }
        if alltxt2 != 0 {
            alltxt2 += 1
        }
        return alltxt2
    }
    
    func noneZeroFunc() -> String {
        return "None Zero Function"
    }
    lazy var noneZero = noneZeroFunc()
}

let workBook1 = WorkBook(text: 900, wordsOnPage: 18)

workBook1.pages
workBook1.pages.1
workBook1.pages.0
workBook1.calcWorkBookQuantity
workBook1.noneZero
workBook1
