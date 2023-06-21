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


---------------------------------
### lambda.pp CODE 
It defines the class angelica_training::lambda and includes the angelica_training::service class. It then defines an array $create_files_array containing file specifications in the form of strings. Each string represents a file and its attributes, separated by commas.

The code uses a foreach loop to iterate over each element in $create_files_array. Inside the loop, it splits each string into individual components using the split() function and assigns them to variables. These variables are then used to create a file resource for each file, with the specified attributes such as ensure, content, owner, group, mode, and notify.

Overall, the code should create the specified files with the given attributes and ensure that the cups service is notified whenever a file resource is modified.

### lambda_copy_file.pp

**exec:** This is the resource type in Puppet that allows you to execute commands on the system.

**append_date:** This is the name or title of the resource. It is used to uniquely identify the resource within the Puppet manifest.

**command:** This parameter specifies the command that will be executed. In this case, the command is "echo 'Current Date: $(date +%Y-%m-%d)' >> /tmp/amacias1b". This command appends the current date in the format YYYY-MM-DD to the file /tmp/amacias1b. The $(date +%Y-%m-%d) is a shell command within the echo command that retrieves the current date.

**path:** This parameter specifies the list of directories in which Puppet should search for the command specified in the command parameter. In this case, it is set to ['/bin'], which means Puppet will search for the echo and date commands in the /bin directory.

**onlyif:** This parameter allows you to specify a command or a script that determines whether the command should be executed. If the command specified in onlyif returns a zero exit status, indicating success, then the command will be executed. In this case, the command is 'ls /tmp/do_the_copy', which checks if the file /tmp/do_the_copy exists.

**cwd:** This parameter sets the current working directory for the command execution. In this case, it is set to "/user/sms/tmp/", which means the command will be executed with that directory as the current working directory.

These parameters collectively define an exec resource that appends the current date to the file /tmp/amacias1b if the file /tmp/do_the_copy exists. The path parameter ensures that the required commands are available, and cwd sets the working directory for the command execution.
