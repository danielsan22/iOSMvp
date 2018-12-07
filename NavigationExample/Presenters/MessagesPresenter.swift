//
//  MessagesPresenter.swift
//  NavigationExample
//
//  Created by dsanchezpc on 07/12/18.
//  Copyright © 2018 dsanchezpc. All rights reserved.
//

import Foundation

class MessagesPresenter {
    func retrieveMessages() {
        MessagesServices.get(sucess: { (messages) in
            print(messages.count)
        }) { (error) in
            guard let error = error else { print("error"); return }
            print(error)
        }
    }
}
