### Lambda

**Lambda** is an anonymous function or code block that can be used in various contexts to perform dynamic operations. Lambdas allow you to define custom logic or behavior that can be executed at runtime.
```
$numbers = [1, 2, 3, 4, 5]

$numbers.each |$number| {
  notify { "Number: $number":
    message => "Processing number $number",
  }
}
```
In Puppet manifests, you can use lambdas with functions like **each**, **map**, **filter**, and **reduce** to iterate over collections or perform transformations on data. Lambdas are often defined using the **|parameters|** **{ code }** syntax, where **parameters** represent the variables or arguments that the lambda accepts, and code represents the logic or actions to be performed.
