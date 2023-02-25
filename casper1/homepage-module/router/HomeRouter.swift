//
//  HomeRouter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation


class HomeRouter : PresenterToRouterHomePageProtocol
{
    static func createModule(ref: HomePageViewController) {
        
        let pressenter = HomePresenter()
        ref.homepagePresenterOnject = pressenter
        ref.homepagePresenterOnject?.homepageInteractor = HomeInteractor()
        ref.homepagePresenterOnject?.homepageView = ref
        ref.homepagePresenterOnject?.homepageInteractor?.homepagePresenter = pressenter
    }
}
