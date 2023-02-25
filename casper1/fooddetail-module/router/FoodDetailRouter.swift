//
//  FoodDetailRouter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class FoodDetailRouter : PresenterToRouterFoodDetailProtocol
{
    static func createModule(ref: FoodsDetailViewController) {
        ref.foodDetailPresenterObject = FoodDetailPresenter()
        ref.foodDetailPresenterObject?.foodDetailInteractor = FoodDetailInteractor()
    }
}
