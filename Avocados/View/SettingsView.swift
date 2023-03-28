//
//  SettingsView.swift
//  Avocados
//
//  Created by Rafael Carvalho on 23/03/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotifications: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack (alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparent"), radius: 8, x: 0, y: 4)
        
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form {
                Section(header: Text("General Settings"), content: {
                    Toggle(isOn: $enableNotifications) {
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                })
                
                Section(header: Text("Application"), content: {
                    if enableNotifications {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone and iPad")
                        }
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Rafael Carvalho")
                        }
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Peronal Message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("👍 Happy coding!")
                        }
                    }
                })
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
