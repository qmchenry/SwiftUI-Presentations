//
//  Content0.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/3/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct Content0: View {
    @State var thing = 0
    
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
                    Group {
                        Text(
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
                    }.padding().border(Color.orange)
                    dish.frame(minWidth: 250, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                }
                dish.mirror().background(Color.white)
            }
        }
    }
}

struct Content0_Previews: PreviewProvider {
    static var previews: some View {
        Content0()
    }
}
