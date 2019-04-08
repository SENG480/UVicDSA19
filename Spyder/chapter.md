# Spyder: Scientific Python IDE
The documentation is written on Spyder IDE for SENG 480 instructed by Dr. Neil Ernst during the Winter 2019 semester at the University of Victoria, and is written by Arman Yousef Zadeh Shooshtari, Anna Olkhovskaia, Zoë Henderson, Alex Deweert, and Nitika Jindal.

![Spyder Logo](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/assets--Lb-GUhZrSHmck3tV3yP--Lb-I1ywsAxdy0kLiywB--Lb-J4T8a-9Ft9tj8tTO-1200px-Spyder_logo.svg.png?raw=true)

The Spyder Integrated Development Environment (Spyder) is an open source cross-platform development environment for scientific programming in the Python language. Spyder integrates with a number of prominent packages in the scientific Python stack, including NumPy, SciPy, Matplotlib, Pandas, IPython, SymPy and Cython.

Spyder is a free and open source IDE first released in 2009. Previously known as "Pydee", the project started as a port of spyderlib, which is a powerful scientific environment written in Python, for Python, and designed by and for scientists, engineers and data analysts. Spyder offers a unique combination of advanced editing, analysis, debugging, and profiling functionality. It is a comprehensive development tool with data exploration, interactive execution, deep inspection, and beautiful visualization capabilities. Beyond its many built-in features, its abilities can be extended even further via its plugin system and API. Furthermore, Spyder can also be used as a PyQt5 extension library, allowing developers to build upon its functionality and embed its components, such as the interactive console, in their own PyQt software. [1.1]

This documentation will serve to highlight some of the key architectural features of Spyder which support some of the business drivers behind the Spyder Project. First, the documentation will highlight the key stakeholders of the project and their business goals. From these goals a list of architecturally significant requirements are derived, and then the quality attribute scenarios which detail quantitative measurements of how the architecturally significant requirements can be realized. A primary presentation of the overall architecture of Spyder, plus two interface diagrams, a context diagram, and two sequence diagrams will provide some insight into the operations of Spyder at both macro and micro levels of abstraction. Later, a component and connector diagram will provide even more detail into one of the key design decisions about how Spyder translates user GUI events into code execution and the subsequent display of rendered images. The component and connector view also provides another context diagram which summarizes the interaction between the Spyder CodeEditor and the external kernels which process code cells and update the image canvas for rendering. The documentation discusses how Spyder responds to variability in its environment, and to internal changes of architecture as well. Finally, the documentation attempts to analyze the rationale behind some of the key design decisions for the Spyder project.

## Project Stakeholders

| Role| Who / Examples | Description |
|------|--------|--------|
| Patrons |NumFOCUS, QuanSight| NumFOCUS Sponsored Project since 2015. NumPy is a universal data structure that fundamentally enables data analysis in numerical computing by permitting the exchange of data between algorithms. NumPy is a foundational project for the Python scientific computing stack. QuanSight grew out of Anaconda in order to facilitate broad community-led innovation and development in Machine-Learning and Data Science. |
| Assessors |Open collective of Spyder users|Key developers like Carlos Cordoba and the stakeholders for significant sponsors like NumFOCUS and QuanSight.|
| Communicators |Carlos Cordoba| Carlos Cordoba, Daniel More, Steve Lane, and Spyder Website contributors. These individuals are responsible for communicating the documentaton of Spyder to its contributors and users. |
| System, Developers |Gonzalo Pena-Castellanos, Rafael Laverde, Daniel Althviz, Edgar Margffoy, Jitse Niesen, Pierre Raybaut| Gonzalo Pena-Castellanous is an active member of the open source community contributing to different projects and a leader in the Python Colombia Community helping shape and organize communities such as Django Girls Colombia, Python Bucaramanga, Python Colombia and Latin American Python Conferences, PyCon Colombia (2018, 2019, 2020) and SciPy Latam (2019) respectively. Rafael Laverde is a Software Developer, Pythonist, Software Libre Advocate and Spyder IDE developer. Daniel Althviz is the member of the team in charge of the maintenance and support of the Spyder IDE project, implementation of features and resolution of errors over the core project and also over the Spyder Notebook plugin (created for the integration of Spyder with the Jupyter Notebooks). Edgar Margffoy is a programmer, designer, DIY Geek and history reader. Jitsen Niesen is the current researcher in numerical analysis in University of Leeds. Pierre Raybaut is the creator of Spyder and of the popular Python distributions for Windows(pythonxy and WinPython). |
| Maintainers |Carlos Cordoba| Carlos Cordoba is an active maintainer and the main developer of Sypder IDE. |
| Production Engineers |Spyder project global collaborators| There are 125 global contributors, these include the most significant contributions by Carlos Cordoba, Gonzalo Pena-Castellanous and Pierre Raybaut. |
| Suppliers |Anaconda, winpython, MacPorts, homebrew, pip, apt-get, dnf, etc. | Anaconda is a free and open-source distribution of the Python and R programming languages for scientific computing (data science, machine learning applications, large-scale data processing, predictive analytics, etc.), that aims to simplify package management and deployment. Package versions are managed by the package management system conda. The Anaconda distribution is used by over 12 million users and includes more than 1400 popular data-science packages suitable for Windows, Linux, and MacOS. WinPython is a free open-source portable distribution of the Python programming language for Windows 7/8/10 and scientific and educational usage. MacPorts, formerly called DarwinPorts, is a package management system that simplifies the installation of software on the macOS and Darwin operating systems. It is an open-source software project to simplify installation of other open source software. Homebrew is a free and open-source software package management system that simplifies the installation of software on Apple's macOS operating system and Linux. pip is a package-management system used to install and manage software packages written in Python. apt-get is the command-line tool for handling packages, and may be considered the user's "back-end" to other tools using the APT library. |
| Support Staff |Spyder contributors, Carlos Cordoba| Spyder contributors and Carlos Cardoba provides the majority of support for the products. Cardoba is typically the primary point of contact for major isssues on the Github repository, and is also the primary resolver of these issues. |
| Testers |Developers via Pytest framework and other means)| The pytest framework makes it easy to write small tests, yet scales to support complex functional testing for applications and libraries. |
| Users |Students, Professors, Universities, Labs, Companies. pyRAS, QtAwesome, scientists, engineers, and data analysts| Users can use the system in order to write code, test and debug it and draw graphs. QtAwesome enables iconic fonts such as Font Awesome and Elusive Icons in PyQt and PySide applications. |

