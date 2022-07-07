//
//  mobile_status.swift
//  aisle-assignment
//
//  Created by Aviral Singh on 06/07/22.
//

import Foundation

struct MobileStatusModel: Codable {
    let status: Bool
    
    enum CodingKeys: String, CodingKey {
        case status = "status"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decode(Bool.self, forKey: .status)
    }
    
}

struct OtpStatusModel: Codable {
    let token: String?
    
    enum CodingKeys: String, CodingKey {
        case token = "token"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        token = try values.decodeIfPresent(String.self, forKey: .token)
    }
}
