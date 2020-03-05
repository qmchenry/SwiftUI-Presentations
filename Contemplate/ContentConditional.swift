//
//  ContentConditional.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/3/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentConditional: View {
    @State var thing = 0
    @State var scale = CGFloat(1.44)

    var body: some View {
        let dish = HStack {
            Text("Ohai")
            if self.thing == 0 {
                Text("is a thing")
            } else {
                Text("not a thing")
            }
        }
            
        return VStack {
            HStack {
                VStack {
                    Code(text: 
                        """
                        HStack {
                            Text("Ohai")
                            if self.thing == 0 {
                                Text("is a thing")
                            } else {
                                Text("not a thing")
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
                    .gesture(MagnificationGesture()
                        .onChanged { value in
                            print("\(value.magnitude) \(self.scale)")
                            self.scale = value.magnitude
                        }
                    )
            }
        }
    }
}

struct Content0_Previews: PreviewProvider {
    static var previews: some View {
        ContentConditional().frame(width: 1600, height: 900)
    }
}
