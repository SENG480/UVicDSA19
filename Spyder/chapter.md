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

### Financial

Spyder is seeking an initial contribution goal of $7,000 USD in order to fund baseline development activities which include finishing Spyder 4 and hiring a part-time junior developer [1.7].

Spyder is seeking a long term sponsorship goal of $35,000 USD per year in order to match the previous funding of Anaconda and take on four part-time developers [1.7].

Spyder developers continue to seek support from the community to reach the level of funding by releasing new donation tiers and rewards in order to make the release of new features for Spyder 4 possible [1.7].

### Managing the quality and reputation of products

For the Spyder IDE project, the Spyder contributor community desires that the project continue to be starred and forked by the Github community, thereby increasing potential sponsorship and contributor numbers, directly affecting the quality of the product. In addition, the Spyder contributor community desires to provide the best Scientific Python Development Environment possible [1.8].

For the Spyder IDE project, the Spyder contributor community desires a maintained and possibly increased rate of commits, bug fixes, pace of development, and new features. This goal can be measured by comparing levels of future commits to the average based on the numbers between November 2017 through May 2018 [1.9].

## Privacy and Ethics Concerns

### Introduction

There are numerous considerations to make when conducting a privacy and ethics analysis of a software project. The Association for Computing Machinery (ACM) provides an excellent Code of Ethics, lending itself to guide such an analysis, and steering a software development project in the right direction. While reading over the documentation, wiki, and the project website for the Spyder Python IDE (Spyder), it was discovered that a specific policy or code of ethics of their own was not present. It was left to the authors of this document to make conclusions based on a combination of references to the ACM and the existing documentation and code for Spyder. However, there are many boilerplate [1.2] licenses within the Spyder Github repository. This indicates that the developer group is concerned, at least in part, with legal use and distribution of their software. In addition, extensive copyright agreements exist within the repository within 3rd party libraries and frameworks, as well as Spyder proprietary software.

### Potential Privacy and Security Concerns

Within the Spyder Github code, there is a partially boilerplate MIT style license which permits commercial use, modification, distribution, and private use of their product. Moreover, this license absolves Spyder Project Contributors, at least in part, of any liability under the categories claim, damages, or “other.” This is not, of course, a direct indication that the Spyder Project Contributors themselves are purposely making their software available for malicious or negligent use. However, we still must consider that the developers of the project do not hold themselves liable for any use of the product. Such a consideration is relevant given that Spyder could possibly be used for either a safety or infrastructure related purpose. Of course, these are only speculative considerations for the purposes of this assignment.

Given the open source nature of this project, we must consider that any software utilized on the internet carries with it an inherent danger surrounding privacy issues. Consider one simple example where Notepad++ was “hijacked” by a United States government agency to have access to the content of files written on Notepad++ [1.11]. Since this project is open source, then it’s mechanics are even more subject to potential analysis and subsequent exploitation by outside parties. Another such example occurred during malicious use of the Dolphin video game emulator [1.5, 1.6], allowing arbitrary code execution through disc images; it is clear that open source code is not always just viewed or referenced, but used to design nefarious exploits.

### Ethical Dilemmas

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

## Utility Tree

![Utility tree](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/final_UT.png?raw=true)

## Quality Attribute Scenarios in Template Form

| Aspect| Details | 
| ----- | ------- |
| Scencario Name | Low latency Dataset Graphing |
| Business Goals | “...the Spyder contributor community desires to provide the best Scientific Python Development Environment possible” |
| Quality Attribute | Performance |
| Source | Any Spyder use who invokes a rendering module |
| Stimulus | Graphing a large dataset |
| Response | Spyder graphs the dataset with minimal latency |
| Response Measure | <0.5 sec fo rendering a graph with 30 nodes and 20 edges  |

| Aspect| Details | 
| ----- | ------- |
| Scencario Name | Code-completion aid feature |
| Business Goals | “...contributors likely desire to create a safe, convenient, and user-friendly development environment for Python developers” |
| Quality Attribute | Usability |
| Source | Any Spyder user who activates code completion feature |
| Stimulus | Repetition of well-known coding conventions |
| Response | The output code of the code completion feature |
| Response Measure | <0.1 sec for showing 10 code suggestions when user types print  |

