//
//  SwiftUIView.swift
//  
//
//  Created by 이웅재 on 2021/12/08.
//

import SwiftUI

extension LinkPreview {
    public func primaryFontColor(_ primaryFontColor: Color) -> LinkPreview {
        var result = self
        
        result.primaryFontColor = primaryFontColor
        return result
    }
    
    public func secondaryFontColor(_ secondaryFontColor: Color) -> LinkPreview {
        var result = self
        
        result.secondaryFontColor = secondaryFontColor
        return result
    }
    
    public func backgroundColor(_ backgroundColor: Color) -> LinkPreview {
        var result = self
        
        result.backgroundColor = backgroundColor
        return result
    }
    
    public func titleLineLimit(_ titleLineLimit: Int) -> LinkPreview {
        var result = self
        
        result.titleLineLimit = titleLineLimit
        return result
    }
    
    public func type(_ type: LinkPreviewType) -> LinkPreview {
        var result = self
        
        result.type = type
        return result
    }
}
