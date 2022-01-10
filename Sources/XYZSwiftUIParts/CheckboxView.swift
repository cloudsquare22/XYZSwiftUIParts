//
//  SwiftUIView.swift
//  
//
//  Created by Shin Inaba on 2022/01/09.
//

import SwiftUI

/// A control that chekcs between on and off states.
public struct CheckboxView: View {
    var title: String? = nil
    @Binding var check: Bool
    var titleFont: Font
    var checkboxFont: Font

    /// Creates a CheckboxView.
    /// - Parameters:
    ///   - title: Title to display.
    ///   - check: A binding to a property that determines whether the check is on or off.
    ///   - titleFont: Specify the font for the title.
    ///   - checkboxFont: Specify the font of the check box.
    public init(title: String? = nil, check: Binding<Bool>, titleFont: Font = .body, checkboxFont: Font = .body) {
        self.title = title
        self._check = check
        self.titleFont = titleFont
        self.checkboxFont = checkboxFont
    }

    public var body: some View {
        HStack {
            if let title = self.title {
                Text(title)
                    .font(self.titleFont)
            }
            Spacer()
            Image(systemName: self.check == true ? "checkmark.square" : "square")
                .onTapGesture {
                    self.check.toggle()
                }
                .font(self.checkboxFont)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    @State static var check = false
    static var previews: some View {
        CheckboxView(title: "Auto Play", check: SwiftUIView_Previews.$check, checkboxFont: .title)
            .padding()
    }
}