## Business Goals

## Financial

Spyder is seeking an initial contribution goal of $7,000 USD in order to fund baseline development activities which include finishing Spyder 4 and hiring a part-time junior developer [1.7].

Spyder is seeking a long term sponsorship goal of $35,000 USD per year in order to match the previous funding of Anaconda and take on four part-time developers [1.7].

Spyder developers continue to seek support from the community to reach the level of funding by releasing new donation tiers and rewards in order to make the release of new features for Spyder 4 possible [1.7].

## Managing the quality and reputation of products

For the Spyder IDE project, the Spyder contributor community desires that the project continue to be starred and forked by the Github community, thereby increasing potential sponsorship and contributor numbers, directly affecting the quality of the product. In addition, the Spyder contributor community desires to provide the best Scientific Python Development Environment possible [1.8].

For the Spyder IDE project, the Spyder contributor community desires a maintained and possibly increased rate of commits, bug fixes, pace of development, and new features. This goal can be measured by comparing levels of future commits to the average based on the numbers between November 2017 through May 2018 [1.9].

## Privacy and Ethics Concerns

## Introduction

There are numerous considerations to make when conducting a privacy and ethics analysis of a software project. The Association for Computing Machinery (ACM) provides an excellent Code of Ethics, lending itself to guide such an analysis, and steering a software development project in the right direction. While reading over the documentation, wiki, and the project website for the Spyder Python IDE (Spyder), it was discovered that a specific policy or code of ethics of their own was not present. It was left to the authors of this document to make conclusions based on a combination of references to the ACM and the existing documentation and code for Spyder. However, there are many boilerplate [1.2] licenses within the Spyder Github repository. This indicates that the developer group is concerned, at least in part, with legal use and distribution of their software. In addition, extensive copyright agreements exist within the repository within 3rd party libraries and frameworks, as well as Spyder proprietary software.

## Potential Privacy and Security Concerns

Within the Spyder Github code, there is a partially boilerplate MIT style license which permits commercial use, modification, distribution, and private use of their product. Moreover, this license absolves Spyder Project Contributors, at least in part, of any liability under the categories claim, damages, or “other.” This is not, of course, a direct indication that the Spyder Project Contributors themselves are purposely making their software available for malicious or negligent use. However, we still must consider that the developers of the project do not hold themselves liable for any use of the product. Such a consideration is relevant given that Spyder could possibly be used for either a safety or infrastructure related purpose. Of course, these are only speculative considerations for the purposes of this assignment.

Given the open source nature of this project, we must consider that any software utilized on the internet carries with it an inherent danger surrounding privacy issues. Consider one simple example where Notepad++ was “hijacked” by a United States government agency to have access to the content of files written on Notepad++ [1.11]. Since this project is open source, then it’s mechanics are even more subject to potential analysis and subsequent exploitation by outside parties. Another such example occurred during malicious use of the Dolphin video game emulator [1.5, 1.6], allowing arbitrary code execution through disc images; it is clear that open source code is not always just viewed or referenced, but used to design nefarious exploits.

## Ethical Dilemmas