| Aspect| Details | 
| ----- | ------- |
| Scencario Name | Runtime error |
| Business Goals | “...contributors likely desire to create a safe, convenient, and user-friendly development environment for Python developers” |
| Quality Attribute | Usability |
| Source | The Spyder IDE Python runtime module |
| Stimulus | Runtime error |
| Response | Halting of execution lets the user trace the code so variable states can be examined |
| Response Measure |The developer can debug the code and find the cause of the runtime error in <20 sec in a file that has 500 code lines |

## Primary Presentation

This view implements the "uses" style of module views. Here we present the overall architecture of the Spyder IDE with a focus on three specific aspects of the architecture which highlight its plugin widget system for extensibility, and two quality attribute scenarios from Milestone 2.

And the scenarios are:

1. A developer is writing many classes with similarly structure code, each of which will require customized tweaks based on a boilerplate style of initial design, but cannot be compressed into a single class. To save time, the user presses a combination of keys to activate the code-completion feature and is able to select from a saved list of code template. (Intellisense).
2. A user works on a large piece of code for an hour having saved once at the beginning, the power goes out and the user attempts to recover his/her lost work. The user finds that 98% of their code is still available due to the automatic backup system.

![Primary Presentation](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/M3_PrimaryPresentation_Alt.png?raw=true)

## Element Catalogue

### spyder

Spyder is the main outer package which contains all the business logic for the Spyder IDE project. Almost all of the important logic with respect to the functionality of the entire IDE is contained in this package. It is an all-encompassing package at the root level of the project which includes version control, scripting, and continuous integration packages as well. It provides functionality such as opening, editing, and saving files which contain code or text.

### spyder.plugins

The plugins package contains the code for plugin modules which are appended to the primary spyder base code. Spyder works on the basis of adding plugins for additional IDE functionality, which is good design since it keeps the code modular and extensible. These plugins include such modules as editor, console, breakpoints, explorer, etc. For example, the editor is the window where one would write code. The console would be a docked or floating window where one would see program output from the stdout or stderr output streams.

### spyder.plugins.editor

This is a package which contains the editor plugin. The editor is the main window within which a developer would edit code. The package also contains the code for the editor API itself, which would allow outside modules to communicate with an editor object or to call editor functions.

### spyder.plugins.editor.Editor

This is a class within the plugin.py file that contains most of the base logic for an editor widget. This class also contains the functions that handle file autosaving for both individual editors and stacks of editors.

### spyder.plugins.editor.utils

This is a package which contains the code for utilities for the editor plugin. For example, autosave, debugging, folding, etc. This package also contains testing for these utilities as well as the code for initialization.

### spyder.plugins.editor.lsp

This package contains all of the code that handles the spyder Language Server Protocol client implementations. This also includes the ZMQ/TCP proxy classes (under the transport package) which act as an intermediary between the Spyder LSPClient and the LanguageServerClient.

### spyder.plugins.editor.lsp.LSPClient

This class acts as a client for communication with the LanguageServerClient via ZMQ and implements the calls and procedures required to communicate with a v3.0 Language Server Protocol server (via ZMQ).

### spyder.plugins.editor.lsp.LSPManager

This class manages all LSPClients connected to language servers defined in the preferences of the Spyder project.

### spyder.plugins.editor.lsp.transport

This package contains the implementation code for the ZMQ/TCP proxy classes which are run independently from the main Spyder program.

### spyder.plugins.editor.lsp.transport.main

This module isn’t a class, rather it acts as an entry point for the ZMQ/Proxy system, initializing a LanguageServerClient and, by extension the requisite ZMQ incoming and outgoing ports for communication with LSPClients.

### spyder.plugins.editor.lsp.transport.LanguageServerClient

