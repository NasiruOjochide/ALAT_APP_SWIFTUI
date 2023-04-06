//
//  WelcomeView.swift
//  ALAT_APP_SWIFTUI
//
//  Created by Danjuma Nasiru on 03/04/2023.
//

import SwiftUI



struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()
            print(configuration.isOn)

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square").foregroundColor(Color(hex: "#A90836") ?? .red)

                configuration.label
            }
        })
    }
}




struct WelcomeView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
    @State private var read = false
    
    var body: some View {
        ScrollView{
        VStack{
            HStack{
                Text("Welcome!")
                    .font(.title.bold())
                Image("agreement-1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
            }
            Text("What You'll Get with Alat")
            
            HStack(spacing: 40){
                Spacer()
                VStack{
                    Image("onboarding-savingsAcct-img")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
                    
                    Text("A Savings Account")
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true)
                }
                VStack{
                    Image("onboarding-debitCard-img")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
                    
                    Text("A Free Debit Card")
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true)
                }
                VStack{
                    Image("onboarding-deals-img")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
                    
                    Text("Deals and Discount")
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
            }.padding(.vertical, 20)
            
            Text("What We'll Require ✅")
                .padding()
                .font(.body.bold())
            
            HStack(spacing:40){
                Spacer()
                VStack{
                    Image("onboarding-savingsAcct-img")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
                        .padding(.bottom)
                    
                    Text("BVN")
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true)
                }
                VStack{
                    Image("onboarding-debitCard-img")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
                        .padding(.bottom)
                    
                    Text("Photo of your Face")
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true)
                }
                VStack{
                    Image("onboarding-deals-img")
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 50, maxWidth: 80, minHeight: 50, maxHeight: 80)
                        .padding(.bottom)
                    
                    Text("Photo of your Signature")
                        .font(.caption)
                        .fixedSize(horizontal: false, vertical: true)
                }
                Spacer()
            }.padding(.vertical, 20)
            
            HStack(alignment: .firstTextBaseline){
                Toggle(isOn: $read){
                    
                }.toggleStyle(iOSCheckboxToggleStyle())
                
                Text("I agree to the ") + Text("terms and conditions").foregroundColor(Color(hex: "#A90836")) + Text(" and ") + Text("privacy policy").foregroundColor(Color(hex: "#A90836") ?? .red)
            }
            
            Text("Proceed")
                .padding(.vertical, 15)
                .frame(minWidth: 300, maxWidth: 400, maxHeight: 60)
                .btnWine()
                
            
            Text("*New ALAT customers only")
                .foregroundColor(Color.alatWine)
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackBtn())
        }.gesture(DragGesture().updating($dragOffset){(value, state, transaction) in
            if value.startLocation.x < 20 && value.translation.width > 100 {
                self.presentationMode.wrappedValue.dismiss()
            }
        })
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
