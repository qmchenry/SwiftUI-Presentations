//
//  ContentOpaque.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/6/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentOpaque: View {
    var body: some View {
        VStack {
            Text("Opaque types")
                .font(.system(size: 100, design: .monospaced))
                .foregroundColor(.orange)
                .padding()
            Spacer()
            Image("opaque_type").resizable().aspectRatio(contentMode: .fit)
            Spacer()
        }
    }
}

struct ContentOpaque_Previews: PreviewProvider {
    static var previews: some View {
        ContentOpaque().frame(minWidth: 1780, minHeight: 950)
    }
}
