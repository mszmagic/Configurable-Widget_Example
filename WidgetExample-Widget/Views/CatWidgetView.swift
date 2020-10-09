//
//  CatWidgetView.swift
//  WidgetExample-WidgetExtension
//
//  Created by Shunzhe Ma on R 2/10/09.
//

import Foundation
import SwiftUI

struct CatWidgetView: View {
    
    @Environment(\.widgetFamily) var family
    
    var entry: CatEntry
    
    var body: some View {
        
        VStack {
            
            if family == .systemMedium || family == .systemLarge {
                Image("kitty")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding(.vertical, 5)
            }
            
            Text(entry.name)
                .font(.headline)
                .padding(1)
            
            Text("最後に遊んだ時間 " + entry.lastPlayedWith.getString())
                .font(.caption)
                .padding(.horizontal)
            
            Text("最後に餌をあげた時間 " + entry.lastFed.getString())
                .font(.caption)
                .padding(.horizontal)
            
        }
        
    }
    
}
