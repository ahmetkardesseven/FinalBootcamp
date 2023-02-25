//
//  Foods.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import Foundation

class Foods : Codable
{
    var yemek_id : String?
    var yemek_adi : String?
    var yemek_fiyat : String?
    var yemek_resim_adi : String?
    
    init(){
        
    }
    
    init(yemek_id : String, yemek_adi : String, yemek_fiyat : String, yemek_resim_adi : String )
    {
        self.yemek_id = yemek_id
        self.yemek_adi = yemek_adi
        self.yemek_fiyat = yemek_fiyat
        self.yemek_resim_adi = yemek_resim_adi
    }
}
