//
//  ContentTopics.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/10/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentTopics: View {
    var body: some View {
        VStack {
            Text("Topics")
                .font(.system(size: 100, design: .monospaced))
                .foregroundColor(.orange)
                .padding()
            Spacer()
            VStack(alignment: .leading) {
                Text("Simple layouts").bulleted()
                Text("Representation").bulleted()
                Text("Updating").bulleted()
                Text("Opaque types").bulleted()
            }
            Spacer()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}


struct ContentTopics_Previews: PreviewProvider {
    static var previews: some View {
        ContentTopics().frame(width: 1600, height: 900)
    }
}

extension Text {
    func bulleted() -> some View {
        return (Text("⚾️ ") + self).font(.system(size: 80, design: .monospaced)).padding()
    }
}
