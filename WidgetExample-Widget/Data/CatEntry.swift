//
//  CatEntry.swift
//  WidgetExample-WidgetExtension
//
//  Created by Shunzhe Ma on R 2/10/09.
//

import UIKit
import SwiftUI
import WidgetKit

struct CatEntry: TimelineEntry {
    var date: Date
    
    var name: String
    var lastFed: Date
    var lastPlayedWith: Date
}
