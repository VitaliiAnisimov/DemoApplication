//
//  Constants.swift
//  m12
//
//  Created by admin on 24.04.22.
//

import UIKit

enum Constants {
    enum Colors {
        static var black: UIColor? {
            UIColor(named: "Black")
        }
        static var red: UIColor? {
            UIColor(named: "Red")
        }
        static var blue: UIColor? {
            UIColor(named: "Blue")
        }
    }
    enum Fonts  {
        static var ui14Semi: UIFont? {
            UIFont(name: "Inter-SemiBold", size: 14)
        }
        static var ui14Medium: UIFont? {
            UIFont(name: "Inter-Medium", size: 14)
        }
        static var ui14Regular: UIFont? {
            UIFont(name: "Inter-Regular", size: 10)
        }
    }
    enum Image {
        static let star = UIImage(named: "star")
    }
    enum Text {
        static let label1 = Bundle.main.localizedString(forKey: "Hello", value: "", table: "Localizable")
        static let label2 = Bundle.main.localizedString(forKey: "Login", value: "", table: "Localizable")
        static let label3 = Bundle.main.localizedString(forKey: "Registration", value: "", table: "Localizable")
        static let label4 = Bundle.main.localizedString(forKey: "Hello, world", value: "", table: "Localizable")
    }
}
