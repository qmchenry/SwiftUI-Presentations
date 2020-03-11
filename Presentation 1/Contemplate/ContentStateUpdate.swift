//
//  ContentStateUpdate.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/3/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentStateUpdate: View {
    @State var counter = 0
    @State private var scale: CGFloat = 2

    var magnification: some Gesture {
        MagnificationGesture()
            .onChanged { amount in
                let reducedValue = sqrt(sqrt(sqrt(amount.magnitude)))
                self.scale = max(min(self.scale * reducedValue, 2), 0.9)
            }
    }

    var body: some View {
        let dish =
            VStack {
                Button("Click here") {
                    self.counter += 1
                }
                if counter == 0 {
                    Text("No clicks, weirdo!")
                } else if counter == 1 {
                    Text("\(counter) click, weirdo!")
                } else {
                    Text("\(counter) clicks, weirdo!")
                }
            }

        return VStack {
            HStack {
                VStack {
                    Code(text:
                        """
                        @State var counter = 0
                        var body: some View {
                          VStack {
                            Button("Click here") {
                              self.counter += 1
                            }
                            if counter == 0 {
                              Text("No clicks, weirdo!")
                            } else if counter == 1 {
                              Text("\\(counter) click, weirdo!")
                            } else {
                              Text("\\(counter) clicks, weirdo!")
                            }
                          }
                        }
                        """).frame(minHeight: 700)
                    
                    dish.scaleEffect(3).simple()
                }
                dish.mirror().mirrorAdjust(scale: scale)
            }
            Text(dish.debugString()).code().padding()
        }
    }
}

struct ContentStateUpdate_Previews: PreviewProvider {
    static var previews: some View {
        ContentStateUpdate().frame(width: 1600, height: 900)
    }
}
