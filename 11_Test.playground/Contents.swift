import UIKit

//var str = "Hello, playground"
class HospitalPatient{
    var inHospital = true {
        willSet {
        }
        didSet {
            if inHospital == false {
                tablets = 0
                sport = true
                storyAboutHospital = " This is very nice Hospital. "
                print("\(storyAboutHospital)")
        } else {
            tablets = 5
            sport = false
            storyAboutHospital = ""
                    }
    }
    }
    var tablets = 5
    var sport = false
    var storyAboutHospital = ""
}
let patient = HospitalPatient()

patient.inHospital
patient.sport
patient.tablets
patient.storyAboutHospital

patient.inHospital = false

patient.inHospital
patient.sport
patient.tablets
patient.storyAboutHospital
