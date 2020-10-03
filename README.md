# PappasKit
Welcome to PappasKit! Developed by Jonathan Pappas.

You can add us to your Swift Package Manager like so:
```
https://github.com/JonnyGamer/PappasKit
```

# Features

### Advanced Enum Conformances
Instead of only String, Int, and Floating Point Numbers.. PappasKit extends enums to be able to conform to Bool, Range, ClosedRange, Array, Set, Dictionary, and their Recursive Versions (i.e. `[[[Int]]]` or `[[String]:[Int:Int]]`)
```swift
enum Foo: ClosedRange<Double> {
    case foo = "1...inf"
    case foo = "01...inf"
}
print(Foo.foo.rawValue == 1...(Double.infinity))
print(Foo.foo == Foo.bar) // Surprisingly True
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
