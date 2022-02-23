//
//  PhotoEditor+Font.swift
//
//
//  Created by Mohamed Hamed on 6/16/17.
//
//

import Foundation
import UIKit

extension PhotoEditorViewController {
    
    //Resources don't load in main bundle we have to register the font
    func registerFont() {
        let url = Bundle.bundle(forResource: "icomoon", ofType: "ttf").bundleURL
        
        print("P1 ", url)
        guard let fontDataProvider = CGDataProvider(url: url as CFURL) else {
            return
        }
        print("P2")
        guard let font = CGFont(fontDataProvider) else {return}
        print("P3")
        var error: Unmanaged<CFError>?
        guard CTFontManagerRegisterGraphicsFont(font, &error) else {
            return
        }
    }
}
