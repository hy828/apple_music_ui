//
//  Category.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

// Search界面的元素
struct Category: View {
    
    let value: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(value)
                .resizable()
                .scaledToFill()
                .frame(width: 175, height: 125)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            Text(value)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .foregroundColor(.white)
                .font(.footnote)
                .bold()
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 10))
        }
        .frame(height: 125)
    }
    
    
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category(value: "Acoustic")
    }
}
