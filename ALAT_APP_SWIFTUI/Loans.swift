//
//  Loans.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 02/12/2022.
//

import SwiftUI

struct Loans: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    VStack {
                        ZStack {
                            Image("BgLoans1")
                            Image("MoneyBagImg")
                        }
                    }
                    
                    
                    VStack(alignment: .leading){
                        Text("Pre-approved NYSC Loan Offer")
                            .padding(.bottom, 10.0)
                        Text("You are currently qualified for a NYSC loan of N42700")
                            .padding(.bottom)
                        HStack{
                            Text("Take this Loan")
                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294)/*@END_MENU_TOKEN@*/)
                                
                            Text("Dismiss")
                                .foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                        }
                    }.padding(.leading)
                    
                }
                .overlay(
                        RoundedRectangle(cornerRadius: 7)
                            .stroke(.red, lineWidth: 1)
                )
                
                
                List{
                    NavigationLink(destination: Goals()){
                        HStack{
                            Image("SalaryBasedLendingIcon")
                            VStack(alignment: .leading){
                                Text("Salary Based Lending").font(.title3).foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                                Text("Loan for salary earners").font(.caption)
                            }
                        }
                    }
                    .listRowBackground(
                                            RoundedRectangle(cornerRadius: 5)
                                                .background(.clear)
                                                .foregroundColor(.white)
                                                
                                                .padding(
                                                    EdgeInsets(
                                                        top: 2,
                                                        leading: 10,
                                                        bottom: 2,
                                                        trailing: 10
                                                    )
                                                )
                                        )
                    .padding(.vertical)
                    
                    
                    NavigationLink(destination: Goals()){
                        HStack{
                            Image("GoalBasedIcon")
                            VStack(alignment: .leading){
                                Text("Goal Based Loans").font(.title3).foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                                Text("Loan for everybody ").font(.caption)
                            }
                        }
                    }.listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                        .padding(.bottom)
                    
                    
                    NavigationLink(destination: Goals()){
                        HStack{
                            Image("SalaryBasedLendingIcon")
                            VStack(alignment: .leading){
                                Text("Device Loans").font(.title3).foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                                Text("Get a device and pay later").font(.caption)
                            }
                        }
                    }.listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                        .padding(.bottom)
                    
                    
                    NavigationLink(destination: Goals()){
                        HStack{
                            Image("SalaryBasedLendingIcon")
                            VStack(alignment: .leading){
                                Text("Pay Day Loans").font(.title3).foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                                Text("Get a loan for the month").font(.caption)
                            }
                        }
                    }.listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                        .padding(.bottom)
                    
                    
                    NavigationLink(destination: Goals()){
                        HStack{
                            Image("SalaryBasedLendingIcon")
                            VStack(alignment: .leading){
                                Text("SME Loans").font(.title3).foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                                Text("Get a loan for your business").font(.caption)
                            }
                        }
                    }.listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                        .padding(.bottom)
                    
                    
                    NavigationLink(destination: Goals()){
                        HStack{
                            Image("SalaryBasedLendingIcon")
                            VStack(alignment: .leading){
                                Text("NYSC Loans").font(.title3).foregroundColor(Color(red: 0.6627450980392157, green: 0.03137254901960784, blue: 0.21176470588235294))
                                Text("Loan for corp members").font(.caption)
                            }
                        }
                    }.listRowSeparator(.hidden)
                        .listRowBackground(Color.clear)
                        .padding(.bottom)
                }.background(Color.brown)
                    
                    
            
                Spacer()
            }
            .navigationTitle("Loans")
            .background(.green)
            .navigationBarHidden(false)
            .navigationBarBackButtonHidden(false)
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct Loans_Previews: PreviewProvider {
    static var previews: some View {
        Loans()
    }
}
