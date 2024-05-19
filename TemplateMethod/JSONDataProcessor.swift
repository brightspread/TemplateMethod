//
//  JSONDataProcessor.swift
//  TemplateMethod
//
//  Created by Leo on 5/19/24.
//

import Foundation

// 하위 클래스는 DataProcessor를 상속받아 필요한 메서드들을 오버라이드
class JSONDataProcessor: DataProcessor {
    // 메서드를 fileprivate로 설정하여 외부 접근 차단
    @available(*, unavailable, message: "This method should not be called directly. Use process() instead.")
    override func fetchData() {
        print("Fetching JSON data")
    }
    
    @available(*, unavailable, message: "This method should not be called directly. Use process() instead.")
    override func processData() {
        print("Processing JSON data")
    }
    
    @available(*, unavailable, message: "This method should not be called directly. Use process() instead.")
    override func saveData() {
        print("Saving processed JSON data")
    }
}