This class handles incoming requests from the actual Spyder LSP client ZMQ queue, encapsulates them into valid JSONRPC messages and sends them to an LSP server via TCP.

### spyder.plugins.editor.lsp.transport.IncomingMessageThread

This class handles and processes incoming TCP messages sent by a Language Server Protocol server, then it relays the information to the actual Spyder LSP client via ZMQ.

### zmq

ZeroMQ is a high-performance asynchronous messaging library, aimed at use in distributed or concurrent applications. Spyder uses ZMQ for communication with a ZMQ/TCP proxy system which relays requests to a Language Server (via TCP) in order to facilitate Intellisense like functionality such as code completion, code insights, and definitions.

### zmq.Context

Contexts help manage any sockets that are created as well as the number of threads ZeroMQ uses behind the scenes. ZMQ handles the creation and destruction of sockets when processes are started and terminated. Contexts can be shared between threads and, in fact, are the only ZeroMQ objects that can safely do this.

### spyder.plugins.editor.utils.AutosaveForPlugin

This is a component of the editor plugin which implements autosaving functionality. The autosaving feature is based on a timer, which is set by the user.

### spyder.utils

Contains miscellaneous utilities like thread managers for non GUI blocking long processes, version control system assistant functions, syntax highlighting, icon managers.

### spyder.utils.create_action

A class level function that allows developers to create actions such as save, save as open, revert, and so forth. These actions are registered during the main program initialization by both the Spyder main IDE plugins and widgets.

### spyder.utils.add_actions

A class level function that is utilized by an instance of qtpy widgets; for example, this function adds created actions to a QMenu or a QToolBar.

### spyder.utils.icon_manager

A set of class level definitions which contain metadata for icon files for the aesthetics of the Spyder IDE.

### app.MainWindow

The main window which is initialized after one starts the program. Is responsible for loading all initial external modules, displaying the splash screen, populates the main window toolbars by creating and registering actions, saving the state of current sessions, restoring the state from previous sessions, etc.

### spyder.api.SpyderPluginWidget

An interface for which all plugin widgets must inherit and re-implement its interface. Basically, any class which is a plugin and a widget must inherit this interface which will enforce a specific behavior required by any plugin widget by higher level controllers. For example, console, editor, explorer, help, history are utilized by the AppearanceConfigPage class in order to apply appearance schemes to all plugin widgets. This keeps the basic required behavior and properties for all plugin widgets at the same level. In another example, upon initialization, each widget must return all of its possible menu actions, such as save, save as, and revert to the main window.

### spyder.preferences.AppearanceConfigPage

Applies appearance settings including font and color schemes to every plugin widget. This includes the editor. This class initializes all widgets using a common interface enforced method called apply_plugin_settings().

### spyder.plugins.editor.widgets.RecoveryDialog

A dialog window for recovering files from the autosave feature. This class gathers data about which files may be recovered. This data is saved within the program folder as a file of tuples, each pair of which contains data from the original saved file and the autosaved file.

### qtpy

qtpy is an abstraction layer that lets developers write applications using a single API. It provides support for PyQt5, PyQt4, and PySide using the PyQt5 layout, which is a high-level API that allows developers to interact with desktop-based features such as Bluetooth, NFC, but most importantly, traditional user interface development. Basically, you write your code as if you were using PyQt5 but import qt from qtpy instead of PyQt5.

### qtwidgets

The qtwidgets module contains classes that provide a set of user interface elements to create desktop-based user interfaces. It can be used as a container for other widgets, and it can be subclassed to create custom widgets. qtwidgets can be nested within other qtwidgets.

### qtwidgets.QToolBar

The QToolBar class provides a movable panel that contains a set of controls. Toolbar buttons are added by adding actions, using addAction or insertAction. A widget can be inserted instead of a toolbar if the button is not appropriate.

### qtwidgets.QFileDialog

The QFileDialog class provides a dialog that allows users to select files or directories. This class allows a user to navigate the file system in order to select one, many files, or a directory. With the use of static functions, we can create a QFileDialog.

### qtwidgets.QDialog

