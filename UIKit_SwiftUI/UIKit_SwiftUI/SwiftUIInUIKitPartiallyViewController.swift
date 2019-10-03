//
//  SwiftUIInUIKitPartiallyViewController.swift
//  UIKit_SwiftUI
//  
//  Created by maeda.tasuku on 2019/10/02
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

class SwiftUIInUIKitPartiallyViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    var sampleViewController: UIHostingController<SwiftUISampleView1>?
    var currentContainerFrame: CGRect?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // このやり方自体は普通のViewControllerと一緒です
        // https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html
        let sampleViewControllerTemp = UIHostingController(rootView: SwiftUISampleView1())
        addChild(sampleViewControllerTemp)
        view.addSubview(sampleViewControllerTemp.view)
        sampleViewControllerTemp.didMove(toParent: self)

        sampleViewController = sampleViewControllerTemp
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let containerFrame = containerView.frame
        if currentContainerFrame != containerFrame {
            sampleViewController?.view.frame = containerFrame
            currentContainerFrame = containerFrame
        }
    }
}
