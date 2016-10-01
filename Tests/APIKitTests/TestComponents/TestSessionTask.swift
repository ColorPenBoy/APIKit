import Foundation
import APIKit

private var lastId = 0

class TestSessionTask: SessionTask {

    var taskIdentifier: Int
    var handler: (Data?, URLResponse?, Error?) -> Void
    var cancelled = false

    init(handler: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let id = lastId + 1
        lastId = id
        
        self.taskIdentifier = id
        self.handler = handler
    }

    func resume() {

    }

    func cancel() {
        cancelled = true
    }
}
