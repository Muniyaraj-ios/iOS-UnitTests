//
//  ChatListViewModel_tests.swift
//  iOS UnitTestsTests
//
//  Created by MacBook on 08/11/24.
//

@testable import iOS_UnitTests
import XCTest

//  Naming Structure : test_UnitOfWork_StateUnderTest_ExpectedBehaviour
//  Naming Structure : test_[struct or class]_[variable or function]_[expected_result]
//  Testing Structure : Given, When, Then

final class ChatListViewModel_tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testChatListViewModel_isChatTypeShouldbeAll(){
        // Given
        
        // When
        let vm = ChatListViewModel(chatType: .all)
        
        // Then
        XCTAssertTrue(vm.chatType == .all, "ChatType injected value is not All")
    }
    
    func testChatListViewModel_isChatTypeShouldbeSpam(){
        // Given
        
        // When
        let vm = ChatListViewModel(chatType: .spam)
        
        // Then
        XCTAssertTrue(vm.chatType == .spam, "ChatType injected value is not Spam")
        
        XCTAssertFalse(vm.chatType == .all, "ChatType injected value is not Spam")
    }
    
    func testChatListViewModel_isChatTypeShouldbeArchieved(){
        // Given
        let chatType: MessageFilter = .archived
        
        // When
        let vm = ChatListViewModel(chatType: chatType)
        
        // Then
        XCTAssertTrue(vm.chatType == chatType, "ChatType injected value is not Archieved")
    }
    
    func testChatListViewModel_isChatTypeShouldbe_injectedValue(){
        // Given
        let randomvalue: MessageFilter = .archived
        let randomvalue1: MessageFilter = .spam
        
        // When
        let vm = ChatListViewModel(chatType: randomvalue)
        let vm1 = ChatListViewModel(chatType: randomvalue1)
        
        // Then
        XCTAssertTrue(vm.chatType == randomvalue, "ChatType injected value is incorrect")
        XCTAssertTrue(vm1.chatType == randomvalue1, "ChatType injected value is incorrect")
    }

}
