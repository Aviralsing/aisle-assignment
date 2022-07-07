//
//  tab_bar.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import SwiftUI

struct AisleView: View{
    @State var token: String = "";
    @State var activeTab = 2;
    
    @ObservedObject var notesViewModel = NotesViewModel();
    
    
    init(token: String = "") {
        self.token = token;
        UITabBar.appearance().backgroundColor = UIColor(Color.white)
        UITabBarItem.appearance().badgeColor =  UIColor(red: 140, green: 92, blue: 251)
        
    }

    var body:some View {
//        Divider().foregroundColor(Color.black).frame(width:200)
        ScrollViewReader { proxy in
           
            TabView(selection: $activeTab){
               
               blank_pages()
                .tabItem(
                    
                ){
                    Image(systemName: "square.grid.2x2.fill").renderingMode(.template)
                    Text("Discover").foregroundColor(Color.gray)
                }.tag(1)
               if #available(iOS 15.0, *) {
                   NotesScreen()
                       .tabItem(){
                           Image(systemName: "envelope.fill").renderingMode(.template)
                           Text("Notes").foregroundColor(Color.gray)
                       }
                       .badge(9).tag(2)
               } else {
                   NotesScreen()
                       .tabItem(){
                           Image(systemName: "envelope.fill").renderingMode(.template)
                           Text("Notes").foregroundColor(Color.gray)
                       }.tag(2)
               }
               if #available(iOS 15.0, *) {
                   blank_pages()
                       .tabItem(){
                           Image(systemName: "bubble.left.fill").renderingMode(.template)
                           Text("Matches").foregroundColor(Color.gray)
                       }.tag(3)
                       .badge("50+")
               } else {
                   blank_pages()
                       .tabItem(){
                           Image(systemName: "bubble.left.fill").renderingMode(.template)
                           Text("Matches").foregroundColor(Color.gray)
                       }.tag(3)
               }
               blank_pages()
               .tabItem(){
               Image(systemName: "person.fill").renderingMode(.template)
                   Text("Profile").foregroundColor(Color.gray)
               }.tag(4)
          
           
            }.accentColor(.black).onAppear {
                notesViewModel.getNotes( token: token)
            }
   }
       
}
}


struct entView_Previews: PreviewProvider {
    static var previews: some View {
        AisleView()
    }
}
