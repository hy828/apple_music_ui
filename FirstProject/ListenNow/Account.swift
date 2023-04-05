//
//  Account.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

struct Account: View {
    
    @State var isAccess = true
    @State var showingAccount: Bool
    
    var body: some View {
        NavigationStack {
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
            .toolbarTitleMenu {
                Text("Account")
            }
            .toolbar{
                Text("Done")
                    .bold()
                    .foregroundColor(.red)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut, value: 100)
                    .gesture(
                        TapGesture(count: 1)
                            .onEnded { _ in showingAccount.toggle() }
                    )
            }
        }
        
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account(showingAccount: true)
    }
}
