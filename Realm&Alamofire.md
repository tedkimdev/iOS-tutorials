#Realm and Alamofire

####Ref
https://blog.hyphe.me/realm-and-alamofire-in-a-effective-harmony/

```

import Foundation

import ObjectMapper
import RealmSwift

class Book: Object, Mappable {
    dynamic var id = 0
    dynamic var title = ""
    dynamic var autor = ""
    dynamic var genre = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    //Impl. of Mappable protocol
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id    <- map["id"]
        title <- map["title"]
        autor <- map["autor"]
        genre <- map["genre"]
    }
    
}

/* Alamofire */
//        Alamofire.request(
//            "https://bitbucket.org/hyphe/blog-examples/raw/master/fetchData/demoapi/books",
//            method: .get
//        ).responseJSON { response in
//            print("response.request", response.request!)
//            print("response.response", response.response!)
//            print("response.data", response.data!)
//            print("reponse.result", response.result)
//        }

Alamofire.request(
    "https://bitbucket.org/hyphe/blog-examples/raw/master/fetchData/demoapi/books",
    method: .get
    ).responseJSON { response in
        
        guard response.result.error == nil else { return }
        
        guard let books = response.result.value as? [[String: Any]] else { return }
        
        
        print(books)
}
```
