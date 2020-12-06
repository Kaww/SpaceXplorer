//
//  String+preview.swift
//  SpaceXplorer
//
//  Created by KAWRANTIN LE GOFF on 06/12/2020.
//

import Foundation

extension String {
    
    func preview(size: Int = 180) -> String {
        if self.count < size {
            return self
        } else {
            return "\(self.prefix(size))..."
        }
    }
    
}
