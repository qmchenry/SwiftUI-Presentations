//
//  ContentView.swift
//  Contemplate
//
//  Created by Quinn McHenry on 2/28/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectorIndex = 0
    @State private var numbers = ["One","Two","Three"]
    
    var body: some View {
        return VStack {
            Picker("Layouts", selection: $selectorIndex) {
                  ForEach(0 ..< numbers.count) { index in
                      Text(self.numbers[index]).tag(index)
                  }
              }
              .pickerStyle(SegmentedPickerStyle())
            
            if selectorIndex == 0 {
                Content0()
            } else if selectorIndex == 1 {
                Content1()
            } else {
                Content2()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
