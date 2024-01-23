# Wendy-iOS Reader CoreData

[Wendy][1] reader implementation in CoreData. 

**Note:** This project is designed to be used for data migration of old versions of Wendy. This project reads existing data, does not save new data. If you would like to use CoreData to store data for Wendy, you can create your own writer implementation for Wendy. 

# Getting started 

Install the SDK by adding a new entry to your app’s `Podfile`:

```ruby
pod 'Wendy-Reader-CoreData', '~> version-here'
```

(replace `version-here` with  [!\[Version]()[image-6][3]][7][4])

Next, add the reader to Wendy: 

```swift
import Wendy
import WendyReaderCoreData

Wendy.shared.addReader(WendyCoreDataQueueReader())
```

Done! 

The next time that Wendy executes, it will read tasks from CoreData as well as other data stores. 

[1]:	https://github.com/levibostian/Wendy-iOS/
[3]:	https://img.shields.io/cocoapods/v/Wendy-Reader-CoreData.svg?style=flat
[4]:	https://github.com/levibostian/Wendy-iOS-Reader-CoreData