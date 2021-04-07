//
//  AdjustAnalyticsEngine.swift
//
//
//
//  Copyright © All rights reserved.
//

import Adjust
import AnalyticsCoreModule

public class AdjustAnalyticsEngine: AnalyticsEngineInterface {
    public var engineType: CustomStringConvertible {
        return AnalyticsEngineType.adjust
    }

    public init() { }
    
    public func log(analyticEventData: AnalyticsEventData) {
        //TODO: - Change this as accepting event token
        Adjust.trackEvent(getAdjustEvent(eventData: analyticEventData))
    }

    private func getAdjustEvent(eventData: AnalyticsEventData) -> ADJEvent? {
        return ADJEvent(eventToken: eventData.name)
    }
}
