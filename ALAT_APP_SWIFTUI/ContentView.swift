//
//  ContentView.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 25/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var acctStatus : String = "Activee"
    @State var acctType : String = "CreditCard"
    var body: some View {
        ScrollView {
            VStack{
                HStack(alignment: .center){
                    Image("Ellipse 2-1").resizable().frame(width: 50.0, height: 50.0, alignment: .leading)
                    Text("Hi, Nasir").foregroundColor(.black)
                    Spacer()
                    ZStack{
                        Image("NotificationBell").resizable().frame(width: 25, height: 35, alignment: .trailing)
                        Text("50")
                            .background(.red)
                            .cornerRadius(9.0)
                            .padding()
                            .foregroundColor(.white)
                            .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xSmall/*@END_MENU_TOKEN@*/)
                            .offset(x: 5, y: -10)
                        
                    }
                }
                HStack(alignment: .center){
                    Text("Account(s)")
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image("BackArrow").resizable()
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/).aspectRatio(contentMode: .fit).frame(width: 30.0)
                    Text("Swipe").foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                }
                VStack {
                    Image("card_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(
                    DashboardCard(acctStatus: acctStatus, acctType: acctType)
                        .background(.clear).clipShape(RoundedRectangle(cornerRadius: 15))
                )
                
                
                HStack{
                    Text("My Favourites").foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Edit Favourites").foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                        .font(.footnote).underline()
                }.padding(.vertical)
                
                HStack{
                    VStack{
                        Image("SendMoneyIcon")
                            .padding(.bottom, 5.0)
                        Text("Send Money").font(.footnote).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                    }.padding(.horizontal)
                    VStack{
                        Image("AirtimeDataIcon")
                            .padding(.bottom, 5.0)
                        Text("Airtime & Data").font(.footnote).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                    }.padding(.horizontal)
                    VStack{
                        Image("BillsPaymentIcon")
                            .padding(.bottom, 5.0)
                        Text("Bills Payment").font(.footnote).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                    }.padding(.horizontal)
                }
                
                HStack{
                    VStack(alignment: .leading, spacing: 20.0){
                        Text("Lifestyle").foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                        
                        ZStack{
                            Image("LifestyleImg").resizable().aspectRatio(contentMode: .fit)
                            Text("Movie, Event and Travel Tickets")
                                .font(.footnote)
                                .padding(.leading, 8.0)
                                .padding(.vertical, 5.0)
                                .padding(.trailing, 15)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .offset(x: -8, y: 30)
                            
                        }
                        
                    }
                    VStack(alignment: .leading, spacing: 20.0){
                        Text("Deals & Discount").foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                        
                        ZStack{
                            Image("DealsDiscountsImg").resizable().aspectRatio(contentMode: .fit)
                            Text("Deals and Discounts around you")
                                .font(.footnote)
                                .padding(.leading, 8.0)
                                .padding(.vertical, 5.0)
                                .padding(.trailing, 15.0)
                                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.white)
                                .offset(x: 0, y: 30)
                            
                        }
                        
                    }
                }
                .padding(.vertical)
                
                VStack(alignment: .leading, spacing: 20.0){
                    Text("Updates")
                    VStack{
                        Image("UpdatesImg")
                        VStack(alignment: .leading) {
                            Text("Stay Connected!")
                                .padding(.vertical)
                                .font(.title2)
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                            Text("Stay safe and connected to your favourite shows on showmax with this special discount ffer for six months.")
                        }.padding()
                        
                    }
                }
                
                //.shadow(radius: 5.0)
                
                
                Spacer()
            }.padding(.horizontal, 100)
            
        }
        
    }
    
}



struct DashboardCard : View{
    
    var acctStatus : String
    var acctType : String
    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading){
                    Text("Balance").font(.caption)
                    Text("Display Balance").underline()
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("status").font(.caption)
                    //Text($acctStatus)
                    Text(acctStatus)
                }
            }.padding()
            
            HStack{
                VStack(alignment: .leading){
                    Text("Account Number").font(.caption)
                    HStack{
                        Text("1234567890")
                        Image("CopyIcon").resizable().frame(width: 20, height: 20, alignment: .trailing)
                    }
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Type").font(.caption)
                    //Text($acctType)
                    Text(acctType)
                }
            }
            .padding(.horizontal)
            
            
            HStack{
                VStack(alignment: .leading){
                    Button("Fund Account"){
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    .lineLimit(1).minimumScaleFactor(0.7)
                    
                }
                Spacer()
                VStack(alignment: .trailing){
                    Button("Transaction History"){
                        
                    }.padding(.all, 10.0)
                        .frame(width: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                        .background(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                        .cornerRadius(10.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        .lineLimit(1).minimumScaleFactor(0.7)
                }
            }.padding([.leading, .bottom, .trailing])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(acctStatus: "active", acctType: "credit card")
    }
}



