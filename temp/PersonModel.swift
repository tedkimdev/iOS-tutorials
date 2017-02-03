import Foundation

class PersonModel {
    
    func personName(atIndex: Int) -> String {
        <#function body#>
    }
    
    func personNumber(atIndex: Int) -> Int {
        <#function body#>
    }
    
    func isMale(atIndex: Int) -> Bool {
        <#function body#>
    }
    
    func personTeam(atIndex: Int) -> Int {
        <#function body#>
    }
    
    func getPersonObejct(atIndex: Int) -> Dictionary<String, Any> {
        <#function body#>
    }
    
    
    //MARK: search functions
    func findPersonName(byNumber: Int) -> String {
        <#function body#>
    }
    
    func findPersonNumber(byName: String) -> Int {
        <#function body#>
    }
    
    //MARK: sort functions
    func sortByName() -> Array<[String:Any]> {
        
    }
    func sortByNumber() -> Array<[String:Any]> {
        
    }
    func sortByTeam() -> Array<[String:Any]> {
        
    }
    
    //MARK: plus mission
    func filter(byTeam: Int) -> Array<[String:Any]> {
    
    }
    
    func filter(byGender: Bool) -> Array<[String:Any]> {
    
    }
    
    func filterDistinctByLastName() -> Array<[String:Any]> {
    //김*, 이*
    }
    
    
}
