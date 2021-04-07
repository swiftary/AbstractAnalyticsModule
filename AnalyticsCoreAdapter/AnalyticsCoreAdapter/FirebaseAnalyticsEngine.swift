//
//  FirebaseAnalyticsEngine.swift
//
//
// 
//  Copyright © 2020 All rights reserved.
//

import Firebase
import AnalyticsCoreModule

public class FirebaseAnalyticsEngine: AnalyticsEngineInterface {
    public var engineType: CustomStringConvertible {
        return AnalyticsEngineType.firebase
    }

    public init() {
  
    }
    
    public func log(analyticEventData: AnalyticsEventData) {
        Analytics.logEvent(analyticEventData.name, parameters: analyticEventData.metadata)
    }
}
