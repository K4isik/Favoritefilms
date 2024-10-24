
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!


    let favoriteBooks: [FavoriteItem] = [
        FavoriteItem(title: "Titanic", year: "1997", coverImage: UIImage(named: "Titanic")!, genre: "Drama"),
        FavoriteItem(title: "Oppenheimer", year: "2023", coverImage: UIImage(named: "Oppenheimer")!, genre: "Historical"),
        FavoriteItem(title: "1+1", year: "2011", coverImage: UIImage(named: "1+1")!, genre: "Drama"),
        FavoriteItem(title: "Deadpool", year: "2016", coverImage: UIImage(named: "Deadpool")!, genre: "Action"),
        FavoriteItem(title: "The Godfather", year: "1972", coverImage: UIImage(named: "The Godfather")!, genre: "Crime"),
        FavoriteItem(title: "Scarface", year: "1983", coverImage: UIImage(named: "Scarface")!, genre: "Crime"),
        FavoriteItem(title: "The Mechanic", year: "2011", coverImage: UIImage(named: "The Mechanic")!, genre: "Thriller"),
        FavoriteItem(title: "Forrest Gump", year: "1994", coverImage: UIImage(named: "Forrest Gump")!, genre: "Drama"),
        FavoriteItem(title: "Napoleon", year: "2023", coverImage: UIImage(named: "Napoleon")!, genre: "Historical"),
        FavoriteItem(title: "In the Heart of the Sea", year: "2015", coverImage: UIImage(named: "Heart of the sea")!, genre: "Adventure"),
        

    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    
        tableView.delegate = self
        tableView.dataSource = self
    }

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteBooks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteItemCell", for: indexPath) as! FavoriteItemCell
        let book = favoriteBooks[indexPath.row]
        
     
        cell.titleLabel.text = book.title
        cell.yearLabel.text = book.year
        cell.genreLabel.text = book.genre
        cell.coverImageView.image = book.coverImage
        
        
        return cell
    }
}

struct FavoriteItem {
    let title: String
    let year: String
    let coverImage: UIImage
    let genre:String
}

