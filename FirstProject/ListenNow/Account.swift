//
//  Account.swift
//  FirstProject
//
//  Created by lhy on 2023/3/22.
//

import SwiftUI

// Account: from Listen Now
struct Account: View {
    
    @State var isAccess = true
    @Binding var showingAccount: Bool
    @State var offset : CGSize = .init(width: 0, height: 300)
    
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
            .toolbar{
                Button { // 点击按钮后关闭sheet
                    showingAccount.toggle()
                } label: {
                    Text("Done")
                        .bold()
                        .foregroundColor(.red)
                }
            }
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Account_Previews: PreviewProvider {
    static var previews: some View {
        Account(showingAccount: .constant(true))
    }
}
