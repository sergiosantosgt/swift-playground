import Foundation
import UIKit

struct Website {
    
    init(url: String) {
        defer { self.url = url }
        
        self.url = url
    }
    
    var url: String {
        
        willSet {
            
        }
        
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url
        }
    }
}

var website = Website(url: "www.movies.com/?search=Lord of the Rings") // didSet não executado se nao utilizar defer init
print(website)
website.url = "www.movies.com/?search=Lord of the Rings" // didSet executado por ser adicionado após a instancia do objeto
print(website)