The QDialog class is the base class of dialog windows. A dialog window is a top-level window mostly used for short-term tasks and brief communications with the user. This class can provide a return value, and they can have default buttons. A dialog's default button is the button that's pressed when the user hits Enter. This button is used to signify that the user accepts the dialog's settings and wants to close the dialog.

### qtwidgets.QMenu

The QMenu class provides a menu widget for use in menu bars, context menus, and other popup menus. A menu widget is a selection menu which can be either a pull-down menu in a menu bar or a standalone context menu.

### qtwidgets.QInputDialog

The QInputDialog class provides a simple dialog to obtain individual values from a user. The input value may be strings, numbers, or items from a list. For the convenience of the users, a label may be set which maps to the value they have entered.

### qtpy.qtcompat

This class provides compatibility wrappers for critical functionality that differs across Qt versions. For example, between Qt4 and Qt5 there may have been many classes and class members that are obsolete.

### qtcompat.getopenfilenames

Under qtcompat, there are many class level functions with names which match the classes that provide compatibility functions. This class is one of these functions. The purpose is to retrieve filenames of files that are currently open and being used.

### qtcompat.getsavefilename

This is a static convenience function that will return a file name selected by the user. The file does not have to exist. It creates a modal file dialog with the given parent widget. For example, the RecoveryDialog class utilizes this method as a result of being called by the autosave plugin.

### qtpy.qtcore.QTimer

This class provides a higher level programming interface for a timer for the application which imports it. The QTimer class provides a single shot and repetitive timer functionality.

## Element Interface

![Interface 1]https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/interface1.png?raw=true

An interface is a boundary across which two independent entities meet and interact or communicate with each other.

### Interface Identity 

This means giving a meaningful name to the interface in a context that explains exactly what the interface does. This interface is called the "ZMQ/TCP Proxy Module". It is a small collection of two classes working together under one controller, acting independently of the Spyder main code.

### Resources Provided

A set of resources that the element provides to its actors

### Resource Syntax

1. msg = {'id': self.request_seq, 'method': method,'params': params}
2. zmq_out_socket.send_pyobj(msg)

### Resource Semantics 

1. msg creates a Python JSON formatted data structure containing the method request name, the Id parameter is is a numeric value to keep track of the total language server requests, and the params parameter which is an additional JSON python object populated with different parameters depending on an external element that makes use of the interface.
2. The zmq_out_socket is a ZMQ socket object which has bound to it as send_pyobj function. That function takes the msg parameter and serializes it using pickle. The interface requires this resource to be serialized since it is a JSON data structure, that it will later convert and re-send via TCP.

### Resource Usage Restrictions

This section defines the circumstances under which the resource may be used. The resources provided to the ZMQ/TCP Proxy Module must include all parameters including Id, Method, and the nested params object. In addition, this resource cannot be used until it broadcasts a SERVER READY signal, indicating that a language request can be made.

### Locally defined data types

There are no data types not natively supported by Python that are required to use this resource. Python natively supports JSON style objects. The resource itself converts these datatypes to serialized Python objects using Python Pickle.

### Error Handling

Errors are handled by Python try-except. ZMQ sockets handle errors by converting error messages with zmq_sterror() to meaningly error strings passed into the current environment.

### Variability provided

This section highlights how the interface may allow the element to be configured in some way. zmq_setsockopt() allows configurations to be viewed and set. They act in a similar way to settings typical TCP sockets.

### Quality attribute characteristics

The architect needs to document what quality attribute characteristics the interface makes known to the element’s users. Here we have the QAS under usability being made visible to the element's users, which use it indirectly. The element provides indirect access to code completion functionality.

### What the element requires

In this section, we highlight what the element requires that may be specific, named resources provided by other elements. External language server must be initialized, and it required that the parameters specified in the above sections be passed in exactly as noted. The element itself requires a developer to specify its network and port addresses for TCP, as well as the ZMQ in and out ports. In terms of data input to the element, the element can act asynchronously so it can be accessed simultaneously by multiple external elements. 

### Rationale and design issues

