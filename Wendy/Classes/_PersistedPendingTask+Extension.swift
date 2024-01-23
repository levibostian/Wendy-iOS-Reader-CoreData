import CoreData
import Foundation
import Wendy

internal extension PersistedPendingTask {
    convenience init() {
        // This exists so when children of PendingTask initialize pending tasks with self.init(), we are automatically setting the CoreData context. We don't want the developer to even realize we are using CoreData here so we are hiding this.
        let managedContext = CoreDataManager.shared.viewContext
        self.init(entity: NSEntityDescription.entity(forEntityName: "PersistedPendingTask", in: managedContext)!, insertInto: managedContext)
    }

    var pendingTask: PendingTask {
        return PendingTask(tag: self.tag!, taskId: self.id, dataId: self.dataId, groupId: self.groupId, createdAt: self.createdAt)
    }

    // should only be called if pendingTask is fully populated. 
    // this sdk is a reader, only. So, the database should always have fully populated pending task objects. 
    convenience init(pendingTask: PendingTask) { 
        self.init()
        self.dataId = pendingTask.dataId
        self.groupId = pendingTask.groupId
        self.tag = pendingTask.tag
        self.createdAt = pendingTask.createdAt!
        self.id = pendingTask.taskId!
    }

    // Using instead of Equatable protocol because Swift does not allow a protocol inherit another protocol *and* I don't want the subclass to inherit Equatable, I just want to internally.
    func equals(_ other: PersistedPendingTask) -> Bool {
        return tag == other.tag &&
            dataId == other.dataId
    }
}