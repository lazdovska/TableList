//
//  DetailMovieViewController.swift
//  TableList
//
//  Created by kristine.lazdovska on 03/08/2021.
//

import UIKit

class DetailMovieViewController: UIViewController {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleView: UILabel!
    @IBOutlet weak var movieYearView: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil{
            movieImageView.image = UIImage(named: movie.poster)
            movieTitleView.text = movie.movieTitle + " "
            movieYearView.text = movie.year + " "
            movieTitleView.numberOfLines = 0
            movieYearView.numberOfLines = 0
        }
    }
}
