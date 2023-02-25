//
//  CartRouter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class CartRouter : PresenterToRouterCartProtocol
{
    static func createModule(ref: CartViewController) {
        
        let presenter = CartPresenter()
        ref.cartPresenterObject = presenter
        ref.cartPresenterObject?.cartInteractor = CartInteractor()
        ref.cartPresenterObject?.cartView = ref
        ref.cartPresenterObject?.cartInteractor?.cartPresenter = presenter
        
    }
}
