//
//  extensions.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 03/04/2023.
//

import Foundation
import SwiftUI

struct BtnWine : ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(Color(hex: "#A90836") ?? .red)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}

extension View {
    func btnWine() -> some View{
        modifier(BtnWine())
    }
    
    func btnWhiteWine () -> some View{
        modifier(BtnWhiteWine())
    }
}

struct BtnWhiteWine : ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(hex: "#A90836") ?? .red)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(hex: "#A90836") ?? .red, lineWidth: 1))
    }
}
