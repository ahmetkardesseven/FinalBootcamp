//
//  ProfileInteractor.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation
import Firebase

class ProfileInteractor : PresenterToInteractorProfileProtocol
{
    var profilePresenter: InteractorToPresenterProfileProtocol?
    
    func showInfo() {
        let auth = Auth.auth()
        
        let email = (auth.currentUser?.email)!
      
        profilePresenter?.sendDataToPresenter(email: email)
    }
    
}
