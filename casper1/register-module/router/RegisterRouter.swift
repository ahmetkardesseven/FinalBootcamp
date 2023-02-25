//
//  RegisterRouter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class RegisterRouter : PresenterToRouterRegisterProtocol
{
    static func createModule(ref: RegisterViewController) {
        ref.registerRresneterObject = RegisterPresenter()
        ref.registerRresneterObject?.registerInteractor = RegisterInteractor()
    }
}
