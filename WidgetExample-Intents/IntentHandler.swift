//
//  IntentHandler.swift
//  WidgetExample-Intents
//
//  Created by Shunzhe Ma on R 2/10/09.
//

import Intents

class IntentHandler: INExtension, ConfigurationIntentHandling {
    
    
    func provideCatOptionsCollection(for intent: ConfigurationIntent, searchTerm: String?, with completion: @escaping (INObjectCollection<NSString>?, Error?) -> Void) {
        let catIdentifiers: [NSString] = [
            "ネコノヒー",
            "ムギ",
            "アズキ"
        ]
        let allCatIdentifiers = INObjectCollection(items: catIdentifiers)
        completion(allCatIdentifiers, nil)
    }
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
    
}
