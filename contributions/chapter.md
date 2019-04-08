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

## Terraform

### Motivation

As shown in [this image](../images/Terraform/PullRequest/01-state.png), when applying changes to managed infrastructure (e.g., adding simple DigialOcean [droplet](../images/Terraform/PullRequest/02-do-droplet.png)), using a plain-text JSON file, Terraform will store the latest known configuration properties (state) of the resource, as defined in the target environment. This might include properties that can be considered as sensitive, such as the resource ID, IP addresses used, SSH fingerprints, database passwords, geographical region, among others. Malicious users could take advantage of these properties to perform harmful actions over the infrastructure resources being managed, thus affecting the normal operation of the system that relies upon the correct behaviour of the infrastructure. According to [available documentation](https://www.terraform.io/docs/state/sensitive-data.html), there is no mechanism in the current version of Terraform that enables users to secure sensitive data stored in the local state.

### Pull Request 

Our pull request consists of a first step towards the achievement of secure sensitive data in the local state. For this, we added new modules for encrypting and decrypting values in the JSON file that contains the configuration properties of the resources being managed. Moreover, using the knowledge acquired while understanding and documenting the project, we identified the Terraform [module](https://github.com/hashicorp/terraform/blob/master/states/statefile/version4.go) in charge of serializing and deserializing the JSON file containing the state, and integrate it with our encryption and decryption functions. In this way, we were able to provide a secure mechanism for storing values in a local state.

### Validation

To validate our contributions we [ran the Terraform tests](../images/Terraform/PullRequest/03-test.png) defined using the *Make* build automation tool. In addition to this, to submit the pull request, we followed the [contribution guidelines](https://github.com/hashicorp/terraform/blob/master/states/statefile/version4.go) defined by Terraform's lead developers. 

#### Limitations

Due to current platform migration from version 0.11 to 0.12 (alpha), testing Terraform's core development version (v0.12) in conjunction with provided plugins (e.g., DigitalOcean and AWS, which are currently targeted for the version v0.11 of the core) was not possible for us. This is confirmed by Mitchell Hashimoto, the Terraform creator and one of the key developers of the platform. Despite he provided a [set of steps]((https://www.youtube.com/watch?list=PL4z1WbdlT5GKw1l2w0U-8YijoTwZp_GvU&v=Q6SGhWK6y0o)) to update provider dependencies to make it compatible with the new version of the platform's core, this partial solution is not currently working due to inconsistencies in the way Go update references of old modules such as [golang.org/x/lint](../images/Terraform/PullRequest/04-error-dependencies.png) (c.f., open Go [Issue #30831](https://github.com/golang/go/issues/30831) ). Therefore, part of our future work will be to keep improving the functionality proposed (since we really enjoyed the process of contributing to Terraform and consider we have enough expertise to complete it) and validate it using multiple cloud providers.