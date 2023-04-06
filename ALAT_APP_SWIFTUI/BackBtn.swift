//
//  BackBtn.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 03/04/2023.
//

import SwiftUI

struct BackBtn: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button{
            self.presentationMode.wrappedValue.dismiss()
        }label: {
            Image("back-btn")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 20)
                .foregroundColor(.black)
                
        }
    }
}

struct BackBtn_Previews: PreviewProvider {
    static var previews: some View {
        BackBtn()
    }
}
