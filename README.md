# What do @main, @UIApplicationMain, and @NSApplicationMain mean

excerpts from [sarunw.com](https://sarunw.com/posts/what-do-main-uiapplicationmain-nsapplicationmain-mean/)

## Summary

`@main`, `@UIApplicationMain`, and `@NSApplicationMain` are attributes that cause the compiler to synthesize an entry point for our application and eliminate the need for a "main.swift" file.

## Details

The entry point in Swift is a special file named "main.swift". The main.swift file can contain top-level code, and it run in order-dependent manner. And this is the only file that gets the exception.

Here is how a main.swift file looks like, it creates an application object and application delegate for our app. This acts as an entry point for your application.

```swift
import UIKit

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    nil,
    NSStringFromClass(AppDelegate.self)
)
```

You can use this to launch a custom subclass of UIApplication. You can do that by specifying it in a third argument.

This is an example where we try to launch a custom subclass of UIApplication.

```swift
class MyApplication: UIApplication {}

UIApplicationMain(
    CommandLine.argc,
    CommandLine.unsafeArgv,
    NSStringFromClass(MyApplication.self),
    NSStringFromClass(AppDelegate.self)
)
```

But you rarely need to do that. So, most of the time, the main.swift is just a boilerplate code. This is where `@main`, `@UIApplicationMain`, and `@NSApplicationMain` are trying to help. They generate this boilerplate code behind the scene.

In the past, macOS templates will include a "main.swift" file for you, but you won't see this anymore in the new version of Xcode. Depending on your Xcode version, you will only see either the `@main`, `@UIApplicationMain`, `@NSApplicationMain` attributes.

## Create your own entry point

If you try creating main.swift and run the app, you will get the following compile error.

| 'main' attribute cannot be used in a module that contains top-level code.

That's because we just replicate the @main attribute work by creating an entry point. To make our app run again, simply remove the @main attribute from the AppDelegate.
