//
//  Notifications.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Notifications: View {
    
    @State private var newMusic = false
    @State private var showInLibrary = true
    
    var body: some View {
        List {
            Section(footer: Text("Notifications from Apple Music are turned off on this iPhone. Change your notifications settings to get updates.")) {
                Text("Allow Notifications on This iPhone")
                    .foregroundColor(.red)
            }
            Section(footer: Text("Apple associates your notifications viewing and interaction data with your Apple ID")) {
                Toggle(isOn: $newMusic) {
                    VStack(alignment: .leading){
                        Text("New Music")
                        Text("Artists you like release new music and videos")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                if newMusic {
                    Toggle(isOn: $showInLibrary) {
                        Text("Show in Library")
                    }
                }
            }
        }
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
