//
//  ProfileRouter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class ProfileRouter : PresenterToRouterProfileProtocol
{
    static func createModule(ref: ProfileViewController) {
        
        let presenter = ProfilePresenter()
        ref.profilePresenterObject = presenter
        ref.profilePresenterObject?.profileInteractor = ProfileInteractor()
        ref.profilePresenterObject?.profileView = ref
        ref.profilePresenterObject?.profileInteractor?.profilePresenter = presenter
    }
    
}
