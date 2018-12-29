//
//  Product.swift
//  ModelsForSteriflowApp
//
//  Created by Carlos Santiago Cruz on 12/28/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation
import UIKit

class Product {
    var name: Mark
    var description: String {
        get {
            return name.description
        }
    }
    var image: UIImage?
    var model: String?
    var clasification: String {
        get {
            return name.clasification.rawValue
            
        }
        
    }
    init(name: Mark, image: UIImage?, model: String?) {
        self.name = name
        self.image = image
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
    
    enum Mark {
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
        
    }
    




}


