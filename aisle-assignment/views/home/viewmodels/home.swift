//
//  mobile_viewmodel.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import Foundation

class NotesViewModel: ObservableObject {
    
    func getNotes(token: String) {
        APIManager.sharedInstance.GetRequestInterceptor(WebService.API_HOST + WebService.NOTES_URL, headers: ["Authorization" : "Bearer \(token)"]) { response in
            debugPrint("API Response: ", response)
        } failure: { error in
            print(error)
        }
    }
    
}
