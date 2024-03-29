//
//  HomePageViewController.swift
//  casper1
//
//  Created by ahmet kardesseven on 25.02.2023.
//

import UIKit
import Kingfisher
import Firebase

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var foodCollectionView: UICollectionView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var foodList = [Foods]()
    var filterFood = [Foods]()
    
    var homepagePresenterOnject : ViewToPresenterHomePageProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        foodCollectionView.delegate = self
        foodCollectionView.dataSource = self
        
        activityIndicator.startAnimating()
        
        
        //Food collectionview UI
        let foodTasarim = UICollectionViewFlowLayout()
        foodTasarim.sectionInset = UIEdgeInsets(top: 8, left: 2, bottom: 8, right: 2)
        foodTasarim.minimumLineSpacing = 1
        foodTasarim.minimumInteritemSpacing = 1
        let width = foodCollectionView.frame.size.width
        let cellWidht = (width - 30) / 2
        foodTasarim.itemSize = CGSize(width: cellWidht, height: cellWidht*1.1)
        foodCollectionView.collectionViewLayout = foodTasarim
        
        HomeRouter.createModule(ref: self)
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationItem.title = ""
        homepagePresenterOnject?.showFoods()
        homepagePresenterOnject?.showFoodCount()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFoodDetail" {
            let food = sender as? Foods
            let destinationVC = segue.destination as! FoodsDetailViewController
            destinationVC.food = food
        }
    }
}

extension HomePageViewController : PresenterToViewHomePageProtocol
{
    
    func sendDataToView(foodCount: Int) {
        self.tabBarController?.tabBar.items![1].badgeValue = "\(foodCount)"
        self.tabBarController?.tabBar.items![1].badgeColor = UIColor(named: "SecondyColor")
    }
    
    func sendDataToView(foods: Array<Foods>) {
        
        self.foodList = foods
        self.filterFood = foods
        DispatchQueue.main.async {
            
            self.foodCollectionView.reloadData()
            self.activityIndicator.stopAnimating()
        }
    }
}

extension HomePageViewController : UISearchBarDelegate
{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.filterFood = self.foodList.filter { f in
            if f.yemek_adi!.lowercased().contains(searchText.lowercased()) {
                return true
            }
            if searchText.isEmpty {
                return true
            }
            return false
        }
        self.foodCollectionView.reloadData()
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()
        }
}


extension HomePageViewController : UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return filterFood.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let food = filterFood[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as! FoodsCollectionViewCell
        cell.foodNameLabel.text = food.yemek_adi!
        cell.foodPriceLabel.text = "₺\(food.yemek_fiyat!).00"
        if let url = URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(food.yemek_resim_adi!)")
        {
            DispatchQueue.main.async {
                cell.foodImageview.kf.setImage(with : url)
                
            }
        }
        
        cell.contentView.layer.cornerRadius = 17
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true;
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize.zero
        cell.layer.shadowRadius = 7.0
        cell.layer.shadowOpacity = 0.4
        cell.layer.masksToBounds = false;
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let food = filterFood[indexPath.row]
        performSegue(withIdentifier: "toFoodDetail", sender: food)
        
        
    }
    

}
