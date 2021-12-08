<h1 align="center"> LinkPreview(SwiftUI)</p>
<p align="center">
    <a href="https://github.com/NuPlay/LinkPreview/releases/latest">
        <img src="https://img.shields.io/github/v/release/NuPlay/LinkPreview?label=version&labelColor=303840" alt="version">
    </a>
    <a href="https://swift.org/">
        <img src="https://img.shields.io/badge/Swift-5.1+-F05138?labelColor=303840" alt="Swift: 5.1+">
    </a>
    <a href="https://www.apple.com/ios/">
        <img src="https://img.shields.io/badge/iOS-14.0+-007AFF?labelColor=303840" alt="iOS: 14.0+">
    </a>
    <a href="/LICENSE">
        <img src="https://img.shields.io/github/license/NuPlay/LinkPreview?color=blue&labelColor=303840" alt="license">        
</p>
<h3 align="center"> Preview with Link's meta information. </h3>


| ![IMG_0458](https://user-images.githubusercontent.com/73557895/145139791-93841950-02da-423b-8b4e-da1764073bd6.png) 	| ![example](https://user-images.githubusercontent.com/73557895/145139131-60038507-92ea-4ab0-9b8e-9a9b7cc7b9ac.gif) 	|
|--------------------------------------------------------------------------------------------------------------------	|-------------------------------------------------------------------------------------------------------------------	|
| Image                                                                                                              	| Gif                                                                                                               	|


## Get Started

```swift
import SwiftUI
import LinkPreview

struct LinkPreview_Test: View {
    @State private var size: CGFloat = 350
    
    var body: some View {
        ZStack(alignment: .bottom){
            ScrollView{
                VStack{
                    LinkPreview(url: URL(string: "https://github.com/NuPlay/RichText"))
                        .backgroundColor(.blue)
                        .primaryFontColor(.white)
                        .secondaryFontColor(.white.opacity(0.6))
                        .titleLineLimit(3)
                        .frame(width: size, alignment: .center)
                    
                    LinkPreview(url: URL(string: "https://github.com/NuPlay/ExpandableText"))
                        .titleLineLimit(20)
                        .frame(width: size, alignment: .center)
                    
                    LinkPreview(url: URL(string: "https://github.com/NuPlay/SwiftUI-SlideText"))
                }
                .padding(.horizontal, 24)
            }
            
            Slider(value: $size , in: 100...400, step: 1)
                .padding(.horizontal, 24)
        }
    }
}

```

## Modifier(optional)

Modifier | Default
--- | ---
`.backgroundColor(_ backgroundColor: Color)` | `Color(.systemGray5)`
`.primaryFontColor(_ primaryFontColor: Color)` | `.primary`
`.secondaryFontColor(_ secondaryFontColor: Color)` | `.gray`
`.titleLineLimit(_ titleLineLimit: Int)` | `3`
