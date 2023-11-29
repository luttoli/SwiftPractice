//
//  CustomTabBarController.swift
//  Practice
//
//  Created by 김지훈 on 2023/10/19.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let segmentDecoViewController = SegmentDecoViewController()
        let segmentDecoViewTabBarItem = UITabBarItem(title: "Segment", image: UIImage(systemName: "square.filled.and.line.vertical.and.square"), tag: 0)
        let segmentDecoNavigationController = UINavigationController(rootViewController: segmentDecoViewController)
        segmentDecoNavigationController.tabBarItem = segmentDecoViewTabBarItem
        
        let apiDecoViewController = APIDecoViewController()
        let apiDecoTabBarItem = UITabBarItem(title: "Api", image: UIImage(systemName: "icloud.and.arrow.down"), tag: 1)
        let apiDecoNavigationController = UINavigationController(rootViewController: apiDecoViewController)
        apiDecoNavigationController.tabBarItem = apiDecoTabBarItem
        
        let webViewDecoViewController = WebViewDecoViewController()
        let webViewDecoViewTabBarItem = UITabBarItem(title: "WebView", image: UIImage(systemName: "book.pages"), tag: 2)
        let webViewDecoNavigationController = UINavigationController(rootViewController: webViewDecoViewController)
        webViewDecoNavigationController.tabBarItem = webViewDecoViewTabBarItem
        
        self.viewControllers = [segmentDecoNavigationController, apiDecoNavigationController, webViewDecoNavigationController]
                
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.tintColor = .black
    }
}


// tabbar 두개 더 만들고, view 연결하고 , 연습해서 올리기 아? 음...
