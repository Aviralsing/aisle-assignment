//
//  aisle_assignmentApp.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import SwiftUI

@main
struct aisle_assignmentApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MobileOtpHeading()
            }.navigationBarHidden(true).navigationBarBackButtonHidden(true)
        }
    }
}
