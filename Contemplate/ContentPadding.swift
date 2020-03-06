//
//  ContentPadding.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/3/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//


import SwiftUI

struct ContentPadding: View {
    @State var thing = 0
    @State var scale = CGFloat(1.3)
    
    var body: some View {
        
//        var dishOkay: some View {
//            if thing == 0 {
//                return Text("This is")
//            } else {
//                return Text("fine 🔥")
//            }
//        }
//
//        var dishBzzzt: some View {
//            if thing == 0 {
//                return Text("This isn't")
//            } else {
//                return Circle()
//            }
//        }

        let dish = HStack {
            Text("Ohai")
            if self.thing == 0 {
                Text("This is")
            } else {
                Circle()
            }
        }
            
        return VStack {
            HStack {
                VStack {
                    Code(text: """
                        HStack {
                            Text("Ohai")
                            Text("World")
                                .border(Color.white)
                                .padding()
                                .background(Color.blue)
                                .padding()
                            if self.selectorIndex == 0 {
                                Text("first")
                            } else {
                                Text("not first")
                            }
                        }
                        """)
                    dish
                        .scaleEffect(3)
                        .frame(minWidth: 250, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                }
                dish.mirror()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .scaleEffect(scale)
                    .background(Color.white)
                    .gesture(MagnificationGesture(minimumScaleDelta: 0.5)
                        .onChanged { value in
                            let reducedValue = sqrt(sqrt(sqrt(value.magnitude)))
                            self.scale = max(min(self.scale * reducedValue, 2), 0.9)
                        }
                    )
            }
        }
    }
}

struct Content1_Previews: PreviewProvider {
    static var previews: some View {
        ContentPadding().frame(width: 1600, height: 1000)
    }
}
