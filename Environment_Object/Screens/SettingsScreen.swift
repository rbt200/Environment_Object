//
//  SettingsScreen.swift
//  Environment_Object
//
//  Created by Ivan Ivanov on 05.04.2020.
//  Copyright © 2020 Ivan Ivanov. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    
    @EnvironmentObject var theme: SelectedTheme
    
    var body: some View {
        VStack {
            Text("SETTINGS SCREEN")
                .font(theme.theme.primaryFont)
            Text("Change your theme here")
                .font(theme.theme.secondaryFont)
            Button(action: {
                self.theme.switchTheme()
            }){
                ZStack {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(maxHeight: 50)
                    Text("TOGGLE THEME")
                        .foregroundColor(Color.white)
                }
            }
        }
        .padding(50)
        .foregroundColor(theme.theme.mainColor)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen().environmentObject(SceneDelegate.selectedTheme)
    }
}
