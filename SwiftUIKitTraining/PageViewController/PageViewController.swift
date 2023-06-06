//
//  PageViewController.swift
//  SwiftUIKitTraining
//
//  Created by Ashwin A U on 30/05/23.
//

import UIKit

class PageViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var pageControl: UIPageControl!
    var thisWidth: CGFloat = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: CarouselView.identifier, bundle: nil), forCellWithReuseIdentifier: CarouselView.identifier)
        collectionView.register(UINib(nibName: CustomCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        pageControl.numberOfPages = 10
        pageControl.hidesForSinglePage = true
    }
}

extension PageViewController: UICollectionViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offset = scrollView.contentOffset.x
        let width = scrollView.frame.width
        let horizontalAlignment = width / 2
        pageControl.currentPage = Int(offset + horizontalAlignment) / Int(width)
    }
}

extension PageViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 1,3,5,7,8:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarouselView.identifier, for: indexPath) as? CarouselView else { return UICollectionViewCell() }
            
            return cell
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell else { return UICollectionViewCell() }
//            cell.delegate = self
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItem indexPath: IndexPath) -> CGSize {
        thisWidth = CGFloat(collectionView.frame.width)
        return CGSize(width: thisWidth, height: collectionView.frame.height)
    }
}