For this section, the rationale should explain the motivation behind the design. The decision to utilize this style to create the ZMQ/TCP Proxy Module was to take advantage of the caching style necessary to facilitate voluminous amounts of data coming in from many potential sources (other elements within Spyder who want to make language requests). The ZMQ portion of the element provides a queue of requests so that the TCP portion can handle as fast as it can. Since ZMQ requests are so much faster than TCP, a queue within this element is necessary to cache buffered language requests as necessary.

### Usage guide 

The language server should already be initialized, it is an external resource.
 Here we initialize the ZMQ/TCP Proxy Module (can be from main)
 
 ~~~~ client = LanguageServerClient(host=args.server_host,
                                  port=args.server_port,
                                  workspace=args.folder,
                                  zmq_in_port=args.zmq_in_port,
                                  zmq_out_port=args.zmq_out_port,
                                  use_external_server=args.external_server,
                                  server=args.server,
                                  server_args=unknownargs)
    client.start()
    try:
        while True:
            client.listen()
    except TerminateSignal:
        pass
    client.stop() 
~~~~

Calls to the ZMQ/TCP Proxy Module can be made like:

~~~~ msg = {
            'id': self.request_seq,
            'method': method,
            'params': params
        }
        if requires_response:
            self.req_status[self.request_seq] = method

        logger.debug('{} request: {}'.format(self.language, method))
        self.zmq_out_socket.send_pyobj(msg)
~~~~

### Element Interface

![Interface 2](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/interface2.png?raw=true)

An interface is a boundary across which two independent entities meet and interact or communicate with each other.

### Interface Identity 

EditorStack is the module which facilitates communication between Spyder and the host machine. Specifically, writing to a file and receiving a success or error code.

### Resources Provided

A python object which contains data to be written to a file, or a code which indicates success or failure to Spyder.

### Resource Syntax

self._write_to_file(finfo, finfo.filename)

### Resource Semantics

1. finfo contains the actual information which is to be written to the filesystem. Filename contains the metadata that will be contained in the file written out.
2. The response code from the operating system from which the file is written will be interpreted by Python as a success or failure depending on the code received, and an exception will be thrown as appropriate.

### Resource Usage Restrictions

This section defines the circumstances under which the resource may be used. From the client portion (Spyder) there must exist changes to a file that can be written to the file system. For the second client to use the resource it simply has to be running (Spyder) and it has to have been preceded by a file write request in order to make a request to the Spyder program.

### Locally defined data types

Spyder fileinfo (which contains python objects and metadata) is the only locally defined datatype required for this interface.

### Error handling

Errors are handled by Python try-except. Attempting to write to a file that cannot be opened by the second client (the host machine) will result in the return of the requisite error code which will trigger an exception in Python, handled as an EnvironmentError.

### Variability provided

This section highlights how the interface may allow the element to be configured in some way. There is no specific variability to the file to be written out except for the contents in the python byte object, and the filename which will be created or written to by the host machine.

### Quality attribute characteristics

The architect needs to document what quality attribute characteristics the interface makes known to the element’s users. Autosaving was deemed to be an important feature for the Spyder IDE. Aside from the _write_to_file function, there is nothing else made apparent to the elements users.

### What the element requires

This element requires data from the file to be written to, which include changes byte data that reflects changes made to the file in the Editor stack, a file name (and other metadata) and it needs a response code from the host machine.

### Rationale and design issues

The design of this interface seems to be a standard design pattern for writing to and receiving responses from host machines as necessary. There aren't many design issues to consider other than how the interface handles errors from both clients ends. For example, if an illegal filename is provided, or how to handle not enough memory errors (on disk). The Spyder interface, EditorStack, surrounds its actions with try except and shows a dialog to the end user should an error occur, indicating what the problem was. or the host machine (the secondary client) there are no design issues to consider aside from how the interface is designed to write data, which is controlled via system API dependent on the host machine.

### Usage guide

