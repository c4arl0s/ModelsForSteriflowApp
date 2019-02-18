# ModelsForSteriflowApp
Models For Steriflow App

```
import Foundation
import UIKit

class Product {
    var mark: Mark
    var description: String { get { return mark.description } }
    var image: UIImage! { return UIImage(named: mark.imageToLoad) }
    var model: String?
    var clasification: String { get { return mark.clasification.rawValue }}
    init(mark: Mark, model: String?) {
        self.mark = mark
        self.model = model
    }
    
    enum Clasification: String, CaseIterable {
        case sanitaryControlValve = "Sanitary Control Valve"
        case sanitaryRegulator = "Sanitary Regulator"
        case ballValves = "Ball Valves"
        case checkValves = "Check Valves"
        case cleanSteamTrapsAndSIPAccesories = "Clean Steam Traps and SIP Accesories"
        case bioreactor = "Bioreactor"
        case sampleCoolersSampleValvesAndAccesories = "Sample Coolers, Sample Valves & Accessories"
        case cleanGasDistributionManifold = "Clean Gas Distribution Manifold"
    }
    static var clasifications = Clasification.allCases.map { "\($0.rawValue)" }
    
    enum Mark: CaseIterable {
        case mk978Inline
        case mk978JD
        case mk978LF
        case mk978LFJD
        case mk978OR
        case jshm
        case mk15
        case mk16IQ
        
        var nomenclature: String {
            switch self {
            case .mk978Inline: return "MK978INLINE"
            case .mk978JD: return "MK978JD"
            case .mk978LF: return "MK978LF"
            case .mk978LFJD: return "MK978LF-JD"
            case .mk978OR: return "MK978OR"
            case .jshm: return "JSHM"
            case .mk15: return "MK15"
            case .mk16IQ: return "MK16IQ"
            }
        }
        
        
        var description: String {
            switch self {
            case .mk978Inline: return "The Mark 978LF sanitary low flow control valve is designed to meet the stringent specifications for low flow sterile processes."
            case .mk978JD: return "fullfil"
            case .mk978LF: return "dasd"
            case .mk978LFJD: return "jdsakdjka"
            case .mk978OR: return "The mark 978 OR"
            case .jshm: return "The JSHM Series allows precision manual adjustment of pharmaceutical liquid and gas flows. "
            case .mk15: return "Top Mounted Pneumatic Valve Positioners"
            case .mk16IQ: return "The Mark 16IQ is the \"Smart\" side mounted positioner of choice for Steriflow Mark 978 Control Valve models 978SP and Mark 978 INLINE model NSP."
            }
        }
        var clasification: Clasification {
            switch self {
            case .mk978Inline: return Clasification.sanitaryControlValve
            case .mk978JD: return Clasification.sanitaryControlValve
            case .mk978LF: return Clasification.sanitaryControlValve
            case .mk978LFJD: return Clasification.sanitaryControlValve
            case .mk978OR: return Clasification.sanitaryControlValve
            case .jshm: return Clasification.sanitaryControlValve
            case .mk15: return Clasification.sanitaryControlValve
            case .mk16IQ: return Clasification.sanitaryControlValve
            }
        }
        var imageToLoad: String {
            switch self {
            case .mk978Inline: return "inline_sanitary_control_valve-1.jpg"
            case .mk978JD: return "sanitary_control_valve_mk978jd-1.jpg"
            case .mk978LF: return "sanitary_lowflow_control_valve_mk978LF-1.jpg"
            case .mk978LFJD: return "sanitary_lowflow_control_valve_mk978LFJD-1.jpg"
            case .mk978OR: return "sanitary_lowflow_control_valve_mk978OR-1.jpg"
            case .jshm: return "hand_metering_valve_JSHM-1.jpg"
            case .mk15: return "smart_positioners_MK15-1.jpg"
            case .mk16IQ: return "positioners_for_control_valves_MK16IQ-1.jpg"
            }
        }
    }
    static var marks = Mark.allCases.map { "\($0.nomenclature)" }
}

```
