//
//  MovieTableViewController.swift
//  TableList
//
//  Created by kristine.lazdovska on 02/08/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)
        
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.movieTitle
        cell.detailTextLabel?.text = movie.year
        cell.imageView?.image = UIImage(named: movie.poster)
        
        return cell
    }
    
    //Mark: - Table View Delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentmovie = movies.remove(at: fromIndexPath.row)
        movies.insert(currentmovie, at: to.row)
    }
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            // Get the new view controller using segue.destination.
            print(indexPath)
            let detailVC = segue.destination as! DetailMovieViewController
            // Pass the selected object to the new view controller.
            detailVC.movie = movies[indexPath.row]
        }
    }
}
