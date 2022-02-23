//
//  File.swift
//  
//
//  Created by Özgün Ergen on 23.02.2022.
//

import Foundation

extension Bundle {
    static func bundle(forResource: String?, ofType: String?) -> Bundle {
        
        let resolvedBundle: Bundle
        
        if Bundle.main.path(forResource: forResource, ofType: ofType) != nil {
            resolvedBundle = Bundle.main
        } else if let moduleBundle = Bundle(identifier: "com.other.PhotoEditor") {
            resolvedBundle = moduleBundle
        } else {
            resolvedBundle = Bundle.module
        }
        
        return resolvedBundle
    }
}
