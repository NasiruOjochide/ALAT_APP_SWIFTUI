//
//  MainView.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 02/12/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Home", systemImage: "house")
            }
            
            PaymentsTab().tabItem{
                Label("Payments", image: "PaymentsIcon")
            }
            
            Loans().tabItem{
                Label("Loans", image: "LoansIcon")
            }
            
            Cards().tabItem{
                Label("Cards", image: "CardsIcon")
            }
            
            Goals().tabItem{
                Label("Goals", image: "GoalsIcon")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
