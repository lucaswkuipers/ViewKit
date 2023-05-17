# ViewKit

ViewKit is a lightweight and user-friendly Swift package that brings SwiftUI-like, declarative syntax to UIKit. It provides a way to write UIKit code in a declarative and chainable manner, similar to SwiftUI, making UIKit development more streamlined and approachable. Most customization properties available in UIKit are supported in ViewKit using method chaining for a more fluid and readable syntax.

![ViewKit](https://user-images.githubusercontent.com/59176579/222473974-87773492-ef28-4e1e-b0fd-08c953bdd3e3.png)

## Installation

You can install ViewKit using Swift Package Manager. Simply add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/lucaswkuipers/ViewKit.git", from: "1.0.0")
]
```

## Usage

### ProgrammaticView

`ProgrammaticView` is the main protocol in ViewKit for creating views. Here's how you can use it:

Define your view by implementing the `ProgrammaticView` protocol and providing your layout within the `body` property.

Here's an example:

```swift
import ViewKit

final class MyView: ProgrammaticView {

    var body: UIView {
        VerticalStack(spacing: 20) {
            UILabel("Hello, world!")
                .font(.preferredFont(forTextStyle: .largeTitle))

            UIButton("Tap me!") { _ in print("Tapped") }
                .font(.preferredFont(forTextStyle: .title1))
                .backgroundColor(.systemBlue)
                .cornerRadius(10)
        }
    }
}
```

#### VerticalStack and HorizontalStack

`VerticalStack` and `HorizontalStack` work similarly to `VStack` and `HStack` in SwiftUI. They are used to stack views vertically and horizontally, respectively. 

```swift
VerticalStack(spacing: 20) {
    // Your views here
}

HorizontalStack(spacing: 20) {
    // Your views here
}
```

Additionally, `UIView` can be used similarly to `ZStack` in SwiftUI, for stacking views on top of each other.

#### Filler

`Filler` works similar to `Spacer` in SwiftUI. It pushes adjacent views away, taking up all available space.

```swift
HorizontalStack(spacing: 20) {
    UILabel("Hello")
    Filler()
    UILabel("World")
}
```

In this example, the "Hello" and "World" labels will be pushed to opposite sides of the screen, with all the remaining space in between being filled by the `Filler`.

### ViewController

You can use this `ProgrammaticView` with a custom `ViewController` that takes a `ProgrammaticView` in its constructor and sets it as its view.

Here's an example:

```swift
let viewController = ViewController(with: MyView())
```

### Previews

You can also preview your ViewKit views in the Xcode canvas by embedding your `ProgrammaticView` in a `PreviewContainer` like so:

```swift
import SwiftUI

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewContainer {
            MyView()
        }
    }
}
```

## Advanced Concepts

### Result Builders and Fluent Interfaces

ViewKit leverages Swift's result builders and fluent interfaces to create a more declarative syntax and reduce boilerplate code. This helps keep your UIKit code clean and easy to understand.

## License

ViewKit is available under the MIT license. See the LICENSE file for more information.

## Swift Package Index

Check out on Swift Package Index: [https://swiftpackageindex.com/lucaswkuipers/ViewKit](https://swiftpackageindex.com/lucaswkuipers/ViewKit
