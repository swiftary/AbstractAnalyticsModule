//
//  BaseAnalyticsLogger.swift
//
//
//  
//  Copyright © 2020 All rights reserved.
//

import Foundation
import AnalyticsCoreModule
public protocol BaseAnalyticsLoggerInterface {
    func log(with event: AnalyticsEventInterface)
}

open class BaseAnalyticsLogger: BaseAnalyticsLoggerInterface {
    
    private let analyticsManager: AnalyticsManager

    public init(analyticsManagers: [AnalyticsEngineInterface]) {
        self.analyticsManager = AnalyticsManager(analyticsEngines: analyticsManagers)
    }
    
    public func log(with event: AnalyticsEventInterface) {
        analyticsManager.sendEvent(analyticEvent: event)
    }
}
