//
//  WidgetExample_Widget.swift
//  WidgetExample-Widget
//
//  Created by Shunzhe Ma on R 2/10/09.
//

import WidgetKit
import SwiftUI
import Intents

@main
struct CatWidget: Widget {
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: "CatWidget", intent: ConfigurationIntent.self, provider: CatProvider()) { entry in
            CatWidgetView(entry: entry)
        }.configurationDisplayName("猫")
        .description("いつ猫に餌をあげたり遊んだりしたか見てみましょう。")
//        StaticConfiguration(kind: "CatWidget", provider: CatProvider()) { entry in
//            CatWidgetView(entry: entry)
//        }.configurationDisplayName("Cat widget")
//        .description("See when you fed and played with your cats.")
    }
    
}

struct CatProvider: IntentTimelineProvider {
    
    typealias Intent = ConfigurationIntent
    typealias Entry = CatEntry
    
    func placeholder(in context: Context) -> CatEntry {
        let entry = CatEntry(date: Date(), name: "", lastFed: Date(), lastPlayedWith: Date())
        return entry
    }
    
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (CatEntry) -> Void) {
        let entry = CatEntry(date: Date(), name: "Preview", lastFed: Date(), lastPlayedWith: Date())
        completion(entry)
    }
    
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<CatEntry>) -> Void) {
        let entry = CatEntry(date: Date(), name: configuration.cat ?? "", lastFed: Date(), lastPlayedWith: Date())
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
    
}

// StaticConfiguration
//struct CatProviderStatic: TimelineProvider {
//    typealias Entry = CatEntry
//
//    func getSnapshot(in context: Context, completion: @escaping (CatEntry) -> Void) {
//        let entry = CatEntry(date: Date(), name: "Your cat's name", lastFed: Date(), lastPlayedWith: Date())
//        completion(entry)
//    }
//
//    func getTimeline(in context: Context, completion: @escaping (Timeline<CatEntry>) -> Void) {
//        let entry = CatEntry(date: Date(), name: "ネコノヒー", lastFed: Date(), lastPlayedWith: Date())
//        let timeline = Timeline(entries: [entry], policy: .atEnd)
//        completion(timeline)
//    }
//
//    func placeholder(in context: Context) -> CatEntry {
//        return CatEntry(date: Date(), name: "Cat's name", lastFed: Date(), lastPlayedWith: Date())
//    }
//
//}
