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
        }
    }
}

struct ContentIntro_Previews: PreviewProvider {
    static var previews: some View {
        ContentIntro()
    }
}
