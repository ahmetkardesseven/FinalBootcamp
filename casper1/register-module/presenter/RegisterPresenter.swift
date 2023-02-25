//
//  RegisterPresenter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class RegisterPresenter : ViewToPresenterRegisterProtocol
{
    var registerInteractor: PresenterToInteractorRegisterProtocol?
    
    func registerAll(email: String, password: String) {
        registerInteractor?.register(email: email, password: password)
    }
    
}
