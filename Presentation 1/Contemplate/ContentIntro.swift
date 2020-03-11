//
//  ContentIntro.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/4/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentIntro: View {
    var body: some View {
        VStack {
            Spacer()
            Text("SwiftUI").font(.system(size: 200, design: .monospaced)).foregroundColor(.orange)
            Text("Under the Hood").font(.system(size: 80, design: .monospaced))
            Text("Layouts and Updates").font(.system(size: 120, design: .monospaced))
            Spacer()
            HStack {
                Text("March 11, 2020").code()
                Spacer()
                Text("github.com/qmchenry/SwiftUI-Presentations").code()
            }.padding()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}

struct ContentIntro_Previews: PreviewProvider {
    static var previews: some View {
        ContentIntro().frame(width: 1600, height: 900)
    }
}
