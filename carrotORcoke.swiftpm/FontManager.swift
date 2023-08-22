//
//  MyFont.swift
//  carrotORcoke
//
//  Created by alex on 2023/04/16.
//


import Foundation

import SwiftUI

public struct FontManager {
   
    public static func registerFonts() {
        registerFont(bundle: Bundle.main, fontName: "Chewy-Regular", fontExtension: ".ttf")
        registerFont(bundle: Bundle.main, fontName: "Pretendard-SemiBold", fontExtension: ".otf")
        registerFont(bundle: Bundle.main, fontName: "Pretendard-Medium", fontExtension: ".otf")
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        print(Bundle.main)
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }
        
        var error: Unmanaged<CFError>?
        
        CTFontManagerRegisterGraphicsFont(font, &error)
    }
}

extension Font {
    enum Pretendard {
           
            case semiBold
            case medium
            case custom(String)
            
            var value: String {
                switch self {
                case .semiBold:
                    return "Pretendard-SemiBold"
                case .medium:
                    return "Pretendard-Medium"
                case .custom(let name):
                    return name
                }
            }
        }

        static func pretendard(_ type: Pretendard, size: CGFloat = 17) -> Font {
            return .custom(type.value, size: size)
        }
     
     enum Chewy {
          
          case regular
          case custom(String)
          
          var value: String {
              switch self {
              case .regular:
                  return "Chewy-Regular"
              case .custom(let name):
                  return name
              }
          }
          
     }
     static func pretendard(_ type: Chewy, size: CGFloat = 17) -> Font {
         return .custom(type.value, size: size)
     }
}




//enum MyCustomFonts: String, CaseIterable {
//
//    //e.g, the fonts below:
//    case Chewy = "Chewy-Regular.ttf"
//    case Pretendard = "Pretendard-SemiBold.ttf"
//    case Pretendard2 = "Pretendard-Medium.ttf"
//
//    var fontName: String { String(self.rawValue.dropLast(4)) }
//    var fileExtension: String { String(self.rawValue.suffix(3)) }
//}
//
//
//struct CustomFonts {
//    static func register() {
//        MyCustomFonts.allCases.forEach {
//            registerFont(fontName: $0.fontName,
//                         fontExtension: $0.fileExtension)
//        }
//    }
//
//    private static func registerFont(fontName: String, fontExtension: String) {
//
//        guard let fontURL = Bundle.main.url(forResource: fontName, withExtension: fontExtension),
//              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
//              let font = CGFont(fontDataProvider) else {
//            print("Couldn't create \(fontName) from data")
//            return
//        }
//
//        var error: Unmanaged<CFError>?
//
//        CTFontManagerRegisterGraphicsFont(font, &error)
//    }
//
//}
//
//extension Font {
//    static func custom(_ font: MyCustomFonts, size: CGFloat) -> Font {
//        custom(font.fontName, size: size)
//    }
//}
