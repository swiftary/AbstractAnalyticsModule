//
//  ViewController.swift
//  ExampleAnalyticsModule
//
//  Created by msait on 17.03.2021.
//

import UIKit
import AnalyticsCoreAdapter
import AnalyticsCoreModule

class XViewController: UIViewController {

    private var viewModel: XViewModel!

    convenience init(viewModel: XViewModel) {
        self.init()
        self.viewModel = viewModel
    }
    
}

class ViewControllerLogger: BaseAnalyticsLogger {
   
}


//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        viewControllerLogger.viewDidLoadLog()
//    }
