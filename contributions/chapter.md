# Contributions

This chapter outlines some of the contributions---in the form of pull requests---made by several teams to their open source project.


## IPython

[Pull Request](https://github.com/ipython/ipython/pull/11672)

To enhance the original Python syntax, IPython introduces magic commands. These are prefixed by the `%` character for line magics \(single line of input\), and `%%` for cell magics \(multiple lines of input\). This allows for a more efficient terminal experience. An example of a magic function is`%paste`, which enables the user to paste and execute code directly into IPython, regardless of line count, and ignore additional markup or prompt characters.

In our pull request, we extended the `%psearch` magic function. This function allows the user to search for objects in namespaces by wildcard; essentially matching objects according to their type, pattern, and options specified by the user. This pull request addresses the **usability** QAS aspect and **learnability debt** we discovered in the IPython system by providing a command for users of the system to quickly determine which object types are available for filtering. This improves the overall efficiency at which users can find the object they are searching for.

## JSettlers2
As part of our evaluation and assessment of JSettlers2, we submitted a number of pull requests to help improve JSettlers2. All of the pull requests were accepted with minimal change required by the owners. Most of these pull requests aided in our ability to understand the JSettlers2 code base.

* Our first pull request was adjusting the Java version from v1.5 to v1.6. This was done as the code would not compile with a Java 11 compiler. In addition, Java v1.5 is no longer support by Oracle. (https://github.com/jdmonin/JSettlers2/pull/49)
* Our next pull request cleaned up the scope of many classes in JSettlers2. In Java, the default scope is package; however, this is not explicitly apparent and therefore it is good style to put `/*package*/` in front of every default scope class. In addition, many other classes were public that did not need to be, so those classes were changed to package scope. (https://github.com/jdmonin/JSettlers2/pull/50)
* The next pull request was to use `Integer.valueOf()` instead of the Integer constructor (which was deprecated). The `Integer.valueOf()` method should also yield better performance as it caches many commonly (or expected) Integer objects in memory. (https://github.com/jdmonin/JSettlers2/pull/52)
* Our next pull request was the most significant as we moved a large piece of embedded functionality out of an overly large class into its own Java file. (https://github.com/jdmonin/JSettlers2/pull/53)
* Our subsequent pull request was very small; however, it removed a cyclic dependency from JSettlers2, whereby the robot package depended on the baseclient package and the baseclient package depended on the robot package. (https://github.com/jdmonin/JSettlers2/pull/54)
* Our next pull request simply involved making small changes to an assortment of methods and classes to make the code easier to read. In addition, a few of our changes were intended to slightly optimize the software. (https://github.com/jdmonin/JSettlers2/pull/55)
* Our next pull request removed an unused method and used StringBuilder instead of StringBuffer. StringBuffer is thread-safe whereas StringBuilder is not. However, multiple threads were not accessing the StringBuffer. Therefore, there it was needless to use StringBuffer so we used StringBuilder instead. (https://github.com/jdmonin/JSettlers2/pull/59)
* Our last pull request was relatively trivial, as we removed two unused constructors. (https://github.com/jdmonin/JSettlers2/pull/61)

## Spyder

https://github.com/spyder-ide/spyder/pull/9109 

This pull requests adds a GUI feature to the Spyder IDE. Since the Spyder IDE is primarily feature based, it is assumed that a utility based feature that contributes to the overall functionality of the application is welcome. The utility feature added was a menu item that performs a lexographical sorting of the tabs of the main Editor window of Spyder. Most developers have experienced a time during the use of an IDE where multiple open tabs can become overwhelming and disorganized. By sorting the tabs by filename, navigation of these tabs becomes easier since the feature facilitates visual searching (or manual tabbing over) by lexographical order.

The feature sorts the tabs and maintains their file contents, and does not change file focus. For example, if a user is looking at file A.txt, and does a sort, the position of A.txt's tab may change, but the file remains open, its contents are still in view, and the tab remains selected.

https://github.com/SENG480/project-team-1/blob/master/images_m7/sort_tabs_1.PNG 

https://github.com/SENG480/project-team-1/blob/master/images_m7/sort_tabs_2.PNG
