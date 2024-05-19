## Template Method Pattern

The Template Method Pattern is a design pattern that defines the skeleton of an algorithm in a superclass, while allowing subclasses to implement specific details. This pattern enhances code reusability and allows the modification of certain steps in an algorithm without changing its overall structure.

### Structure of the Template Method Pattern

The Template Method Pattern consists of the following structure:
	1.	AbstractClass: Defines the skeleton of the algorithm and includes one or more template methods (here, templateMethod).
	2.	ConcreteClass: Subclass of AbstractClass that implements the abstract methods.

*Example Implementation in Swift*

In this example, the DataProcessor class defines the template method process(), which calls three abstract methods: fetchData(), processData(), and saveData(). These methods are meant to be overridden by subclasses.

**Abstract Class**
```
import Foundation

class DataProcessor {   
    // Template method
    final func process() {
        fetchData()
        processData()
        saveData()
    }
    
    func fetchData() {
        fatalError("Must override fetchData")
    }
    ...
}
```
**Concrete Class**
```
class JSONDataProcessor: DataProcessor {
    @available(*, unavailable, message: "This method should not be called directly. Use process() instead.")
    override func fetchData() {
        print("Fetching JSON data")
    }
    ...
}
```
**Sample**
```
import Foundation

let processor = JSONDataProcessor()
processor.process()

// processor.fetchData() // Error: 'This method should not be called directly. Use process() instead.'
```

### Why @available Attribute?
The @available attribute is crucial. It prevents direct calls to abstract methods. By marking these methods as unavailable and providing a custom message, developers get a compile-time warning if they try to call these methods directly. This ensures that only process() executes the algorithm, maintaining the integrity of the Template Method Pattern.
