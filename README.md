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

## CheckboxView
![](https://github.com/cloudsquare22/XYZSwiftUIParts/blob/main/docresource/checkboxview_off.png)
![](https://github.com/cloudsquare22/XYZSwiftUIParts/blob/main/docresource/checkboxview_on.png)

Example
``` swift
CheckboxView(title: "Auto Play", check: self.$music.autoPlay, checkboxFont: .title)
    .onChange(of: self.music.autoPlay) { newValue in
        // Value Change Action
    }
```
