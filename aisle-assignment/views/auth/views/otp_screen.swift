//
//  otp_screen.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import Foundation
import SwiftUI


struct OtpScreen: View {
    @State var mobile: String = "";
    @State var otp: String = "";
    @ObservedObject var authViewModel = AuthViewModel();
    @State var isActive = true;
    
    var body: some View {
        VStack(alignment:.leading){
            VStack(alignment:.leading){
                HStack{
                    Text("+91 9999999999").font(.custom("Inter", size: 18))
                    Image(systemName:"pencil").font(.headline)
                }
                Spacer()
                Text("Enter the").font(.system( size: 30, weight: .semibold))
                Text("OTP").font(.system( size: 30, weight: .semibold))
            }.font(.custom("Inter", size: 30))
                .foregroundColor(Color.black).frame(width: 321, height: 102,alignment:.leading).padding(.leading,30)
            HStack(){
                TextField(
                    "  9999",
                    text: $otp
                ).foregroundColor(Color.black).font(.custom("Inter", size: 18)).multilineTextAlignment(.center)
                    .disableAutocorrection(true).frame(width: 78, height: 36).overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red:76/255,green:76/255,blue: 76/255), lineWidth: 1)).padding(.leading,30)
            }
            HStack{
                Button(action: {
                    DispatchQueue.main.async {
                        authViewModel.verifyOtp(mobileNo: mobile, otp: otp)
                    }
                }) {
                    Text("Continue").foregroundColor(Color.black).font(.custom("Inter", size: 14)).background(RoundedRectangle(cornerRadius: 22).fill(Color.yellow).frame(width: 96, height: 40)).padding(EdgeInsets(top: 20, leading: 50, bottom: 0, trailing: 0))
                }
                
                if authViewModel.otpStatusResponse != nil && (authViewModel.otpStatusResponse?.token != nil) {
                    NavigationLink(destination: AisleView(token: authViewModel.otpStatusResponse?.token ?? ""), isActive: $isActive) {
                    }.navigationBarHidden(true).navigationBarBackButtonHidden(true)
                }
                Text("00:59").font(.system( size: 14, weight: .bold)).padding(.leading,30).padding(.top,20)
            }.font(.custom("Inter", size: 14))
        }.position(x: 190, y: 180).navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct tentView_Previews: PreviewProvider {
    static var previews: some View {
        OtpScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
