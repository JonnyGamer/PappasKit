# PappasKit
Welcome to PappasKit! Developed by Jonathan Pappas.

You can add us to your Swift Package Manager like so:
```
https://github.com/JonnyGamer/PappasKit
```

# Features

The following explains what PappasKit does.

- Enums
   - Advanced Enum Conformances
   - Generic Enum Conformances
   - Optional Enum Conformances
   - Todo

## Enums
PappasKit greatly expands the use of enums in Swift.

# Advanced Enum Conformances
Instead of only String, Int, and Floating Point Numbers.. PappasKit extends enums to be able to conform to Bool, Range, and ClosedRange.
```swift
enum Foo: Bool {
    case foo = true
    case bar = false
}
```
```swift
enum Foo: ClosedRange<Double> {
    case foo = "1...inf"
    case bar = "01...inf"
}
print(Foo.foo.rawValue == 1...(Double.infinity))
print(Foo.foo == Foo.bar) // Surprisingly True
```

### Generic Enum Conformances
PappasKit also allows enums to conform to generic objects like Array, Set, Dictionary, and their Recursive Versions (i.e. `[[[Int]]]` or `[[String]:[Int:Int]]`)

```swift
enum Foo: [Int] {
    case foo = "[5,6,7,7]"
}
print(Foo.foo.rawValue == [5, 6, 7, 7])
```

```swift
enum Foo: [String:[Int]] {
    case foo = "['foo bar': [1, 2, 3, 4], 'hello': [1, 2, 3, 4]]"
}
print(Foo.foo.rawValue == ['foo bar': [1, 2, 3, 4], 'hello': [1, 2, 3, 4]])
```

### Optional Enum Conformances
PappasKit also allows enums to conform to optionals.

```swift
enum Hii: Bool? {
    typealias RawValue = Bool?
    case boo = true
    case bot = false
    case too = 0 // This turns to `nil`
}
extension Optional: ExpressibleByIntegerLiteral  {
    public init(integerLiteral value: Int) { self = nil }
}
```
**Note:** if you are conforming an enum to an optional version of itself, it must also conform to the `CaseIteralble` protocol.
```swift
// This syntax is super neat!
enum Hi: Hi?, CaseIterable {
    // public typealias RawValue = Hi?
    case boo = "boo"
    case bot = "bot"
    case too = 0
}
extension Hi: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) {
        self = Hi.allCases.filter { "\($0)" == value }.first!
    }
}
```
### Todo
These examples do not work just yet.
```swift
enum fff: [fff] {}
```
