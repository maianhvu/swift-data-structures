CS3217 Problem Set 1
==

**Name:** Mai Anh Vu

**Matric No:** A0127046L

**Tutor:** Zhang Yijiang

## Instructions for Students

1. Clone this repository to begin working.
2. Do not modify the `AppDelegate.swift`, `LaunchScreen.xib`, `Main.storyboard`, `Images.xcassets` files (you do not have to).
3. Write your answers to non-coding questions in this file (`README.md`).

## Tips

1. CS3217's Gitbook is at https://www.gitbook.com/book/cs3217/problem-sets/details. Do visit the Gitbook often, as it contains all things relevant to CS3217. You can also ask questions related to CS3217 there.
2. Take a look at `.gitignore`. It contains rules that ignores the changes in certain files when committing an Xcode project to revision control. (This is taken from https://github.com/github/gitignore/blob/master/Swift.gitignore).
3. A Swiftlint configuration file is provided for you. It is recommended for you to use Swiftlint and follow this configuration. Keep in mind that, ultimately, this tool is only a guideline; some exceptions may be made as long as code quality is not compromised.
4. Do not burn out. Have fun!

## Problem 1: Swift Collections

The `Hashable` protocol requires the `Int` `hashValue` variable from objects
that conform to it. The `Dictionary` will need this variable for its internal
implementation of hashing. Without it (and the conformation to the `Hashable`
protocol), the compiler will flag an error.

## Problem 3: Graph Traversal

## Problem 3.3

Returning `nil` is preferred to throwing an exception when the absence of the
return value is expected or insignificant to the logic of the program.
Furthermore, it's even more convenient in Swift to return `nil` when dealing with
such values, thanks to the native support for optionals.
