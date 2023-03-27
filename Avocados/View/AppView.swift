//
//  AppView.swift
//  Avocados
//
//  Created by Rafael Carvalho on 23/03/23.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem({
                    Image("tabicon-branch")
                    Text("Avocados")
                })
            RecipesView()
                .tabItem({
                    Image("tabicon-book")
                    Text("Recipes")
                })
            RipeningStageView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })
            SettingsView()
                .tabItem({
                    Image("tabicon-settings")
                    Text("Settings")
                })
        }//TABVIEW
        .edgesIgnoringSafeArea(.all)
        .accentColor(.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
