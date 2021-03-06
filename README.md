# PappasKit
Welcome to PappasKit! Developed by Jonathan Pappas.

You can add us to your Swift Package Manager like so:
```
https://github.com/JonnyGamer/PappasKit
```

---

# Features

The following explains what PappasKit does.

- [Enums](https://github.com/JonnyGamer/PappasKit#enums)
   - [Advanced Enum Conformances](https://github.com/JonnyGamer/PappasKit#advanced-enum-conformances)
   - [Generic Enum Conformances](https://github.com/JonnyGamer/PappasKit#generic-enum-conformances)
   - [Optional Enum Conformances](https://github.com/JonnyGamer/PappasKit#optional-enum-conformances)
   - [Enum Todos](https://github.com/JonnyGamer/PappasKit#enum-todos)
   
---

## Enums
PappasKit greatly expands the use of enums in Swift.

### Advanced Enum Conformances
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
    case too = 0 // This is `nil`
}
```
**Note:** if you are conforming an enum to an optional version of itself, it must also conform to the `CaseIteralble` protocol.
```swift
// This syntax is super neat!
enum Hi: Hi?, Enum {
    case boo = "boo"
    case bot = "bot"
    case too = 0 // This is `nil`
}
Hi.boo == Hi.boo.rawValue // true
```
### Enum Todos
These examples do not work just yet.
```swift
enum foo: [foo] {}
```
