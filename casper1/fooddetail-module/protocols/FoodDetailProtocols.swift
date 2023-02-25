//
//  FoodDetailProtocols.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

protocol ViewToPresenterFoodDetailProtocol
{
    var foodDetailInteractor : PresenterToInterActorFoodDetailProtocol? {get set}
    func addAllCart(yemek_adi : String, yemek_fiyat : String, yemek_resim_adi : String, yemek_siparis_adet:String, kullanici_adi:String)
}
protocol PresenterToInterActorFoodDetailProtocol
{
   func addCart(yemek_adi : String, yemek_fiyat : String, yemek_resim_adi : String, yemek_siparis_adet:String, kullanici_adi:String)
}

protocol PresenterToRouterFoodDetailProtocol
{
    static func createModule(ref : FoodsDetailViewController)
}
