# Milestone 1: Stakeholders, Business Goals, and Ethics Report

## Stakeholders
Considering stakeholders plays a critical role in assessing or designing a piece of software. It is quite often that identifying these
stakeholders is the most difficult part of the process. This is certainly the case for *Quake-3-Arena*, as it was originally released 
in 1999 and since then the code base has been made open source. With the current state of development and pull requests for the game being 
minimal, as seen in the games github [insights page](https://github.com/id-Software/Quake-III-Arena/pulse/monthly), the main stakeholders 
for this project will be the user base. The users of the project are followed by the developers and maintainers of the code base as well as the owners to the rights of the game, as some sales are stil being made. The 
categories of stakeholders not listed below were deemed irrelevant for the current state of this project and left out of this analysis.

| Stakeholders | Description |
| --- | --- |
| Users | The users of this system consist of the community of players still actively playing Quake-3-Arena. Most metrics measuring the online player base will be quite low, although a small following of passionate fans still exist. |
| Developers | Developers make up the team that is responsible to implement and deploy the system. Quake 3 was developed by id Software and released in 1999. Since the game was not released to open source until 2005, later contributers to the [Quake-3-Arena](https://github.com/id-Software/Quake-III-Arena) repository will not be considered in this category.|
| Maintainers | Maintainers of a system make up the group of individuals which work towards evolution of the system once it is operational. In this project, the maintainers are made up contributors to the public repository for Quake 3. A community of contributors to furthering development of Quake 3 can be found at [ioq3](https://github.com/ioquake/ioq3), where the source code has been forked for development and experimentation. |
| Acquirers/Assesors | Acquirers are defined to oversee the procurement of the system or product and assessors handle conformance to legal standards. Since *id Software* falls under both these categories for this project, they will be grouped together. It is worth mentioning that ZeniMax Media acquired id Software in 2009.   |
| Communicators| Current communicators of the system are limited to the contributors of ioq3 and the online presence of selected dedicated fans.|
| Production Engineers | The hardware and softare enviroments responsible for running the project consists of the game and operating systems that the project is compatible with. **See Suppliers for more details.** |
| Suppliers | Quake 3 ran originally on PC and was later ported to the Dreamcast, PlayStation2, Xbox360, and NintendoDS systems. While under development, developers of the game were mostly concerned with creating the game for PC and the Dreamcast system. |
| Support Staff | Currently there is no active support staff for the game other than [forums](https://discourse.ioquake.org/) and [chat channels](http://ioquake3.org/discussion/) backed by the player community. |
| System Administrators | System administrators are responsible for running the system after deployment. This team is not neccessary in this project. |
| Testers | Generally a dedicated team of testers are designated from within the company (id Software) or contracted from outside sources to find bugs in the system. Unfortunatley we are unable to determine which option was selected but one of these options are the general practice. |

## Business Goals

- The game should be fun, and engaging to play for new and experienced players alike. The game should be easy for new players to get accustomed to, but deep enough that experienced players don't get bored
- It should be fast and easy to go from a user's desktop to playing Quake
- The game must be profitable 
- The mechanics of the game must promote gameplay that is exciting, and competitive. 

## Privacy and Ethics Report
### i. Introduction
Quake 3: Arena is the third game in the Quake video game series. A first person, arena-based multiplayer shooter, Quake 3 follows in the footsteps of other early PC shooters such as Doom and Wolfenstein. Unlike the second game, Quake 3 focuses solely on the multiplayer experience, removing the single player campaign mode developed for earlier iterations in the franchise. In this report, we will discuss some of the privacy and security concerns that must be considered when developing a game such as Quake 3 in order to be compliant with the ACM Code of Ethics. We will then explore the ethical dilemmas that can arise in the development and maintenance of an online multiplayer shooter. 

### ii. Potential Privacy and Security Concerns
As Quake 3: Arena is an online multiplayer game, it is inevitable that player data must be collected and stored on the game’s servers. The amount of data required when developing a multiplayer game should always be kept to a minimum in order to comply with ACM standards. In Quake’s case, current servers are no longer hosted by the developer, as the game was originally released in 1999, but it is always important for developers to be mindful of player data when dealing with private data and design their system with adequate security measures in order to prevent unauthorized access or unintended disclosure.

When developing a video game with a large fan base, security leaks are an additional concern that must be considered. Leaks can be harmful to sales, as they may not accurately represent the finished product, and they can reflect poorly on the company and its employees. Unfortunately, Quake 3’s development experienced a leak in which a test release was revealed to the public before intended. The leak contained weapons and maps that were included in the final product. Luckily, this leak did not hurt the overall sales of the game, which was successful upon release.

In addition, a note file in the game’s GitHub source code reveals that the software still requires extensive testing to ensure compatibility on different platforms. These compatibility issues may cause a system failure which could affect system security. It is unclear if any such vulnerabilities were present in the official release, however.

### iii. Ethical Dilemmas
The changes made to Quake 3 were a point of contention among diehard fans of the series, each with their own views on how the game should be designed. As with any game with a large fanbase, choosing what features to add or implement can present a difficult situation for the developers, who wish to make the highest quality software possible while satisfying their users. 

In addition to this, Quake 3 was rated “M” for mature by the Entertainment Software Rating Board (ESRB), meaning the game contains inappropriate content for users under the age of seventeen. As with any game with an “M” rating, there is an ethical concern for developers that younger players may gain access to the mature content in their software. Quake 3 specifically received it’s mature rating for containing violence, including blood are gore. In addition, trailers for the game depict characters smoking cigars, which could influence younger players to try tobacco. In the end, it is the parent’s responsibility to prevent their children from accessing inappropriate entertainment, but it is nevertheless a controversial ethical topic of which developers must be aware.

Finally, especially in older games, glitches and cheats were often used by players to break the game code and perform actions not intended by the developers. This can not only lead to breaking game mechanics, resulting in an unfair or unbalanced match, but could potentially lead to a security risk or compromised data. For this reason, game developers must take care to properly design and architect their games so as not to leave private data accessible in the event that an unintended bug is found. This is particularly true of Quake 3, since it was developed in 1999 when software updates and patches were not as commonplace as they are in video games today.


### iv. Summary
Quake 3 was ultimately a successful update to a beloved franchise, though not one without its share of challenges. As an online multiplayer game, its developers had to be careful to protect the data of its players, while dealing with the threat of development leaks. With an ESRB rating of “Mature”, Quake 3 contains content inappropriate for children, which meant the developers had to consider the influences their game might have if played by younger users. Finally, Quake 3 was developed in a time when bugs and cheats were frequently used to create unintended side-effects, which could present further security risks. In conclusion, we found that the developers of Quake created a quality game while respecting the privacy of its users and demonstrating ethical standards in compliance with the ACM Code of Ethics.

### v. Sources
- <http://q2scene.net/scene/index.php?op=col&id=7>
- <https://www.theregister.co.uk/1999/03/01/quake_iii_arena_leaked/>
- <https://github.com/id-Software/Quake-III-Arena>
- <https://www.esrb.org/ratings/search.aspx?searchType=title&titleOrPublisher=Quake+II>

# Milestone 2: Quality Attribute Scenarios

## List of ASRs
1. Client actions must be accurately communicated to the server a certain percentage of the time. (performance)
2. A client’s actions must be communicated to other clients within a required time constraint. (performance)
3. The system should render graphics to users on multiplayer platforms with low latency levels. (performance)
4. Multiplayer sessions should be constructed and run within a required time constraint. (performance)
5. Quake 3 must run on a variety of platforms and operating systems, including but not limited to Windows, Linux, and Mac OSX (modifiability)
6. Quake 3 must be structured in such a way that it can be easily ported to other platforms in the future. (modifiability)
7. For all systems that meet hardware requirements, Quake 3 must meet a rendering requirement of a specified number of frames per second (performance)
8. Quake 3 must support up to 16 player connections at one time (performance)
9. Testing and deployment of gameplay patches for small changes must be quick and efficient (modifiability)
10. Game servers must be available to players at all times. (availability) 
11. Quake 3 must be playable both offline and online. (availability)
12. Quake 3 must control fluidly with either a mouse and keyboard or gamepad control setup. (usability)
13. Quake 3’s user interface must be simple and easy to understand for players of multiplayer shooters. (usability)
14. Quake 3 players must only be able to access their own account (security)
15. Gamematching algorithm should be designed fair and balanced for user experience. (performance)


## Quality Attribute Scenario Templates

Table 1: QAS for performance in template form

| Aspect | Details |
|--------|---------|
| Scenario Name | Quake 3 constructs a multiplayer game lobby in under 1 minute |
| Business Goals | Ensure fluid gameplay experience for users |
| Quality Attributes | Performance | 
| Stimulus | User enters mupltiplayer matchmaking|
| Stimulus Source | Users | 
| Response | System finds sutiable players and groups them in to a game lobby |
| Response Measure | The game lobby was formed in under 1 minute |

Table 2: QAS for modifiabilty in template form

| Aspect | Details |
|--------|---------|
| Scenario Name | Gameplay patches must be able to be applied to the system in under 30 minutes |
| Business Goals | Ensure ability to further enhance the system |
| Quality Attributes | Modifiability | 
| Stimulus | Bugs in the current system |
| Stimulus Source | Developers | 
| Response | Changes tested and deployed |
| Response Measure | Updates are completed and applied correctly in under 30 minutes |

Table 3: QAS for usability in template form

| Aspect | Details |
|--------|---------|
| Scenario Name | A new user can understand and comfortably use the interface in under an hour of playtime |
| Business Goals | Ensure catering to the target user base |
| Quality Attributes | Usabillity | 
| Stimulus | Gameplay and interface navigation |
| Stimulus Source | Users | 
| Response | System is easy to interact with for users familiar to the genre |
| Response Measure | Amount of playtime before a user becomes comfortable with the interface |

## Utility Tree


| Quality Attribute | Attribute Refinement | Scenario |
|-------------------|----------------------|-----|
| Performance       | Frame rendering time | Quake 3 can render 30 frames per second on a system meeting minimum hardware requirements (H,H)    |
| Performance       | Game creation time   | Quake 3 constructs a multiplayer game lobby in under 1 minute (M,M) |
| Modifiability     | Deployment time      | Gameplay patches must be able to be applied to the system in under 30 minutes (M,M) |
| Modifiability     | Portability          | Quake 3 can be ported to a new platform in 4 months of development time or less (H,H)|
| Usability         | Interface familiarity| A new user can understand and comfortably use the interface in under one hour of playtime (H,E) |
| Usability         | Interface Customizeability| Controls should be adjusteable in sensitivity or by changing the corresponding key (M, E)  |
| Security          | password security  | Passwords should be encrypted and stored according to current best practices (M, M) | 

# Milestone 3: Module View

A module view is a representation of the structure of modules in a system, including their properties and responsibilities. Such a view aims to decompose the system into manageable units that can be reasoned about more easily. This helps with various aspects of design and development, including understanding the code structure, communicating to new stakeholders, and determining how changes may affect the system.

## Primary Presentation

**Chosen Quality Attribute Scenario:** A client's actions must be communicated to other clients within 100 milliseconds, depending on connection speed.

The uses view below shows the modules involved in sending and receiving messages between the client and server to update the game based on user inputs. 

![Quake Module View](images/Quake_Module_View.png)

## Element Catalog

**unix/linux_main.c:** The entry point for a linux-based system. Begins the event handling sequence.

**unix/linux_local.h and unix/linux_glimp.c:** Event queueing and handling logic.

**null/null_main.c:** The main game loop is defined here. 

**qcommon/common.c:** The common function Com_Frame() is called once per frame to update the game.

**server/sv_main.c:** Contains server specific code for updating the game.

**client/cl_main.c:** Contains client specific code for updating the game.

**client/cl_parse.c:** Parses messages received from the server and begins processing them.

**client/cl_input.c:** Begins the process of building a message to send from the client to the server.

**client/cl_net_chan.c:** Contains client specific code for sending messages across the network.

**server/sv_snapshot.c:** Begins the process of building a message to send from the server to clients.

**server/sv_net_chan.c:** Contains server specific code for sending messages across the network.

**qcommon/net_chan.c:** Contains common network code for sending a message over UDP to it’s destination socket.


## Context Diagram

The diagram below shows Quake's context in an external system, including its dependencies on external libraries and interaction with the operating system.

![Quake Context View](images/context_diagram.jpg)

## Behaviour

The sequence diagram shows the sequence of calls made by the system to send a message from the server to a client. As Quake operates via UDP, it does not wait for return values; instead, it continually updates every frame regardless of whether the client has received the message.

![Quake Sequence Diagram](images/Quake_Sequence.png)

## Rationale
Quake 3 is an online real-time shooting game. It requires immediate feedback for any actions taken by the players. The performance quality attribute is therefore essential to the architecture of the game. To establish a fair gaming environment, a client’s actions must be communicated to other clients within a required time constraint. This is the Quality Attribute Scenario this document aims to analyze.

First of all, Quake 3 supports online multiplayer features. Thus, a client-server pattern is used. A UDP connection between clients and server is established. UDP is chosen over TCP because UDP sends and receives packets without awaiting response, resulting in faster updates, but with the possibility of dropped data. This is okay in a real-time FPS game, where a stable connection is not prioritized. Instead, a fast and accurate current status of the game needs to be delivered to all the clients by the server. The server should not care about the consecutive movement of a client. The server only needs to send the most recent data back to the clients. By using UDP, regardless of the data sent by individual client, all clients receive the most recent status of the game, which provides a fast, real-time environment. 

The data sent from client to server depends on the internet connection of the client. If the connection is fast and stable, the server would be able to read every consecutive movement of the client. On the other hand, if the connection is terrible, the server will not be accurately updated with that client's movement, but UDP connection guarantees that other clients will not be affected. Other clients still receive the most current status of the game, and they continue to push the game forward. A mistake or failure of connection only burdens the flawed client, which makes sure other clients are not affected, and communication between clients is not delayed.

Furthermore, the module structure outlined in the primary presentation shows how the game loop and messaging are neatly organized, allowing common code to be re-used when appropriate. For example, when the client or server have built a message to send, they both can utilize the NetChan_Transmit() function to send out packets via UDP to their destination socket.

# Milestone 4: Component and Connector View

A component and connector view provides a runtime representation of a system. It shows how data is processed and passed between components, giving insight into the behaviour of a system.

## Primary Presentation

**Chosen Quality Attribute Scenario:** Connecting and maintaining up to 16 players for a multiplayer match, while adding less than 100 milliseconds of latency.

The client-server style was chosen to represent this quality attribute scenario, as it best illustrates how Quake 3: Arena handles simultaneously updating up to 16 client connections and keeping them in sync with one "master" server instance of the game.

![Quake CC View](images/M4CC-ClientServer.png)

## Element Catalog

**Server:** The central hub of messaging in Quake 3: Arena. The server receives updates from each client, passes the updates into the game, and sends commands to each client in turn. The server provides a "heartbeat" for the game, updating all components as necessary.

**Client:** The client is responsible for sending movement and other game data to the server to be updated. Each client runs its own instance of the game, and updates it with messages received from the server.

**Server interface:** Provides an interface for communicating with clients. Contains server interface methods such as SV_SendServerCommand. Interface methods are found in sv­_main.c

**Client interface:** Provides an interface for communicating with the server. Contains server interface methods such as CL_SendCmd and CL_ServerStatus. Interface methods are found in cl_input.c and cl_main.c

**sv_game:** The interface for communications between server and game.

**game:** This module performs server-side game logic, for example, keeping score, weapon and map data, etc. Client updates are passed into the game via the server.

**sv_bot:** Handles server interactions with the bot library.

**botlib:** In addition to human controlled players, Quake 3 also supports "bots" or computer controlled opponents. The logic for their movement and combat is found here.

**cl_parse:** Parses messages received by the server so they can be interpreted by the client game.

**cl_cgame:** The interface for interactions between a client system component and its corresponding client-side game. Sends parsed commands from the server to the client-side game.

**cgame:** The client-side instance of the game. Handles client-side game logic, such as player movement and rendering, updates according to received server commands, and sends updates about client data to the server.

## Interfaces

## Client Interface
The game client maintains a connection with the game server and uses this connection to update the server of its current state.  The server in return passes the state of other players to the client at the last known point in time.  The server and client communicate via UDP over a socket.
	
1. **Interface identity**---Game Client
2. **Resources provided**:
	The client communicates to the server using a standardized `qcommon/msg_t` struct type.  Each function within the quake VM that is responsible for managing the current game state sends and reads the msg_t type.  msg_t contains a byte array that each function can read and write to.  This interface exposes functions to read and write bytes to this array.  This allows messages to be serialized and deserialized over the network.  For some message types, the client and server are able to send acknowledgment messages as part of the sent data.  This can allow for having a mix of the speed benefits of UDP with some of the guarantees of TCP for the specific message types that require it, handled at the application level. 

	Each message contains a timestamp, this allows a client and server to discard any message that is older than the last received message.  The game is able to make this guarantee because time only moves forward as the game goes on, so we never care about an old message.  The current state of the game, in terms of things such as score are sent repeatedly such that we can skip some message and still maintain state accross remote game clients.

	Instead of manual message parsing, this would be a great place to use Protobuf buffers as a modern day example to handle the encoding/decoding of messages sent over the network.
	
3. **Data types**:
```
typedef struct {
	qboolean	allowoverflow;	// if false, do a Com_Error
	qboolean	overflowed;		// set to true if the buffer size failed (with allowoverflow set)
	qboolean	oob;			// set to true if the buffer size failed (with allowoverflow set)
	byte	*data;
	int		maxsize;
	int		cursize;
	int		readcount;
	int		bit;				// for bitwise reads and writes
} msg_t;
```

Here is the definition of `msg_t`.  This is the struct to send within the client and server.  The data byte array is parsed and sent over the network, and then decoded on the other end.

4. **Error handling** 
	In the event that a message is received, but is invalid, the parser gracefully skips the message and either returns a default value, such as 0, if it was trying to read an int, or it returns null in some cases.  This allows the callee to catch the error and decide how to proceed gracefully, without crashing the game.  This handling is partially found in the client code, but main found in the VM code.   

5. **Variability**:

6. **Quality attributes**:
In order to meet the Quality Attribute, 16 of these messages will be sent to each device every server 'tick'. Within the server would be an array that stores all 16 player states, and manages all of their updates in a single place.  This state is then sent accross the network to all other clients.  This is difficult to trace back to code as a large part of it appears to reside in the Virtual Machine found within the game, which calls the code living outside the VM and manages the current state of the machine. 

7. **Rationale**: See section below.

8. **Usage Guide**: Most important of all; how to actually use the interface with usage examples. 
In order to use this API, the assembly code used with the VM calls the appropriate functions to create a message buffer and parse it when receiving a message.

## Server Interface
1. **Interface identity**---Game Server
2. **Resources provided**:
	* a. Syntax: this is like a method signature. We can also use standards designed specifically for this, such as Interface Defn Languages (IDL) or Web Service Defn Languages (WSDL). Where would JSON or YAML or Protobuffers fit?
	* b. Semantics: effects of using the resource. Usage restrictions; pre/post conditions; values assigned; whether the resource changes or not (idempotence); new properties observed after the interface is used. We can use natural language, behavior diagrams, or formal languages (e.g. timing diagrams). As usual, there are tradeoffs of precision and cost. How important is it that you know what units you are getting trajectory fixes in?
	* c. Error handling: what happens when something goes wrong. E.g., does the resource revert back (rollback) to its initial state.
The server runs an event loop.  It continues to receive messages and parses them appropriately.  On every 'tick' of the event loop, it can receive one or more packets, process them, then send out one or more packets, to each respective client.  The event loop happens in `server/sv_main`. The server is able to maintain the current world state and the state of each client based on the messages received from the respective clients, this is then passed to the other clients on each clock tick.  The maximum number of client state that can be stored is 16, hence the maximum number of clients that can join a single game instance. 

3. **Data types**:
See the client description.

4. **Error handling**:
The server skips over any message it cannot parse, and simply moves on to the next message.

5. **Variability**: If the server is overloaded, it will parse less messages as it can skip over messages in the event loop if it lags behind.  This is designed such that it will try and catch up as soon as possible.

6. **Quality attributes**:
The server must be able to keep up with the updates of up to 16 clients simultaneously.  An asynchronous event loop allows this to happen to be able to process events in parallel, and drop messages off the queue if the server is lagging behind and unable to keep up.

7. **Rationale**: See section below.

8. **Usage Guide**:
The server shares some of the same code as the client.  This allows the server and the client to easily parse the same messages, as they are sent as byte arrays and re-interpreted on the receiving end.  The VM within the server is responsible for parsing the messages and turning them back into structs, such that they can be manipulated within the server. 

## Variability

Quake 3 Arena contains libraries within its source code which are able to be compiled on the [Linux](https://github.com/id-Software/Quake-III-Arena/tree/master/code/unix), [Windows 32/64](https://github.com/id-Software/Quake-III-Arena/tree/master/code/win32), and [Mac OS](https://github.com/id-Software/Quake-III-Arena/tree/master/code/macosx) operating systems. The variabilities in these builds will mainly affect processes such as graphics requirements and rendering, memory management and installation of batch files and dependencies required for the given operating system. The component connector view and use cases described in the specified quality attribute scenario will not change in any of these instances. The mentionable changes to the project will be those at build time, not at run time, as we are dealing with sockets and the transferring of UDP packets from the local system, which are handled on the main server.

## Context Diagram

The diagram below shows Quake's context in an external system, including its dependencies on external libraries and interaction with the operating system.
![Quake Context View](images/context.png)


## Behaviour

Behavioural diagrams capture the steps taken between actors and processes throughout the system. More specifically, the following sequence diagram outlines the steps taken between the user and the Quake 3 Arena system in the event of matchmaking. The user first runs their game locally, in this case on the Linux operating system version of the game. Local game files then process the request when matchmaking is selected by the user and sends the request to the local game event handler, which acts as a middle man between the local game and the server. The server processes the request in its main entry point and passes the data to the server’s copy of the game to create the client connection for matchmaking. Once the connection is made the server sends feedback to the client’s event handler via UDP sockets and monitors the connection periodically, dropping the client upon any connection timeouts. The event handler on the client’s side processes these UDP packets and updates the local game files. The process repeats in this manner until the end of the session or a break in connection.
![Quake Sequence View](images/sequence.png)

## Rationale

The client-server architecture is commonly used by online multiplayer games, and so it isn’t surprising that this is the architecture chosen by the developers of Quake 3: Arena. The client-server approach provides many benefits to the design of a multiplayer shooter, in particular to performance, allowing the game to update and send messages between clients with as little latency as possible. 

In order to understand the importance of this architecture to game performance, it helps to understand how Quake 3 and other computer games function in general. Typically, a game operates on a “loop”, which updates at a certain rate, often between 30 and 60 times per second. At each update of the loop, the game takes in important data like player locations, performs calculations like hit detection, re-renders the frame, and displays it to the end user. In an online-multiplayer game, this loops has to occur synchronously between multiple users.

Because of this it is important to have a single "source of truth" about the game and its current state. That way, each client receives a fair, equal representation of the game state with every update. This is what the server provides. It runs its own instance of the game that is constantly being updated with client data. In turn, each connected client runs a parallel instance of the game, performing intensive tasks like 3D rendering, and calculating player movement. By offloading much of this work to client machines, the server is able to prioritize tasks that only the server can perform. These include game logic and calculations that require data from multiple clients, such as keeping track of score, or hit detection. The server can quickly carry out these necessary updates and send the results back to the clients, so they can update themselves and repeat the process.

In Quake, we can see from the client-server diagram that the clients and server work together to perform all the tasks needed to update the game with each iteration of the game’s loop. The server receives updates from each client, and sends these updates into the server instance of the game to perform necessary calculations. The server is also in charge of managing bot data in case the match contains any computer controlled players. Once its calculations are finished, it sends the resulting commands back to the appropriate clients, who receive the commands, parse them, and update their own instance of the game.

The client-server architecture provides a simple, elegant way to scale a game to include multiple players without needing to put too much pressure on any single machine. Using the client-server approach, Quake 3: Arena easily handles up to 16 client connections, and updates them as required, all while introducing very little latency.

# Milestone 5: Technical Debt

Technical debt in software development is a measure of the additional work that will accumulate later in the project, 
based on a choice made earlier in the project’s lifecycle. Evidence of technical debt can be found in nearly every large-scale 
project in some form or another. Sometimes the debt is incurred unintentionally. There are often sections of the project 
where developers chose to take shortcuts or unknowingly used a naïve approach to the problem, resulting in future bugs or 
performance issues. In other scenarios, developers may make the decision to cut corners and get pieces of the project done quickly, 
due to external concerns such as budgets, timelines and available resources. Each of these scenarios come with drawbacks that the 
system will surely encounter at some point in its lifecycle. Developers and architects should be careful when deciding what shortcuts to take, and ensure that any tradeoffs will not negatively affect quality attributes important to the system's stakeholders. This section will look at the measure of the technical debt in Quake 3: Arena.

## Automated Code Analysis

### SonarQube Analysis
Unfortunately, the community edition of SonarQube is not compatible with C projects. Since we would have to purchase the developer's license to scan our project, SonarQube will not be used for this analysis. 

### Codacy Analysis

Although open source tools for analyzing projects written in C are limited, some insights are able to be made through the use of Codacy's automated code review tool. Functionality for C is still not fully supported with this tool, but issues involving security, performance of functions and other common "code smells" are brought to light.

![Quake III Static Analysis](images/Capture.PNG)

For projects written in C, Codacy does not support detection of duplicated code or other difficult to detect issues such as overly complicated files and their structures. However, an analysis of common performance issues and "code smells" was attainable. Based on the software tests, Quake holds up very well in code style and functional performance. As seen in the image above, the number of issues found in the scan puts Quake in the top 3% of results on the platform. This is relative to the size of the code base (only 2,972 issues are reported on the code base of nearly 400,000 lines of code). The most common and concerning issues are outlined below.

#### Memory Leaks

Memory leaks are a very common error in C programming. When memory is allocated to the heap, the space used must be freed once it is no longer needed, otherwise the program will continue accumulating unused memory. Considerable memory leaks may slow down other programs, or even cause a system crash. One mistake often made by developers is forgetting to check whether allocation of memory was successful or not. In the instance that the allocation fails, the memory is "leaked" and cannot be referenced. For example if the following line of code fails to realloc() the data, the memory would be leaked and become inaccessible to the programmer, causing unnecessary RAM usage.

![Quake III Static Analysis](images/memoryleak.PNG)

A solution to these issues, is to check if the allocation has failed by checking it's equality with the NULL datatype, and saving a reference to this data until it can be determined whether the new allocation is valid, as seen below. 

```
 new_data = (realloc (argv, size*sizeof(double)));
 if (new_data == NULL)
 {
   // could not realloc, but orig still valid
   QMessageBox::critical(d_matrix, tr("MantidPlot") + " - " + tr("Memory Allocation Error"),
     tr("Not enough memory, operation aborted!"));
 }
 else
 {
     argv = new_data;
 }
 ```

#### Handling of non-zero terminated strings

Often, strings are checked for validity by calling the strlen() function, which will return a value of 0 if the string is empty. However, the function does this by checking characters preceding a null terminator, which is expected to be at the end of the string. See the example below which is found frequently throughout the Quake III code base.

![Quake III Static Analysis](images/stringcheck.PNG)

If the string is not null terminated, the function call to strlen() will keep trying to count until it reaches the null terminator of the string, which may result in a memory access violation. One solution to this issue would be to invoke the strnlen() function instead, assuming the contents of the string don't need to verified, which appears to be the case. Other approaches would involve looping though the string to find the terminator, but the expected size would be required, or simply ensuring non-zero terminated strings are not used, which is what we must assume is the case at the moment.

#### Unused variables and redundant code

Other more minor problems worth noting include the declaration of variables throughout the code base which remain unused, and frequent snippets of assignments that seem to be assigning the value of a variable to the value it already had stored, as seen below.

![Quake III Static Analysis](images/vars.PNG)

![Quake III Static Analysis](images/memnull.PNG)

### CLion Analysis

We also used the CLion IDE's built-in static analysis tool to scan the code base. Unfortunately, without CMake, the tool was unable to find any architecturally significant technical debt. The scan's results mostly highlighted insignificant code smells. 

![Quake III Static Analysis](images/clion_quakeIII_static.png)

#### CMake

CMake is a modern compiler automation tool that simplifies the build process for large projects. It was first released in 2000, just after Quake 3 was released. Modern IDEs often use CMake to gather analytics on a C/C++ project in order to do static analysis and code completion. 

Many older projects, including Quake 3, use Make instead of CMake, which offers some of the same functionality but is more verbose and offers less integration with other tools. Since Quake does not use CMake, we found it difficult to navigate the large code base as the editor was not able to provide code hints or quickly jump between implementations and declarations of functions and variables. Had CMake been available to the developers at the time, this would likely have sped-up and simplified development, resulting in higher code quality. 

## Other Sources of Technical Debt

While the analysis tools we used provided some insight into various issues in the code, the results did not highlight any significant architectural issues. To get a better sense of potential sources of technical debt in Quake 3: Arena, we had to rely on our own understanding of the code base and the design choices and tradeoffs made by the game's developers.

### Virtual Machine

Quake 3: Arena uses a virtual machine (VM) as a means of storing state about the game. Using a VM means that the game code is more easily ported to a large number of target platforms. However, this makes the code more difficult to understand for new developers, as VM calls and game logic are interspersed throughout the code, and context is lost when the client code calls into the VM and vice versa. A developer will not be able to easily follow the code trace without extensive knowledge of the surrounding logic. 

Some modern compilers, such as the LLVM or the Java Virtual Machine implement a similar idea. By compiling source code into VM readable byte code, these tools allow for easy cross-platform development. The code and logic for this does not need to be understood by a developer in order for her or him to program in Java, for instance, as the VM is kept "under the hood", separated from the language itself. These modern compilers therefore allow for the advantages of using a custom VM without the drawbacks seen in Quake 3: Arena. 

The custom VM approach was taken in Quake 3 in part to satisfy the portability requirements of the game, but came with the consequence of making a more complicated, difficult to read code base. This tradeoff was deemed acceptable by the developers at the time, but had they been developing the game today, they might have modeled their design more closely after modern virtual machines.

### Game Engine

To save on development time and resources, many modern games use existing engines such as Unity or Unreal Engine. This creates a clear distinction between library calls used as part of the engine and the logic unique to the game. Quake 3 uses its own engine, known as id Tech 3. The engine is deeply embedded in the game, making it difficult to discern between game logic and engine logic. At the time that Quake was released, game engines like Unreal were not common, so a custom engine was built from the ground up to support some of the forward-thinking ideas and game mechanics that the developers wanted to implement.

Unfortunately, tying the game engine to the game logic as is seen in Quake 3: Arena is often a source of technical debt. There are a number of reasons why such practices are avoided in modern game development. To start, it makes it more difficult to read the code as engine logic and game logic are intermingled. This requires all developers to have an understanding of both engine and game logic, rather than allowing for developers to specialize, as is common in modern projects. Additionally, this slows down development as it forces developers to make frequent context switches in their thinking. Finally, having the game engine and logic tightly coupled makes it harder to extract the engine for reuse in future games. This can add code duplication and rework when making bug fixes to the engine across multiple games that share the same engine, but not the same code base.

## Technical Debt Summary and Conclusions

Using a variety of analytical tools, we scanned the code base of Quake 3: Arena, in search of technical debt. Unfortunately, high quality, free analysis tools that support the C programming language are few, meaning we were unable to use popular tools like SonarQube. The results we did find, using CLion and Codacy, while interesting, were not quite on the architectural level. Some of issues we found included potential memory leaks and risky use of the strlen() function.

We also considered some of the significant architectural choices made in the development of Quake 3, and how they could lead to unwanted technical debt. A custom virtual machine was developed for the game, in part to facilitate porting the game from one platform to another. While this solved the portability requirements of game it dramatically increased code complexity and was implemented in a highly coupled manner. Similarly, a custom game engine was built into Quake 3, instead of building the engine separately or using a pre-made game engine like Unreal. This led to more code complexity and reduced the potential reusability of the software. 

In conclusion, we found that while the code for Quake 3: Arena is optimally engineered to meet the quality requirements of the project, the developers had to make some significant design tradeoffs in order to reach their goals. 

