# PappasKit
Welcome to PappasKit! Developed by Jonathan Pappas.

You can add us to your Swift Package Manager like so:
```
https://github.com/JonnyGamer/PappasKit
```



### Advanced Enum Conformances

```swift
enum Foo: [Int] {
    case foo = "[5,6,7,7]"
}
print(Foo.foo.rawValue == [5, 6, 7, 7])
```
