//
//  LoginProtocols.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation


import Foundation

protocol ViewToPresenterLoginProtocol
{
    var loginInteractor : PresenterToInteractorLoginProtocol? {get set}
    func loginAll(email : String, password : String )
}

protocol PresenterToInteractorLoginProtocol
{
    func login(email : String, password : String )
}

protocol PresenterToRouter
{
    static func createModule(ref:ViewController)
}

