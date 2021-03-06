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
    @State private var views = ["Intro", "Topics", "Simple", "VStack", "Updating", "Opaque types"]
    
    var body: some View {
        return VStack {
            Picker("Slides", selection: $selectorIndex) {
                ForEach(0 ..< views.count) { index in
                    Text(self.views[index])
                        .tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if views[selectorIndex] == "Intro" {
                ContentIntro()
            } else if views[selectorIndex] == "Topics" {
                ContentTopics()
            } else if views[selectorIndex] == "Simple" {
                ContentSimple()
            } else if views[selectorIndex] == "VStack" {
                ContentVStack()
            } else if views[selectorIndex] == "Updating" {
                ContentStateUpdate()
            } else {
                ContentOpaque()
            }
        }.frame(minWidth: 1780, minHeight: 950)
            .gesture(DragGesture().onEnded { (values) in
                let dx = values.translation.width
                print(dx)
                let delta = dx > 300 ? 1 : dx < -300 ? -1 : 0
                self.selectorIndex = max(0, self.selectorIndex + delta) % self.views.count
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Text {
    func code() -> some View {
        return font(.system(.title, design: .monospaced))
    }
}

