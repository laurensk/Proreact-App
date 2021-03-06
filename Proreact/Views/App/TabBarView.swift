//
//  TabBarView.swift
//  Proreact
//
//  Created by Laurens on 03.07.20.
//  Copyright © 2020 Laurens. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    enum Tabs {
        case History
        case Leaderboard
        case Play
        case About
    }
    
    @State private var selection: Tabs = .Play
    
    var body: some View {
        TabView(selection: $selection) {
            PlayView()
                .tabItem {
                    Image(systemName: "gamecontroller.fill").imageScale(.large)
                    Text("Game")
            }.tag(Tabs.Play)
            MoreView()
                .tabItem {
                    Image(systemName: "ellipsis").imageScale(.large)
                    Text("More")
            }.tag(Tabs.About)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
