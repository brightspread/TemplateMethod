//
//  DataProcessor.swift
//  TemplateMethod
//
//  Created by Leo on 5/19/24.
//

import Foundation


class DataProcessor {
    // 템플릿 메서드
    final func process() {
        fetchData()
        processData()
        saveData()
    }
    
    func fetchData() {
        fatalError("Must override fetchData")
    }
    
    func processData() {
        fatalError("Must override processData")
    }
    
    func saveData() {
        fatalError("Must override saveData")
    }
}
