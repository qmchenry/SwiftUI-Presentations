//
//  ContentSimple.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/3/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentSimple: View {
    @State var thing = 0
    
    var body: some View {
        let dish = Circle()
            .padding()
            .background(Color.purple)
            
        return VStack {
            HStack {
                VStack {
                    Group {
                        Text("""
                        Circle()
                          .padding()
                          .background(Color.purple)
                        """).font(.system(.title, design: .monospaced))
                    }.padding().border(Color.orange)
                    
                    dish
                        .frame(minWidth: 250, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                }
                dish.mirror()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .background(Color.white)
            }
        }
    }
}

struct Content2_Previews: PreviewProvider {
    static var previews: some View {
        ContentSimple()
    }
}
