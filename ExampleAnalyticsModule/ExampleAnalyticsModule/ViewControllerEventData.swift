//
//  ViewControllerEventData.swift
//  ExampleAnalyticsModule
//
//  Created by msait on 20.03.2021.
//

import Foundation
import AnalyticsCoreModule
import AnalyticsCoreAdapter

class ViewControllerEventData: AnalyticsEventInterface {
    
    var analyticsData: [AnalyticsEventData] {
        return [AnalyticsEventData(engineType: AnalyticsEngineType.firebase, name: "ViewController_ViewDiDLoad", metadata: ["name":"viewController"]),AnalyticsEventData(engineType: AnalyticsEngineType.adjust, name: "ViewController_ViewDiDLoad", metadata: ["name":"viewController"])]
    }


}
