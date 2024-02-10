import CoreData
import Foundation
import Wendy

internal extension PersistedPendingTaskError {
    convenience init() {
        let managedContext = CoreDataManager.shared.viewContext
        self.init(entity: NSEntityDescription.entity(forEntityName: "PersistedPendingTaskError", in: managedContext)!, insertInto: managedContext)
    }

    convenience init(errorMessage: String?, errorId: String?, persistedPendingTask: PersistedPendingTask) {
        self.init()
        self.pendingTask = persistedPendingTask
        self.errorId = errorId
        self.errorMessage = errorMessage
        self.createdAt = Date()
    }
}
