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
    @State private var scale: CGFloat = 2.5

    let codes = [
        "Text(\"Hello Planet!\")",
        "Text(\"Hello Planet!\")\n  .background(Color.blue)",
        "Text(\"Hello Planet!\")\n  .background(Color.blue)\n  .border(Color.white)",
    ]
    
    var body: some View {
        
        let dish0 = Text("Hello Planet!")
        let dish1 = Text("Hello Planet!").background(Color.blue)
        let dish2 = Text("Hello Planet!").background(Color.blue).border(Color.white)

        return VStack {
            HStack {
                VStack {
                    Code(text: codes[thing])
                    Group {
                        if thing == 0 {
                            dish0.scaleEffect(4).simple()
                        } else if thing == 1 {
                            dish1.scaleEffect(4).simple()
                        } else {
                            dish2.scaleEffect(4).simple()
                        }
                    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 450, maxHeight: .infinity, alignment: .center)

                }.frame(minWidth: 0, maxWidth: 550, minHeight: 0, maxHeight: .infinity, alignment: .center)
                if thing == 0 {
                    dish0.mirror().mirrorAdjust(scale: scale)
                } else if thing == 1 {
                    dish1.mirror().mirrorAdjust(scale: scale)
                } else {
                    dish2.mirror().mirrorAdjust(scale: scale)
                }
            }
            if thing == 0 {
                Text(dish0.debugString()).code().padding()
            } else if thing == 1 {
                Text(dish1.debugString()).code().padding()
            } else {
                Text(dish2.debugString()).code().padding()
            }
        }.onTapGesture {
            self.thing = (self.thing + 1) % self.codes.count
        }

    }
}

struct Content2_Previews: PreviewProvider {
    static var previews: some View {
        ContentSimple().frame(width: 1600, height: 900)
    }
}

extension View {
    func simple() -> some View {
        return frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.purple)
    }
    
    func mirrorAdjust(scale: CGFloat) -> some View {
        return frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .scaleEffect(scale)
            .background(Color.white)
    }
}
