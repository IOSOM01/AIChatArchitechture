//
//  AppState.swift
//  AIChatArchitechture
//
//  Created by OM BHAGWAN on 22/02/26.
//

import Foundation
import SwiftUI

@Observable class AppState {
 
    private(set) var showTabbar: Bool {
        didSet {
            UserDefaults.showTabbarView = showTabbar
        }
    }
    
    init(showTabbar: Bool = UserDefaults.standard.bool(forKey: "showTabbarView")) {
        self.showTabbar = showTabbar
    }
    
    func updateViewState(showTabBarView: Bool) {
        showTabbar = showTabBarView
    }
}

extension UserDefaults {
    
    private struct Keys {
        static let showTabbarView = "showTabbarView"
    }
    
    static var showTabbarView: Bool {
        get {
            return standard.bool(forKey: Keys.showTabbarView)
        } set {
            standard.set(newValue, forKey: Keys.showTabbarView)
        }
    }
}
