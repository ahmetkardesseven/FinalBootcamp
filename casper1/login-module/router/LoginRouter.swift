//
//  LoginRouter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class LoginRouter : PresenterToRouter
{
    static func createModule(ref: ViewController) {
        ref.loginPresenterObject = LoginPresenter()
        ref.loginPresenterObject?.loginInteractor = LoginInteractor()
    }
    
}
