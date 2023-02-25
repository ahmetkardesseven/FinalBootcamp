//
//  FoodDetailPresenter.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class FoodDetailPresenter : ViewToPresenterFoodDetailProtocol
{
    var foodDetailInteractor: PresenterToInterActorFoodDetailProtocol?
    
    func addAllCart(yemek_adi: String, yemek_fiyat: String, yemek_resim_adi: String, yemek_siparis_adet: String, kullanici_adi: String) {
        
        foodDetailInteractor?.addCart(yemek_adi: yemek_adi, yemek_fiyat: yemek_fiyat, yemek_resim_adi: yemek_resim_adi, yemek_siparis_adet: yemek_siparis_adet, kullanici_adi: kullanici_adi)
    }
    
}
