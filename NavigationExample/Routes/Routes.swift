//
//  Routes.swift
//  NavigationExample
//
//  Created by dsanchezpc on 20/11/18.
//  Copyright © 2018 dsanchezpc. All rights reserved.
//

import Foundation
import Compass

struct ARoute: Routable {
    func navigate(to location: Location, from currentController: CurrentController) throws {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AVC")
        currentController.navigationController?.pushViewController(controller, animated: true)
    }
}

struct BRoute: Routable {
    func navigate(to location: Location, from currentController: CurrentController) throws {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BVC")
        currentController.navigationController?.pushViewController(controller, animated: true)
    }
}
