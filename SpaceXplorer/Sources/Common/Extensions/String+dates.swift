//
//  String+dates.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 06/12/2020.
//

import Foundation

extension String {
    
    func dateFromUnixFormat() -> String? {
        if let interval = TimeInterval(self) {
            let date = Date(timeIntervalSince1970: interval)
            let formatter = DateFormatter()
            
            formatter.locale = Locale(identifier: "fr_FR")
            formatter.dateFormat = "dd MMMM yyy"
            
            return formatter.string(from: date)
        }
        return nil
    }
    
}
