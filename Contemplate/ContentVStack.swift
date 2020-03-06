//
//  ContentVStack.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/3/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentVStack: View {
    @State var thing = 0
    @State private var scale: CGFloat = 1.5

    let codes = [
        """
        VStack {
            Text("Hello")
            Text("Planet!")
        }
        """,
        """
        VStack {
            Text("Hello")
              .border(Color.white)
            Text("Planet!")
              .border(Color.yellow)
        }
        """,
        """
        VStack {
            Text("Hello")
              .padding()
              .border(Color.white)
            Text("Planet!")
              .border(Color.yellow)
              .padding()
        }
        """,
    ]
    
    var body: some View {
        
        let dish0 = VStack {
            Text("Hello")
            Text("Planet!")
        }
        let dish1 = VStack {
            Text("Hello").border(Color.white)
            Text("Planet!").border(Color.yellow)
        }
        let dish2 = VStack {
            Text("Hello").padding().border(Color.white)
            Text("Planet!").border(Color.yellow).padding()
        }

        let dish3 = Circle()
        let dish4 =
            VStack {
                Circle().padding()
                Text("Hello Planet!")
            }

        return VStack {
            HStack {
                VStack {
                    Code(text: codes[thing])
                    Group {
                        if thing == 0 {
                            dish0.scaleEffect(5).simple()
                        } else if thing == 1 {
                            dish1.scaleEffect(5).simple()
                        } else if thing == 2 {
                            dish2.scaleEffect(5).simple()
                        } else if thing == 3 {
                            dish3.simple()
                        } else {
                            dish4.scaleEffect(1).simple()
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

struct ContentVStack_Previews: PreviewProvider {
    static var previews: some View {
        ContentVStack().frame(width: 1600, height: 900)
    }
}
