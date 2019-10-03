//
//  MainViewController.swift
//  UIKit_SwiftUI
//  
//  Created by maeda.tasuku on 2019/10/01
//  Copyright © 2019 Classmethod. All rights reserved.
//

import SwiftUI

enum MainMenu: CaseIterable {
    case swiftUIinUIKit
    case swiftUIinUIKitPartially
    case uiKitinSwiftUI
    
    var title: String {
        switch self {
        case .swiftUIinUIKit:
            return "SwiftUI in UIKit"
        case .swiftUIinUIKitPartially:
                return "SwiftUI in UIKit partially"
        case .uiKitinSwiftUI:
            return "UIKit in SwiftUI"
        }
    }
}

class MainViewController: UIViewController {
    @IBOutlet weak var menuTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SwiftUI and UIKit"
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MainMenu.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cacheKey = "menuCell"
        var cellOpt: UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: cacheKey)
        if cellOpt == nil {
            cellOpt = UITableViewCell(style: .default, reuseIdentifier: cacheKey)
        }
        let cell = cellOpt!
        let item = MainMenu.allCases[indexPath.row]
        cell.textLabel?.text = item.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = MainMenu.allCases[indexPath.row]
        switch item {
        case .swiftUIinUIKit:
            let sampleViewController = UIHostingController(rootView: SwiftUISampleView1())
            navigationController?.pushViewController(sampleViewController, animated: true)
        case .swiftUIinUIKitPartially:
            let storyboad = UIStoryboard(name: "SwiftUIInUIKitPartiallyViewController", bundle: nil)
            let partiallyViewController = storyboad.instantiateInitialViewController() as! SwiftUIInUIKitPartiallyViewController
            navigationController?.pushViewController(partiallyViewController, animated: true)
        case .uiKitinSwiftUI:
            let sampleViewController = UIHostingController(rootView: SwiftUISampleView2())
            navigationController?.pushViewController(sampleViewController, animated: true)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
