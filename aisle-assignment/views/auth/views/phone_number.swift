//
//  phone_number.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import Foundation
import SwiftUI

struct MobileOtpHeading: View {
    @State private var mobile: String = "";
    @State private var countryCode: String = "+91";
    @ObservedObject var authViewModel = AuthViewModel();
    @State var isActive: Bool = true;
    
    var body: some View {
        VStack(alignment:.leading){
            
            
            VStack(alignment:.leading){
                Text("Get OTP").font(.custom("Inter", size: 22))
                Spacer()
                Text("Enter Your").font(.custom("Inter", size: 30))
                Text("Phone Number").font(.system( size: 30, weight: .semibold))
            }.font(.custom("inter", size: 18))
                .foregroundColor(Color.black).frame(width: 321, height: 102,alignment:.leading).padding(.leading,30)
            
            HStack(){
                TextField(
                    "+91",
                    text: $countryCode
                ).foregroundColor(Color.black).multilineTextAlignment(.center).disableAutocorrection(true).frame(width: 64, height: 36).font(.system(size: 14, weight: .bold, design: .default)).overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(red:76/255,green:76/255,blue: 76/255), lineWidth: 1))
                TextField(
                    "  Mobile Number",
                    text: $mobile
                ).foregroundColor(Color.black).multilineTextAlignment(.center)
                    .disableAutocorrection(true).frame(width: 147, height: 36).overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red:76/255,green:76/255,blue: 76/255), lineWidth: 1))
            }.font(.custom("Inter", size: 18)).frame(width: 219, height: 36, alignment: .leading).foregroundColor(Color.black).padding(.leading,30)
            HStack{
                Button(action: {
                    
                    DispatchQueue.main.async {
                        authViewModel.requestLogin(mobileNo: "\(countryCode)\(mobile)")
                    }
                }) {
                    Text("Continue").foregroundColor(Color.black).font(.custom("Inter", size: 14)).background(RoundedRectangle(cornerRadius: 22).fill(Color.yellow).frame(width: 96, height: 40)).padding(EdgeInsets(top: 20, leading: 50, bottom: 0, trailing: 0))
                }
                if authViewModel.mobileStatusResponse != nil && (authViewModel.mobileStatusResponse?.status ?? false) {
                    NavigationLink(destination: OtpScreen(mobile: "\(countryCode)\(mobile)"), isActive: $isActive) {}.navigationBarHidden(true).navigationBarBackButtonHidden(true)
                }
                
            }.font(.custom("Inter", size: 14))
        }.position(x: 190, y: 180).navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct ntentView_Previews: PreviewProvider {
    static var previews: some View {
        MobileOtpHeading()
    }
}
