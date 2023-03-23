//
//  Album.swift
//  FirstProject
//
//  Created by lhy on 2023/3/23.
//

import SwiftUI

struct Album: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("Image")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(height: 200)
            Text("Floral Sense - The 1st Album")
                .lineLimit(1)
            Text("YESUNG")
                .foregroundColor(.gray)
        }
        .frame(width: 200)
    }
}

struct Album_Previews: PreviewProvider {
    static var previews: some View {
        Album()
    }
}
