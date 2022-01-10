//
//  SwiftUIView.swift
//  
//
//  Created by Shin Inaba on 2022/01/08.
//

import SwiftUI

/// A control that performs increment and decrement actions.
public struct NumberPlusMinusInputView: View {
    var title: String? = nil
    let bounds: ClosedRange<Int>
    @Binding var number: Int
     
    /// Creates a NumberPlusMinusInputView.
    /// - Parameters:
    ///   - title: Title to display.
    ///   - bounds: Specifies the range to be increased or decreased.
    ///   - number: The Binding to a value that you provide.
    public init(title: String? = nil, bounds: ClosedRange<Int>, number: Binding<Int>) {
        self.title = title
        self.bounds = bounds
        self._number = number
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
                                 bounds: 1...30,
                                 number: NumberPlusMinusInputView_Previews.$example)
            .padding()
    }
}
