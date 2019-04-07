# Contributions

This chapter outlines some of the contributions---in the form of pull requests---made by several teams to their open source project.

# Team-6

## Pull Request of Pillow:

The pull request is available at this link:

https://github.com/python-pillow/Pillow/pull/3776

![](../images/Pillow/pull_req.png)

### 1. Problem Description:

On the Pillow documentation page, the authors provide only a small description of how different methods work. But for many functions, it is not clear how to use them properly. And there are many issues related to it in the Pillow GitHub repository.


### 2. Proposed Solution:
We have taken seven essential and most commonly used functions and provided some examples with helpful comments on explaining how to use that particular method properly. As an example, we have attached a small picture below.

![](../images/Pillow/filter_doc.png)

The above image is from the Pillow documentation page. Here it just describes that the method is used to filter an image. It would be helpful to users if they could provide an example of how to use it.

![](../images/Pillow/filter_doc_example.png)

So, we added this above code block, which shows how to blur an image using the method filter.

Similarly, we have added the code documentation to seven essential functions and added as a pull request. The methods include: crop(), filter(), getbands(), getbbox(), resize(), rotate(), transpose().
