//
//  ContentOpaque.swift
//  Contemplate
//
//  Created by Quinn McHenry on 3/6/20.
//  Copyright © 2020 Quinn McHenry. All rights reserved.
//

import SwiftUI

struct ContentOpaque: View {
    @State var page = 0
    
    var body: some View {
        VStack {
            if page == 0 {
                Text("Opaque types")
                    .font(.system(size: 100, design: .monospaced))
                    .foregroundColor(.orange)
                    .padding()
                Spacer()
                Text("var body: VStack<TupleView<(ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _BackgroundModifier<Color>>, ModifiedContent<ModifiedContent<Text, _BackgroundModifier<Color>>, _PaddingLayout>)>> {\n    ...\n}").code()
                Spacer()
            } else if page == 1 {
                Text("Opaque types")
                    .font(.system(size: 100, design: .monospaced))
                    .foregroundColor(.orange)
                    .padding()
                Spacer()
                Text("var body: some View {\n    ...\n}").code()
                Spacer()
            } else if page == 2 {
                Text("Opaque types")
                    .font(.system(size: 100, design: .monospaced))
                    .foregroundColor(.orange)
                    .padding()
                Spacer()
                Image("opaque_type").resizable().aspectRatio(contentMode: .fit)
                Spacer()
            } else {
                Spacer()
                Text("🏁")
                    .font(.system(size: 300, design: .monospaced))
                Spacer()
            }
        }.onTapGesture {
            self.page = (self.page + 1) % 4
        }
    }
}

struct ContentOpaque_Previews: PreviewProvider {
    static var previews: some View {
        ContentOpaque().frame(minWidth: 1780, minHeight: 950)
    }
}
