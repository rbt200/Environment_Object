
//
//  HomeScreen.swift
//  Environment_Object
//
//  Created by Ivan Ivanov on 05.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    
    @EnvironmentObject var theme: SelectedTheme
    
    var body: some View {
        VStack {
            Text("HOME SCREEN")
                .font(theme.theme.primaryFont)
                .foregroundColor(theme.theme.mainColor)
            Text("This screen has home stuff")
                .font(theme.theme.secondaryFont)
                .foregroundColor(theme.theme.accentColor)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen().environmentObject(SceneDelegate.selectedTheme)
    }
}