It is not immediately obvious that Spyder Project Contributors are subject to any kind of explicit agreement to guide project contributions. There is an open invitation to anybody who wants to contribute the project, but neither contribution nor ethical guidelines could not be located [1.1]. Granted, any code that is submitted is done so via pull request, so the primary contributors and administrators of the Spyder code base presumably will check for malicious or poorly written code. The dilemma here is that anybody who makes a contribution to the Spyder code base is under no apparent set of guiding principles, or, under the kind of scrutiny that somebody in a private sector development job might be under. In addition, an open source contributor has lower stakes on which to base their reputation and livelihood on considering that contributions are done anonymously absent a threat of being fired or ostracised.

An ethical dilemma could arise if a 3rd party company makes significant monetary gains following use of the Spyder product either through direct use of the product, or by a redistribution and possible rebranding. Considering that there exists an extensive use and licensing document present on the Spyder project Github site [1.2], these rules appear to be for both end users of Spyder, and for developers of Spyder who contribute to the project. Clearly, failure to abide by these rules could result in some legal action based on an oversight of ethical software development and/or business practices.

One particular point in the ACM mentions fair treatment of groups or individuals regardless of their race, community, gender, or general orientation. Any large-scale open source project is certainly subject to public scrutiny with regards to ethical consideration surrounding such unfair treatment. A negative outcry or investigation based on such conflicts of interest might affect the business goals of Spyder [1.4].

## Summary

Regarding the ACM General Ethical Principles (in particular to avoid harm, to be fair, taking action not to discriminate, respecting privacy, respecting the work required to produce new ideas, inventions, creative works, and computing artifacts), initial perusal of the documentation and issues forums seems to indicate that Spyder IDE community adheres to these principles [1.3,1.10].

Regarding section 3.7 of the ACM (to recognize and take special care of systems that become integrated into the infrastructure of society), considering that applications written in Spyder utilize the underlying architecture and design decisions of the Spyder IDE global contributors, we believe that the overall quality of code of the project must be strongly considered in order to determine whether this guideline is adhered to or not. This may or may not be ascertained following more extensive documentation of this project later on in the course. At this early stage, however, an in depth product quality analysis based on understanding Spyder architecture is not immediately obvious, and may be weighed in upon at another time.

# Architecturally Significant Requirements

1. Upon closing the Spyder IDE, the user’s work must be saved at least once. In the event of a system or software crash, saved versions of the most recently changed documents can be restored from an automatic backup, so the Spyder IDE must backup unsaved files at regular intervals.
2. The Spyder IDE should be able to show syntactic errors in a way that the programmer can easily understand the cause of the error.
3. Spyder must be able to run on different operating systems.
4. Spyder must be able to support most recent versions of Python.
5. Spyder should be able to run on a wide variety of hardware.
6. Updates to the Spyder IDE should allow previous Spyder project compatibility assuming that the project is reasonably recent.
7. Spyder must capture and handle user program or Spyder tool failures by generating comprehensive bug, error, and exception reports
8. Spyder must draw graphs, diagrams, and execute code with low latency.
9. A user must be able to easily debug and trace their code in the Spyder IDE using debugging, tracing, and breakpoint tools.
10. A code-completion aid feature similar to Microsoft IntelliSense should available as a tool in Spyder IDE.

## Quality Attribute Scenarios

| Quality Attributes | Attribute Refinement | Scenarios |
|------|--------|--------|
| Performance | Runtime Latency | A user wishes to graph a three-dimensional dataset at the Large Hadron Collider based on particle acceleration and collision. Since these datasets are notoriously very large, the user is skeptical that the graph will render quickly, but is happy to discover that data processing and rendering is relatively fast (H M).|
| Security | Data Integrity | A user works on a large piece of code for an hour having saved once at the beginning, the power goes out and the user attempts to recover lost work. The user finds that 98% of their code is still available due to the automatic backup system (H L). |
| Usability | Syntax error comprehension | A user writes code that has > 50 syntax errors, the errors are shown to the user by caution symbol on the affected lines so they can easily identify their errors (H M). |
| | Runtime error comprehension | A new user unfamiliar with python is experimenting with their code, upon running it the IDE comprehensive informs them of the errors in such a way that they can easily trace their errors (H M).|
| | Debugging and Tracing | A developer is creating a complex program that has a difficult runtime error. The user is unable to find the error by simply tracing the code, so the user adds a breakpoint so that execution is halted, and the variable states can be examined. The user easily determines how the values of the variables are changing in the flow of the code which causes the runtime error (H M). |
| | Template Based Completion | A developer is writing many classes with similarly structure code, each of which will require customized tweaks based on a boilerplate style of initial design, but cannot be compressed into a single class. To save time, the user presses a combination of keys to activate the code-completion feature and is able to select from a saved list of code template (H H). |
| Accessibility | Syntax Colouring | A user is colorblind. Spyder supports changing syntax highlighting to a user-defined color palette (M L). |
| | Key Mapping | A user has motor control issues. Spyder supports remapping keyboard shortcuts, which can act as an aid for some people (M L). |
| Maintainability | Modularity | A developer wants to add features; Spyder's loose coupling allows them modify, add, and swap components without headache (M H). |



