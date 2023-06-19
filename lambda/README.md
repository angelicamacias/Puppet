### Lambda

**Lambda** is an anonymous function or code block that can be used in various contexts to perform dynamic operations. Lambdas allow you to define custom logic or behavior that can be executed at runtime.
```puppet
$numbers = [1, 2, 3, 4, 5]

$numbers.each |$number| {
  notify { "Number: $number":
    message => "Processing number $number",
  }
}
```
In Puppet manifests, you can use lambdas with functions like **each**, **map**, **filter**, and **reduce** to iterate over collections or perform transformations on data. Lambdas are often defined using the **|parameters|** **{ code }** syntax, where **parameters** represent the variables or arguments that the lambda accepts, and code represents the logic or actions to be performed.


---------------------------------
### CODE 
It defines the class angelica_training::lambda and includes the angelica_training::service class. It then defines an array $create_files_array containing file specifications in the form of strings. Each string represents a file and its attributes, separated by commas.

The code uses a foreach loop to iterate over each element in $create_files_array. Inside the loop, it splits each string into individual components using the split() function and assigns them to variables. These variables are then used to create a file resource for each file, with the specified attributes such as ensure, content, owner, group, mode, and notify.

Overall, the code should create the specified files with the given attributes and ensure that the cups service is notified whenever a file resource is modified.
