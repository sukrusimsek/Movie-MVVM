//
//  UICollectionView+Ext.swift
//  Movie-MVVM
//
//  Created by Şükrü Şimşek on 5.11.2023.
//

import UIKit

extension UICollectionView {
    func reloadOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
