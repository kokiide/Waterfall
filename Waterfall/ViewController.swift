//
//  ViewController.swift
//  Waterfall
//
//  Created by Koki Ide on 2017/05/22.
//  Copyright © 2017 Koki Ide. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ListCollectionViewController: UICollectionViewController {
    
    let array2 = ["月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日", "m1", "m2", "m3", "m4", "m5", "m6", "t1", "t2", "t3", "t4", "t5", "t6", "w1", "w2", "w3", "w4", "w5", "w6", "t1", "t2", "t3", "t4", "t5", "t6", "f1", "f2", "f3", "f4", "f5", "f6", "s1", "s2", "s3", "s4", "s5", "s6"]
    
    let saveData = UserDefaults.standard  //まだ定義できてない。
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView!.register(CollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        
        //チュートリアル通りなら collectionView.register(ColorCollectionViewCell.self, forCellWithReuseIdentifier: "colorCell")
        
        //元からあった文章は右　self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        //それのアレンジ　self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 1{
            return 7
        } else {
            return array2.count}
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.awakeFromNib()
        
        //ラベルに代入！
        let names = array2[indexPath.row]
        cell.className.text = names
        
        
        return cell
    }
    
    
    
}
