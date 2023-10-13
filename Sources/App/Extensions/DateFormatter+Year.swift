//
//  DateFormatter+Year.swift
//
//
//  Created by fenglh on 2023/10/13.
//

import Foundation

extension DateFormatter {
    static var year: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "y"
        return formatter
    }()
}
