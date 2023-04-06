//
//  LoginView.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 02/04/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State private var timer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State private var carouselItem = "login-carousel-img1"
    let imgs = ["login-carousel-img1", "LifestyleImg", "UpdatesImg"]
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack(alignment: .center){
                    
                    Image("login-alat-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 47, height: 50)
                        .padding(.top, -30)
                        .padding(.bottom, 20)
                    Text("Your first ATM Card is on us!")
                        .font(.title2)
                    
                    Spacer()
                    
                    LoginCarouselView(carouselItem: $carouselItem, imgs: imgs)
                        .padding(.bottom, 10)
                    
                    NavigationLink{
                        EmptyView()
                    } label: {
                        Text("Log In")
                            .padding(.vertical, 15)
                            .frame(minWidth: 300, maxWidth: 400, maxHeight: 60)
                            .btnWhiteWine()
                    }.padding(.vertical, 5)
                    
                    
                    NavigationLink{
                        WelcomeView()
                    } label: {
                        Text("Get Started")
                            .padding(.vertical, 15)
                            .frame(minWidth: 300, maxWidth: 400, maxHeight: 60)
                            .btnWine()
                        
                    }.padding(.vertical, 5)
                    
                    
                    Spacer()
                    
                    HStack(alignment: .top,spacing: 20){
                        Spacer()
                        VStack{
                            Image("login-getAWallet-img")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 90, maxHeight: 90)
                            
                            Text("Get a loan")
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        VStack{
                            Image("login-quickLinks-img")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 90, maxHeight: 90)
                            
                            Text("Quick Links")
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        VStack{
                            Image("login-getAWallet-img")
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: 90, maxHeight: 90)
                            
                            Text("Get a Wallet")
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        Spacer()
                    }
                    .padding(.top, 50)
                    
                    
                }
                .padding()
                .onReceive(timer){time in
                    for i in imgs.indices{
                        if carouselItem == imgs[i]{
                            if i == imgs.count - 1{
                                withAnimation{
                                    carouselItem = imgs[0]
                                }
                                break
                            }else{
                                withAnimation{
                                    carouselItem = imgs[i + 1]
                                }
                                break
                            }
                        }
                    }
                }
                
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
