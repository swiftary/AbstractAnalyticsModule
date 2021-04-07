//
//  YLoggerInterface.swift
//  ExampleAnalyticsModule
//
//  Created by cyber_man on 5.04.2021.
//

import Foundation
import AnalyticsCoreAdapter
import AnalyticsCoreModule

protocol YLoggerInterface {
    func yPressed()
}

class YLogger: BaseAnalyticsLogger, YLoggerInterface {
    func yPressed() {
        log(with: YEventData())
    }
}
class YEventData : AnalyticsEventInterface {
    var analyticsData: [AnalyticsEventData] {
        return [AnalyticsEventData(engineType: AnalyticsEngineType.firebase.description, name: "XPressed")]
    }
}