~~~~ try:
            self._write_to_file(finfo, finfo.filename)
            ...
        except EnvironmentError as error:
            self.msgbox = QMessageBox(
                    QMessageBox.Critical,
                    _("Save Error"),
                    _("<b>Unable to save file '%s'</b>"
                      "<br><br>Error message:<br>%s"
                      ) % (osp.basename(finfo.filename),
                                        str(error)),
                    parent=self)
~~~~

### Context Diagram

This view shows how the Spyder IDE interacts with its external environment. Note the external libraries that are optional, but could be imported by a Spyder user to add plotting functionality. In addition, Spyder utilizes both ascii based file input and output, as well as the popular HDF5 file format more suited to large numerical datasets. We also show the interaction with Spyder and it's end users, as well as Jupyter console input and output. Finally, this view highlights how Spyder meets one of the QAS where a user has access to Code Completion behavior in the Spyder editor window, and how this feature is facilitated by an external highspeed ZMQ messaging system as a proxy to an external Language Server via TCP.

![Context Diagram](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/context_diagram.png?raw=true) 

### Sequence Diagram for QAS1 

The following diagram outlines how the Spyder IDE achieves the requirements in the QAS for the IDE autosaving system:

A user works on a large piece of code for an hour having saved once at the beginning, the power goes out and the user attempts to recover lost work. The user finds that 98% of their code is still available due to the automatic backup system (H L).

![Autosave Sequence Diagram](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/autosave_sequence_diagram.png?raw=true)

### Details of Interaction (Autosave Sequence Diagram) 

The manual and autosave functionality is detailed in the above sequence diagram. This diagram shows how the interactions that take place between a user, the core Spyder code (specifically the Editor), and some of the external libraries which provide GUI functionality, culminate in the eventual saving of a file; a user opens Spyder which subsequently initalizes a CodeEditor, and it's EditorStack (which is a stack of Editor widgets that represent one file each). A user must first manually save a file before it is autosaved. A user clicks one of the GUI options for saving, the Editor retrieves the stack of Editor widgets, locates the current editor (the one that the user has active), and calls the save function. The editor stack then calls it's "_write_to_file" function. This is where the actual file saving occurs. But it also triggers a number of other functions that tell the autosave timer to actually start. The autosave timer calls the exact same function, write_to_file.

### Sequence Diagram for QAS2

The following diagram outlines how the Spyder IDE achieves the requirements in the QAS for the IDE CodeCompletion system:

A developer is writing many classes with similarly structured code, each of which will require customized tweaks based on a boilerplate style of initial design but cannot be compressed into a single class. To save time, the user presses a combination of keys to activate the code-completion feature and is able to select from a saved list of code templates (H H).

![Code Completion Sequence](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/code_completion_sequence_diagram.png?raw=true)

### Details of Interaction (Code Completion Sequence Diagram)

This diagram highlights the sequence actions that takes place within the Spyder code base when a user opens the program, types something into a code editor, and the subsequent functional behavior that occurs and causes a code completion, syntax highlighting, or symbol definition event to take place. 

When the user starts the Spyder program, the MainWindow module initializes an Editor module, which initializes a CodeEditor object as well. The CodeEditor object represents the actual window that a user types characters into. Once the CodeEditor is started, it initializes an LSPClient, which forms part of the communication triad between itself, the ZMQ messaging library, adn the LanguageServerClient. The LanguageServerClient's initalization is also shown (top right of the diagram) which, chronologically, is initalized prior to the CodeEditor. When the LanguageServerClient is started, it starts listening and forwarding threads and sockets for data to and from both the LSPClient (on the Spyder side) and an external language server that utilizes the Microsoft Language Server Protocol.Rationale

### Rationale

The Spyder Integrated Development Environment (Spyder) appears to have been designed with extensibility in mind. Every feature available to a developer in Spyder is implemented as a plugin. These plugins are divided in such a way that there is a clear distinction between the responsibility of each feature. There is a central module which handles initialization of all primary plugins. Any plugin that is to be made part of Spyder must implement a plugin interface so that any such plugin can be easily integrated by the central module. The benefit of dividing these plugins by functionality, but forcing them to implement an interface, is that developers do not need to concern themselves with the constraint that alteration of one plugin, or the central code, will negatively affect the behaviour of the system, so long as the set of inputs and outputs (based on the standards established by interface functions) is adhered to.

