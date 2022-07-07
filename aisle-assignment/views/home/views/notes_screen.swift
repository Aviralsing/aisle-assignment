//
//  noter_screen.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import Foundation
import SwiftUI

struct NotesScreen: View {
    var body: some View {
        VStack(alignment:.center){
            Text("Notes").font(.system(size: 27, weight: .bold, design: .default))
            Text("Personal messages to you").font(.custom("gilroy", size: 18))
            ZStack(alignment: .bottomLeading){
                Image("pic1").frame(width: 344, height: 344)
                    .cornerRadius(16)
                VStack(alignment:.leading){
                    Text("Meena, 23").font(.custom("Gilroy-Black.ttf", size: 22))
                        .foregroundColor(Color.white).fontWeight(Font.Weight.bold)
                    Text("Tap to review 50+ notes").font(.custom("Gilroy", size: 15))
                        .foregroundColor(Color.white).fontWeight(Font.Weight.semibold)
                }.padding()
            }
            HStack(spacing:60){
                VStack(alignment:.leading){
                    Text("Intrested In You").font(.system(size: 22, weight: .bold, design: .default)).frame(width: 177)
                    Text("Premium members can \nview all their likes at once") .font(.custom("Gilroy", size: 15)).foregroundColor(Color(red: 155/255, green: 155/255, blue: 155/255)).frame(width: 180)
                }.multilineTextAlignment(.leading)
                Text("Upgrade").font(.custom("inter", size: 15)).background(RoundedRectangle(cornerRadius: 22).fill(Color.yellow).frame(width: 113, height: 50))
            }.frame(width: 344, height: 61)
            HStack{
                ZStack(alignment: .bottomLeading){
                    Image("pic2")
                        .cornerRadius(16).frame(width: 168, height: 255)
                    VStack(alignment:.leading){
                        Text("Teena").font(.custom("Gilroy", size: 18))
                            .foregroundColor(Color.white).fontWeight(Font.Weight.bold)
                    }.padding()
                }
                ZStack(alignment: .bottomLeading){
                    Image("pic3")
                        .cornerRadius(16).frame(width: 168, height: 255)
                    VStack(alignment:.leading){
                        Text("Beena").font(.custom("Gilroy", size: 18))
                            .foregroundColor(Color.white).fontWeight(Font.Weight.bold)
                    }.padding()
                }
            }
            
            
            
        }.padding(.bottom,68).navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}


struct ontentView_Previews: PreviewProvider {
    static var previews: some View {
        NotesScreen()
    }
}
