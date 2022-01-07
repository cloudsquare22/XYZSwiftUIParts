//
//  SwiftUIView.swift
//  
//
//  Created by Shin Inaba on 2022/01/08.
//

import SwiftUI

public struct NumberPlusMinusInputView: View {
    var title: String? = nil
    let bounds: ClosedRange<Int>
    @State var number: Int = 1
     
    public init(title: String? = nil, bounds: ClosedRange<Int>) {
        self.title = title
        self.bounds = bounds
    }
    
    public var body: some View {
        HStack {
            if let title = self.title {
                Text(title)
            }
            Spacer()
            Text(String(number))
            Stepper(value: self.$number, in: self.bounds, step: 1, label: {})
                .labelsHidden()
        }
    }
}

struct NumberPlusMinusInputView_Previews: PreviewProvider {
    @State static var example = 1
    static var previews: some View {
        NumberPlusMinusInputView(title: "Preview",
                                 bounds: 1...30)
            .padding()
    }
}
