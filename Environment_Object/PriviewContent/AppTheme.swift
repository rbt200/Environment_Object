//
//  AppTheme.swift
//  Environment_Object
//
//  Created by Ivan Ivanov on 05.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

protocol AppTheme {
    var primaryFont: Font { get set}
    var secondaryFont: Font { get set }
    var mainColor: Color { get set }
    var accentColor: Color { get set }
}

class Theme1: AppTheme {
    
    var primaryFont: Font = Font.custom("NotoSansMyanmar-Bold", size: 26)
    
    var secondaryFont: Font = Font.custom("NotoSansMyanmar-Light", size: 18)
    
    var mainColor: Color = Color.init(UIColor.darkGray)
    
    var accentColor: Color = Color.init(UIColor.lightGray)
}

class Theme2: AppTheme {
    var primaryFont: Font = Font.custom("PingFangHK-Medium", size: 26)
    
    var secondaryFont: Font = Font.custom("PingFangHK-Ultralight", size: 18)
    
    var mainColor: Color = Color.init(UIColor.blue)
    
    var accentColor: Color = Color.init(UIColor.purple)
}

fileprivate let availableThemes: Array<AppTheme> = [Theme1(), Theme2()]

class SelectedTheme: ObservableObject {
    @Published var theme: AppTheme = availableThemes[0]
    
    func switchTheme() {
        if let _ = theme as? Theme1 {
            theme = availableThemes[1]
        } else {
            
        }
    }
}
