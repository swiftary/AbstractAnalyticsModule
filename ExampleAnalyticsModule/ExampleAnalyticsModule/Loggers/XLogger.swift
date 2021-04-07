//
//  XLoggerInterface.swift
//  ExampleAnalyticsModule
//
//  Created by cyber_man on 5.04.2021.
//

import Foundation
import AnalyticsCoreAdapter
import AnalyticsCoreModule

protocol XLoggerInterface {
    func xPressed()
}

class XLogger: BaseAnalyticsLogger, XLoggerInterface {
    func xPressed() {
        log(with: XEventData())
    }
}
class XEventData : AnalyticsEventInterface {
    var analyticsData: [AnalyticsEventData] {
        return [AnalyticsEventData(engineType: AnalyticsEngineType.firebase.description, name: "XPressed")]
    }
}
