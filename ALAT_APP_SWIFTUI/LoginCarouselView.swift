//
//  LoginCarouselView.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 02/04/2023.
//

import SwiftUI

struct LoginCarouselView: View {
    @Binding var carouselItem : String
    let imgs : [String]
    
    var body: some View {
        TabView(selection: $carouselItem){
            ForEach(imgs, id: \.self){str in
                Image(str)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .tag(str)
            }
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(width: 200, height: 200)
        
        HStack(spacing: 5){
            ForEach(imgs, id: \.self){str in
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(carouselItem == str ? .red : .gray)
                
            }
        }.padding(.top, -5)
    }
}

//struct LoginCarouselView_Previews: PreviewProvider {
//    let imgs = ["login-carousel-img1", "LifestyleImg", "UpdatesImg"]
//    static var previews: some View {
//        LoginCarouselView(imgs: <#[String]#>)
//    }
//}
