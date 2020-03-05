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
    @State private var scale: CGFloat = 1.5

    var magnification: some Gesture {
        MagnificationGesture()
            .onChanged { amount in
                let reducedValue = sqrt(sqrt(sqrt(amount.magnitude)))
                self.scale = max(min(self.scale * reducedValue, 2), 0.9)
            }
    }

    var body: some View {
        let dish = HStack {
            VStack {
                Button("Click here") {
                    self.counter += 1
                }
                if counter > 0 {
                    Text("\(counter) clicks, weirdo!")
                }
            }
        }

        return VStack {
            HStack {
                VStack {
                    Group {
                        Text(
                        """
                        @State var counter = 0
                        var body: some View {
                            let dish = HStack {
                                VStack {
                                    Button("Click here") {
                                        self.counter += 1
                                    }
                                    if counter > 0 {
                                        Text("\\(counter) clicks, weirdo!")
                                    }
                                }
                            }
                        }
                        """).font(.system(.title, design: .monospaced))
                        }.padding().border(Color.orange)
                    dish
                        .scaleEffect(3)
                        .frame(minWidth: 250, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                }
                dish.mirror()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .scaleEffect(scale)
                    .background(Color.white)
                    .gesture(magnification)
            }
        }
    }
}

struct ContentStateUpdate_Previews: PreviewProvider {
    static var previews: some View {
        ContentStateUpdate().frame(width: 1600, height: 900)
    }
}
