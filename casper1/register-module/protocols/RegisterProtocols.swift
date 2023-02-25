//
//  RegisterProtocols.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

protocol ViewToPresenterRegisterProtocol
{
    var registerInteractor : PresenterToInteractorRegisterProtocol? {get set}
    
    func registerAll(email : String, password : String)
}

protocol PresenterToInteractorRegisterProtocol
{
    func register(email : String, password : String)
}

protocol PresenterToRouterRegisterProtocol
{
    static func createModule(ref: RegisterViewController)
}