Spyder also utilizes client-server architecture in order to provide services common to many development environments. Specifically, the ability to recognize syntax, code insights, and look up definitions. The client-server architecture is a software design pattern in which the server hosts, supplies, and manages most of a client's resources and services. The client-server architecture was used here specifically to maintain both modularity, in the sense that the Language Server Protocol features and functionality remain outside of the primary code base, and usability, in the form of speed due to the concurrency of an asynchronous messaging library and queue-based interface system. The modular approach allows external language clients to be switched out, as well as the interface (the ZMQ/TCP Proxy module) between the Spyder client and the language server itself.

For one of our quality attribute scenarios, we highlighted the use of the ZMQ which is a high performance messaging library and Language Server Protocol (LSP) which allows the Microsoft Intellisense feature to be present in the Spyder IDE. The Spyder IDE acts as a client and communicates with an LSP server through a ZMQ/TCP proxy system. The ZMQ/TCP proxy system code is contained within the Spyder IDE codebase, but it is executed independently from the main Spyder IDE MainWindow and CodeEditor. Here we have a client-server style of communication taking place between two or more modules, but acting independently with minimal coupling due to the highly modular plugin system.

Spyder is a perfect example of the benefits of modular software design. If, at some point in the future, the Spyder Development community decides to alter the code editor so that it uses a faster communication protocol, either in its ZMQ/TCP proxy, or in its LSPClient, minimal changes are required in either the central code, or any other plugins that make use of the Language Server as well. This, of course, is not limited to just the CodeEditor and the Language Server. The debugger, help system, console, linting system, and many others are all implemented using the plugin system, all of which implement the plugin interface.

# Component and Connector View

## Primary Presentation 

![Primary Presentation M4](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/PrimaryPresentationM4.png?raw=true)

## Element Catalogue

### Spyder Code Edito

The Spyder CodeEditor is a child to the parent module, Editor, which is more of a manager class for EditorStack objects (similar to an editor tab in your favorite IDE) which themselves contain CodeEditor objects. However, the CodeEditor's themselves utilize FigureBrowser class in order to display the results of code cells executed from within either the CodeEditor or an attached ShellWidget.

### plugins.editor.Editor

The plugins.editor.Editor registers the signal at the start of the event causing a chain reaction. The editor registers sig_run_cell as well as the _run_cell_in_ipyclient signals making a connection with them.

### plugins.plots.Plots

This class binds the ShellWidget to the figurebrowser class, because of this, whenever the ShellWidget notifies the figurebrowser about the data change, the figurebrowser class automatically display that change.

### Run Cell (GUI event)

"Run Cell" is the GUI event which gets called whenever the user clicks on the run cell button which is present in the UI, presses the F5 key, or clicks the context menu item "Run Cell" in order to execute the written code. The result of this event is that a signal object emits (publishes) an event to its connected functions, triggering a chain of events eventually culminating in the render and display of a graph from the internal/external kernel should an image result from that execution.

### sig_run_cell

This is a QTCore Signal object which is initialized during registration of a CodeEditor object which is initialized by an EditorStack parent class, which in turn is managed and initialized by a parent Editor object. The Editor object, during initial program startup, causes the sig_run_cell signal object to become connected to functions which trigger a series of other signals (emits/publishing actions) to eventually execute a code cell.

### QTCore emit

Emit is a function of the QTCore package which broadcasts a signal to any functions connected to it. The connected functions listen (subscribe) to incoming signals and become activated when a signal emit is heard.

### QTCore Signal

QtCore.Signal() is a resource provided by the QTCore signaling interface which facilitates asynchronous communication between thinly connected signals and functions. Such functions may be anonymous, and many such functions can be connected to one signal object. For example, one such signal handler is a QTcore signal object which is connected to the Signal emit function \_run_cell_text. Every signal may be attached to a connected function run_cell_copde, and there can be multiple connected functions acting as multiple listeners. This particular one is calling a function run cell.

