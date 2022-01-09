# XYZSwiftUIParts

Collection of SwiftUI parts.

## NumberPlusMinusInputView
![](https://github.com/cloudsquare22/XYZSwiftUIParts/blob/main/docresource/numberplusminusinputview.png)

Example
``` swift
NumberPlusMinusInputView(title: "Disp min tracks", bounds: 1...100, number: self.$music.minTracks)
    .onChange(of: self.music.minTracks) { newValue in
        // Value Change Action
    }
```
