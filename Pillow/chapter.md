# 0. Introduction

## 0.1 Group Members

1. Cameron Zarubiak
2. Yige Tang
3. Jiawen Jiang
4. Mauricio de Paula
5. Abhishake Kumar Bojja

## 0.2 Projects

| Project Name | URL | Language | KSLOC | Activity |
| :--- | :--- | :--- | :--- | :--- |
| **Pillow** | [https://github.com/python-pillow/Pillow](https://github.com/python-pillow/Pillow) | Python | 58343 | 74 |

Pillow is a Python Imaging Library that adds the **image processing** capabilities to the Python Interpreter.

# 1. Stakeholders

## 1.1 Stakeholder Profile Table

| Role | Concerns | Instances |
| :--- | :--- | :--- |
| Acquirers | Oversee the procurement of the system or product | Developers, Researchers and anyone who would like to do image related operations using Python. One can install the software directly from Github or through Python Package Index \(PyPI\). |
| Assessors | Oversee the system’s conformance to standards and legal regulation | Alex Clark and the other open source contributors have the responsibility to conformant the project according to the standards and licenses. They need to make sure that the newly added changes would not trouble the users by creating new issues. |
| Communicators | Explain the system to other stakeholders via its documentation and training materials | Alex Clark and the other open source developers provided the documentation for installing and running the software through website and GitHub. The literature also includes a detailed explanation on using different modules of the software. |
| Developers | Construct and deploy the system from specifications \(or lead the teams that do this\) | The project was originally called as PIL and was developed by Fredrik Lundh and some open source contributors and the development was discontinued in 2011. The development of the project was continued by Alex Clark and some open source developers by forking the PIL repository and adding many functionalities with support to python3. |
| Maintainers | Manage the evolution of the system once it is operational | The project is also maintained by Developers. New features ideas or any suggestions to the original implementations are done through github issues. |
| Production  Engineers | Design, deploy, and manage the hardware and software environments in which the system will be built, tested,  and run | The end users are responsible to maintain their own build, test environments. |
| Suppliers | Build and/or supply the hardware, software, or infrastructure on which the system will run | Other software package suppliers on which the Pillow software is dependant. |
| Support  Staff | Provide support to users for the product or system when it is running | The support is provided by the open source community through stackover flow and github issues. |
| System Administrators | Run the system once it has been deployed | Individual user who uses the system. |
| Testers | Test the system to ensure that it is suitable for use | The system is tested for continuous integration by Travis CI and AppVeyor before relasing the software. The source code is also tested by the main contributors of Pillow. |
| Users | Define the system’s functionality and ultimately make use of it | Developers, Researchers, Engineers and Students and anyone who is interested in working with images. |

## 1.2 Business goals

1. **To serve as a replacement of the older version of PIL \(Python Imaging Library\), which was created by Fredrik Lundh and other open source contributors.** 
   * Pillow has been adopted as a replacement for the original PIL in Linux distributions including Debian and Ubuntu. \[5\]
2. **Make image processing easy for users with different backgrounds and technical skill levels to analyze images and convert them into different formats.** 
   * Pillow has been widely adopted by the computer vision community.
   * It is one of the best open source image processing library available to use.
   * PyTorch, one of the best deep learning library uses Pillow for basic image related operations.
   * Python web- framework Django uses Pillow to represent an ImageField in a database \[8\]\[13\].
3. **Try to make image processing accessible across different Systems and platforms, and develop applications for mobile devices that helps users to manipulate images from anywhere in the world.** 
   * Pillow is available for Windows, Mac OS X and Linux.\[5\]
   * Many users have implemented Pillow in to mobile python interpreters, such as Termux and Kivy on their android phones.
4. **Achieve the integration of image processing in python interpreter.** 
   * Pillow is a library for the Python programming language that adds support for opening, manipulating, and saving many different image file formats\[5\].
   * Some image manipulations functions offered by pillow: \[5\]
     * Per-pixel manipulation
     * Masking and transparency handling
     * Image filtering \(blurring, contouring, smoothing, and edge finding\)
     * Image enhancing \(sharping, adjusting brightness, contrast or colour\)
     * Adding text to images
5. **Further development and goals.** 
   * To integrate continuously by testing via Travis CI and AppVeyor\[4\].
   * To release regularly through the Python Package Index\[4\].

## 1.3 Privacy and Ethics concerns

### 1.3.1 Introduction

Every software project should follow the code of ethics as given by the Association for computing machinery \(ACM\) \[1\]. By following the code ethics, the project ensures that it is safe to the society and also helps the development team to analyze the concerns the project might face beforehand and mitigate the risks. As there is a considerable demand for image processing across various industries, an open source project like Pillow plays a crucial role in developing image related products. The License file in the Pillow GitHub repository tells us that the project Pillow has a concern towards ethics \[2\]. However, there is no specific code to which the developers should follow while using the software. There are many ways to misuse the software; as an example, one can easily morph the images of others to destroy someone's reputation, which might lead to a severe loss of the affected person \[6\]. So, we think that the developers of Pillow should also provide an ethical code.

### 1.3.2 Potential Privacy and Security concerns

When creating software, privacy and security concerns are usually one of the most critical aspects of the entire process. A company/developer who has programmed software that has security flaws can lose all of its credibility and users. These issues are so severe that they can even lead to irreparable damage to the company’s/developer’s image, even for free open source projects like Pillow. Pillow has had 240 members of the community contributing to it and when a project has that many eyes looking at it, security flaws and privacy concerns, although not entirely avoidable, are easier to avoid. There have been issues that potentially allowed DDoS attacks via Django, which uses Pillow as a dependency \[9\], and other potential private security issues \[10\] but both were fixed on the following project release. Currently, there are many small opened issues with the project but only a few are regarding security, such as an issue where memory is not deallocated \[11\], and a bus error \(SIGBUS\) is thrown \[12\]. These are recent problems that have also been identified to be potential security faults and are being looked at by the project contributors.

### 1.3.3 Ethical Dilemmas

Ethical dilemmas are when ethical standards from two separate scenarios conflict with each other. One of the ethical dilemmas we encounter is where we want to give our users more privacy, but in return, users provide us with more access. It’s difficult to ethically decide which choice will improve the user's privacy more. Another example we encounter is that we want to give users an experience that is simple, efficient, and fast while using Pillow, but to provide this, multiple necessary modules may be deleted. These improvisions may optimize the interface, but may also require much painful restructuring.

### 1.3.4 Summary

To summarize, we identified various ethical dilemmas and privacy/security concerns that exist in the current architecture. We believe that the developers of Pillow should provide ethical code, which would reduce the possibility of misusing the product. Potential privacy and security concerns that we found included memory not being deallocated \[11\], DDoS vulnerabilities via Django \[9\], as well as various smaller issues related to manipulating images. One ethical dilemma we found was the issue of providing the most privacy. Does more access to user information lead to more or less privacy? We believe that if every software project \(including Pillow\) followed a code of ethics, then ethical dilemmas and privacy/security concerns would be identified appropriately earlier. Pillow would benefit from a code of ethics.

## 1.4 References

1. [https://www.acm.org/code-of-ethics](https://www.acm.org/code-of-ethics) 
2. [https://github.com/python-pillow/Pillow/blob/master/LICENSE](https://github.com/python-pillow/Pillow/blob/master/LICENSE)
3. [https://stackoverflow.com/questions/tagged/python-imaging-library](https://stackoverflow.com/questions/tagged/python-imaging-library)
4. [https://pillow.readthedocs.io/en/stable/handbook/overview.html](https://pillow.readthedocs.io/en/stable/handbook/overview.html)
5. [https://en.wikipedia.org/wiki/Python\_Imaging\_Library](https://en.wikipedia.org/wiki/Python_Imaging_Library)
6. [https://timesofindia.indiatimes.com/city/chandigarh/Net-threat-Morphing-pictures-for-revenge/articleshow/47981141.cms](https://timesofindia.indiatimes.com/city/chandigarh/Net-threat-Morphing-pictures-for-revenge/articleshow/47981141.cms)
7. [https://docs.python-guide.org/scenarios/imaging/\#python-imaging-library](https://docs.python-guide.org/scenarios/imaging/#python-imaging-library)
8. [https://www.pyimagesearch.com/2014/01/12/my-top-9-favorite-python-libraries-for-building-image-search-engines/](https://www.pyimagesearch.com/2014/01/12/my-top-9-favorite-python-libraries-for-building-image-search-engines/) 
9. [https://www.djangoproject.com/weblog/2015/jan/02/pillow-security-release/](https://www.djangoproject.com/weblog/2015/jan/02/pillow-security-release/) 
10. [https://github.com/python-pillow/Pillow/issues/3610](https://github.com/python-pillow/Pillow/issues/3610) 
11. [https://github.com/python-pillow/Pillow/issues/2105](https://github.com/python-pillow/Pillow/issues/2105) 
12. [https://github.com/python-pillow/Pillow/issues/3496](https://github.com/python-pillow/Pillow/issues/3496) 
13. [https://code.djangoproject.com/ticket/19934](https://code.djangoproject.com/ticket/19934)

# 2.Architecturally significant requirements and utility tree

## 2.1 Architecturally Significant Requirements

| Quality | ASR | Description |
| :---: | :---: | :---: |
| Extensibility | Documentation | Pillow should follow some sort of documented versioning so users know when upgrading the library could introduce breaking changes. |
| Extensibility | Library Extension | Should allow users to extend the library by implementing new features \(done through GitHub via pull requests\). |
| Maintainability | Detecting Bugs | The system should generate bug reports if a failure occurs. |
| Maintainability | Detailed Documentation | A clear explanation for a depreciated function in a later released version and a link to the document of newly built function. |
| Performance | Operation Speed | The system should respond in a quick manner when the library is referenced and utilized in code. Should support to read various file formats and write to various file formats. |
| Portability | Operating System Compatibility | For displaying images, Pillow should support operating systems such as Windows, Mac OS, and Linux. |
| Reliability | Data Reliability | Pillow must assure that the result of an operation must be efficient, consistent and accurate. |
| Security | Authorization | Should be very careful approving pull requests for code changes because it is an open source project, widely used as a dependency by many frameworks. |
| Security | Authentication | Pillow should ensure that every call to its library is properly authenticated to reduce vulnerabilities. It should be easily accessible in Python environments. |
| Testability | System Testing | We can test our system to determine whether it is operating properly or not. |
| Maintainability | Configuration Readability | The API should be easy to interact with. |
| Usability | User Satisfaction | Should contain modules which support transforming between different color spaces. |
| Usability | Raster Image Input | Pillow should be able to handle raster images as input. \(Rectangles of pixel data\) |
| Usability | File Format Conversion | Pillow should be able to handle to convert/read/write different file formats. |

## 2.2 List of Architecturally Significant Requirements.

1. Pillow should support to read various file formats and write.
2. The result of an any image processing operation must be efficient, consistent and accurate
3. Pillow should be an accessible library in the Python environment.
4. The Pillow API should be easy to interact with.
5. It should support all sorts of image processing operations like image resizing, rotation and arbitrary affine transform.
6. Pillow must enable continuous integration and testing
7. Conversion between file formats must be consistent and should not fail.
8. All image operations must be fast
9. As pillow supports batch processing applications, they must be parallelized. \(Must be scalable\)
10. For displaying images, the library should support all interfaces like Windows, Linux
11. The library/ code written on one platform like windows should work on the other platform like Linux.
12. The library should contain modules which describe the statistics of an image \(like mean , median, histogram bins etc..\).
13. Pillow should contain modules which support transforming between different color spaces.
14. Pillow should be very careful approving pull requests for code changes because it is an open source project, widely used as a dependency by many frameworks.
15. Pillow should follow some sort of documented versioning so users know when upgrading the library could introduce breaking changes.
16. The library should allow users to extend the library by implementing new features \(done through GitHub via pull requests\).
17. The code syntax must be clear and non-confusing.
18. Pillow should be able to handle raster images as input

## 2.3 List of Quality Attributes with Scenarios

### 2.3.1 Performance

* Operation Speed
  * Time taken to perform an image processing operation must be within milliseconds.
    * Business Complexity - H, Technical Complexity - H
* Vectorizing algorithms for high speed
  * Minimize the number of for loops used to create an image processing algorithm and vectorize, where ever possible.
    * Business Complexity - M, Technical Complexity - H

### 2.3.2 Reliability

* Less Error Prone
  * The result of an image processing operation must be efficient, consistent and accurate.
    * Business Complexity - H, Technical Complexity - H

### 2.3.3 Usability

* File Format Conversion
  * A user wants to convert an image from .png format to .jpeg format.
    * Business Complexity -  H, Technical  Complexity - L
* Interaction with GUI     
  * A user wants to display an image from the Pillow library using a GUI on windows.
    * Business Complexity - L, Technical  Complexity - M

### 2.3.4 Extensibility

* New Feature Implementation
  * Should allow users to extend the library by implementing new features \(done through GitHub via pull requests\).
    * Business Complexity - M, Technical Complexity - L
* Versioning System
  * Pillow should follow some sort of documented versioning so users know when upgrading the library could introduce breaking changes.
    * Business Complexity - M, Technical  Complexity - L

### 2.3.5 Usability

* Image Processing Support
  * A user wants to do image processing operations such as image resizing, rotation and arbitrary affine transform.
    * Business Complexity - H, Technical Complexity - H

### 2.3.6 Security

* Authorization
  * Users/Developers want to add code to the library as a pull request and the team has to review the code carefully.
    * Business Complexity - H, Technical Complexity - H

### 2.3.7 Scalability

* Big Data Support  
  * The user wants to apply the same algorithms to a big dataset of images like a 100k number of images.
    * Business Complexity - L, Technical  Complexity - H

### 2.3.8 Portability

* Operating Systems Compatibility
  * The users from different platforms and different system environments need to use PIL, such as Linux and Windows.
    * Business Complexity - H, Technical  Complexity - L
* Device Cooperation
  * Users who have multiple image processing work to do, have to use several devices at the same time. Therefore, when logging in several devices such as iPhone, iPad, and iMac or logging in several computers including ios and Android the system has  to be compatible.
    * Business Complexity - H, Technical  Complexity - L
* Image and File Format Matching
  * Users need to use some of the same image formats in different file formats, so we need to ensure that the same image format is compatible with different file formats.
    * Business Complexity - H, Technical  Complexity - H

## 2.4 Utility Tree

![](images/Pillow/utility_tree.png)

## 2.5 Quality Attribute Scenarios

### 2.5.1 Scenario 1

| Aspect | Details |
| :---: | :---: |
| Scenario Name | Perform image processing on images |
| Business Goals | Make image processing easy for users with different backgrounds and technical skill levels to analyze images by providing efficient and accurate algorithms for doing image processing like Image Rotation, image resizing and affine transforms. |
| Quality Attributes | Performance |
| Stimulus | Need from user to resize the image. |
| Stimulus Source | A user wants to resize an image from 640x480 image resolution to 320x240. |
| Response | Load the input image from the user and produce the resized image as output. |
| Response Measure | Complete operation in &lt; 10 milliseconds. |

### 2.5.2 Scenario 2

| Aspect | Details |
| :---: | :---: |
| Scenario Name | Provide image processing support to PyTorch library. |
| Business Goals | Make image processing easy for users with different backgrounds and technical skill levels to analyze images and convert them into different formats. |
| Quality Attributes | Usability. |
| Stimulus | PyTorch, a deep learning framework wants to use Pillow to blur an image. |
| Stimulus Source | The PyTorch library. |
| Response | Take the input image from PyTorch and apply gaussian filter and return the blurred image. |
| Response Measure | The output image should be returned in &lt; 1 milli second and the output is reliable with almost 100% accuracy. |

### 2.5.3 Scenario 3

| Aspect | Details |
| :---: | :---: |
| Scenario Name | Using Pillow in different operating system environments like Windows, Linux, and Mobile. |
| Business Goals | Try to make image processing accessible across different systems and platforms, and develop applications for mobile devices that helps users manipulate images from anywhere in the world. |
| Quality Attributes | Portability |
| Stimulus | A user wants to enhance an image using the pillow library on Linux, Windows, and on a Mobile Python Interpreter like Termux. |
| Stimulus Source | Any end user or developer. |
| Response | The Pillow library should take an input image on any provided operating system environment and produce the resultant enhanced image. |
| Response Measure | The output image should be returned in &lt; 1 second and the provided result should be consistent on all environments |

