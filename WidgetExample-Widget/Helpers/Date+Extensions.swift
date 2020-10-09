//
//  Date+Extensions.swift
//  WidgetExample-WidgetExtension
//
//  Created by Shunzhe Ma on R 2/10/09.
//

import Foundation

extension Date{
    func getString() -> String {
        return DateFormatter.localizedString(from: self, dateStyle: .none, timeStyle: .short)
    }
}
