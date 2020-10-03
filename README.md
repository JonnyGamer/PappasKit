# PappasKit
Welcome to PappasKit! Developed by Jonathan Pappas.

You can add us to your Swift Package Manager like so:
```
https://github.com/JonnyGamer/PappasKit
```

# Features

### Advanced Enum Conformances

```swift
enum Foo: ClosedRange<Double> {
    case foo = "1...inf"
}
print(Foo.foo.rawValue == 1...(Double.infinity))
```

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
