//
//  Account.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Account: View {
    
    @State var isAccess = true
    
    var body: some View {
        List {
            Section(footer: Text("Just , more per month for up to 6 people.").foregroundColor(.gray)) {
                Text("Redeem Gift Card or Code")
                Text("Add Funds to Apple ID")
                Text("Manage Subscription")
                Text("Upgrade to Family Plan")
            }
            .foregroundColor(.red)
            Section {
                NavigationLink {
                    Notifications()
                } label: {
                    Text("Notifications")
                }
            }
            Section(header: Text("APPS WITH ACCESS")) {
                Toggle("Apple Store App", isOn: $isAccess)
            }
            Section {
                Text("Account Settings")
                    .foregroundColor(.red)
            }
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account()
    }
}
