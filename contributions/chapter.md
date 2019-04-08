# Contributions

This chapter outlines some of the contributions---in the form of pull requests---made by several teams to their open source project.


## IPython

[Pull Request](https://github.com/ipython/ipython/pull/11672)

To enhance the original Python syntax, IPython introduces magic commands. These are prefixed by the `%` character for line magics \(single line of input\), and `%%` for cell magics \(multiple lines of input\). This allows for a more efficient terminal experience. An example of a magic function is`%paste`, which enables the user to paste and execute code directly into IPython, regardless of line count, and ignore additional markup or prompt characters.

In our pull request, we extended the `%psearch` magic function. This function allows the user to search for objects in namespaces by wildcard; essentially matching objects according to their type, pattern, and options specified by the user. This pull request addresses the **usability** QAS aspect and **learnability debt** we discovered in the IPython system by providing a command for users of the system to quickly determine which object types are available for filtering. This improves the overall efficiency at which users can find the object they are searching for.

## Mailpile

[Pull Request](https://github.com/mailpile/Mailpile/pull/2215)

Nowadays, there are many sites like google drive, dropbox, onedrive, etc, which allows to create, edit and save the document online. Users can share these online file using URLs. Mailpile being a morder e-mail client, should be able to send URLs of these files as attachement instead of sending the actual file. We found this [issue](https://github.com/mailpile/Mailpile/issues/2204) in Mailpile's github issue tracker raised by Mailpile's lead developer Mr. Bjarni Rúnar Einarsson. He created a list [list of tasks](https://github.com/mailpile/Mailpile/issues/2204#issue-403099577) to be completed to implement this feature .Initial two tasks were already completed in a commit. However, there are still other tasks that needs to be completed.

In our pull request, we have completed some tasks to implement beforementioned feature as follows.
1. We have extended `read_email` function in `mailpile/search.py` to scan and find any valid URL present in the email text. For this we have used a regular expression to identify any valid URL within the text. Once the URL is idetified, it is being added to the `att_urls` list which contains attachement URLs.
2. We have created a large list of regular expresssions of trusted URLs of common file sharing sites like dropbox, google drive, etc.
3. We added the list created in second task to default list of attachement URLs in the session configurations. 


