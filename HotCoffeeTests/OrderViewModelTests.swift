//
//  OrderViewModelTests.swift
//  HotCoffeeTests
//
//  Created by ChaoBo-Shang on 2022/6/5.
//

import XCTest
@testable import HotCoffee

class OrderViewModelTests: XCTestCase {

    private var orderListVM: OrderListViewModel!
    
    override func setUp() {
        super.setUp()
        self.orderListVM = OrderListViewModel()
        self.orderListVM.ordersViewModel.append(OrderViewModel(order: Order(name: "John", email: "john@gmail.com", type: .cappuccino, size: .large)))
        self.orderListVM.ordersViewModel.append(OrderViewModel(order: Order(name: "Sam", email: "sam@gmail.com", type: .espressino, size: .small)))
    }
    
    func test_should_return_correct_display_name_for_OrderViewModel() {
        let typeNames = ["Cappuccino","Espressino"]
        
        for (index, vm) in self.orderListVM.ordersViewModel.enumerated() {
            XCTAssertEqual(vm.type, typeNames[index])
        }
    }
    
    override func tearDown() {
        super.tearDown()
        
    }
}
