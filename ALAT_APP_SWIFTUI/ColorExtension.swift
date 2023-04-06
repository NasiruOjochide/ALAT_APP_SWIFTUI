//
//  ColorExtension.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 03/04/2023.
//

import Foundation
import SwiftUI

extension Color{
    init?(hex: String){
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb : UInt64 = 0
        
        var r : CGFloat = 0
        var g : CGFloat = 0
        var b : CGFloat = 0
        var a : CGFloat = 1
        
        let lenght = hexSanitized.count
        
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else {return nil}
        
        if lenght == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16 ) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8 ) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0
        }else if lenght == 8{
            r = CGFloat((rgb & 0xFF000000) >> 24 ) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16 ) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8 ) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0
        }else{
            return nil
        }
        
        self.init(red: r, green: b, blue: b, opacity: a)
    }
    
    static let alatWine = Color("alat-wine")
}