### \_run_cell_text

The \_run_cell_text function in the editor is connected to sig_run_cell signal within the editor stack. This function is a chain of function calls formatting the code into an executable format.

### plugins.editor.widgets.EditorStack

\_run_cell_in_ipyclient is the function in run cell text which is in the Editor stack. It calls the \_run_cell_in_ipyclient which created a chain of events creating the signal. It's an editor window and editor stack has a code window. Editor stacks have code editors. Each editor stack contains a code editor. Each code editor stack has a code editor which has a code which is known as the cell. The Cell can run, either the full code or just a part of it.

![Editor Stack](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/EditorStack.PNG?raw=true)

### run_cell_in_ipyclient

Editor stack calls the function run_cell_in_ipyclient, it emits another signal which is the run_cell function in IPythonClient. This function is another step in the chain of commands triggered by the original GUI run cell broadcast.

### run_cell_in_ipyclient

This is a signal emitted by the Editor stack. Run_cell_in_ipyclient is another QTcore signal. This has a connected function and an emit function, the emit function is a qtcore function which is attached to the qtcore signal object.

This is a QTCore signal which is emitted by the editor stack and run_cell_in_ipyclient function. It has a connected function and an emit function, the emit function is a QTCore function which is attached to the qtcore signal object.

### plugins.plots.widgets.IPythonClient

IPythonClient stands for interactive python client and is also an instantiated member of each shell widget. The IPythonClient class forms a point of communication with either internal or external kernels which execute formatted code taken from either the code editor or the shell widget code cells.

### run_cell

A function of the IPythonClient. Another step in passing executable code down from the initial emitted broadcast due to a GUI event that in turn will trigger the silent_execute function within IPythonClient as well.

### silent_execute

The result of calling IPythonClient's run_cell command also results in this function being called, taking executable code from the source of a GUI event in which a user triggers "run cel", and finally forwarding that code to either an internal or external kernel which will evaluate the code and return a result.

### plugins.plots.widgets.ShellWidget

The shell widget can be observed in the following diagram (figure 3) as a tab labeled (for example) as "Console 1/A", "Console 2/A" etc. This is essentially a console instance embedded within a code editor. The ShellWidget contains an instantiation of an IPythonConsole which acts as a client for communication with an internal or external kernel. For the purposes of the Component and Connector view, the ShellWidget in this use case is one of the last few endpoints of execution as a result of a Signal emit broadcast that was triggered by a user clicking a GUI option essentially attempting to run a code cell.

The executable code passed down from the events prior to this will be sent to CodeWidget and which will send the executable code to the external kernel for processing and interpretation. The image below is a slightly outdated version of Spyder taken from the project website. The image shown is actually the FeatureBrowser element, now partially separated out from the ShellWidget itself.

![Shell Widget](https://github.com/Zhend/UVicDSA19/blob/master/images/Spyder/ShellWidget.PNG?raw=true)

### External Kernal

This encompasses any qualifying external modules with a kernel such as Matplotlib, Pandas or SciPy. The kernel must notify the Shellwidget and figure browser of the results of any code execution.

### Notify Data Change

A generalized label provided to any event which is emitted as a result of execution from an external kernel.

For the purpose of this view, the data change is an event caused by the external kernel causing a notification to be made available to ShellWidget, FigureBrowser, or any other listening widgets.

### figurebrowser handle_new_figure

The Notify data change which we got from the ShellWidget class will be passed to this signal handler Which will emit a UI event to the spyder CodeEditor. Figure browser is the class which, and handle_new_figure is the function that deals with changes broadcasted by the internal/external kernel.

### UI Event

Any event which triggers the user interface of Spyder to become changed in some way. In this particular case, the UI event is caused first by a user clicking Run Cell, culminating in a series of broadcasts and functions calls, leading to the rendering of an image on the FigureBrowser






