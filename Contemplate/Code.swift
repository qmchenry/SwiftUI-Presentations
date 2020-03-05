//
//  Code.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/5/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct Code: View {
    let text: String
    
    var body: some View {
        Group {
            Text(text).code()
            }.padding().border(Color.orange).padding()
    }
}

struct Code_Previews: PreviewProvider {
    static var previews: some View {
        Code(text: "This {\n  is\n  some\n  CoDe\n}").frame(width: 600, height: 300)
    }
}
