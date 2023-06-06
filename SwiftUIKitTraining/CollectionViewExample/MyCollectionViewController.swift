//
//  MyCollectionViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 14/05/23.
//

import UIKit

class MyCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: CustomCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        /// Uncomment for full screen collectionView
        collectionView.collectionViewLayout = self.createLayout()
        
        ///// Uncomment for horizontal collectionView
//        if let flowLayout = self.collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
//            collectionView.collectionViewLayout = flowLayout
//        }
    }
}

extension MyCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell {
            cell.delegate = self
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}

extension MyCollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension MyCollectionViewController {
    func createLayout() -> UICollectionViewCompositionalLayout {
      // item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        item.contentInsets = NSDirectionalEdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4)
        
        // Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.35)), subitem: item, count: 2)
        
        //section
        let section = NSCollectionLayoutSection(group: group)
        
        // return
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension MyCollectionViewController: CustomCollectionViewCellProtocol {
    func onTapConfirmButton() {
        print("confirm button tapped")
    }
    
    func onTapDeleteButton() {
        print("delete button tapped")
    }
    
    
}
