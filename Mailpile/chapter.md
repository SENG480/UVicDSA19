# Mailpile
## Table Of Contents

 1. Purpose
 2. About XXX System
 3. Stakeholders
 4. Business Goals
 5. Architecturally Significant Requirements (ASR)
 6. Utility Tree
 7. Quality Attribute Scenarios (QAS)
 8. Module View
    * Primary Presentation
    * Element Catalog
    * Context Diagram
    * Interfaces
    * Rationale
 9. Component and Connector View
    * Primary Presentation
    * Element Catalog
    * Context Diagram
    * Variability Guide
    * Rationale
 10. Code Quality and Technical Debt
 11. Conclusion

## Team 
1. [Ahmad Alsaif](https://github.com/AhmadAlsaif)
2. [Deepak Kumar](https://github.com/deepak21188)
3. [Travis Wilson](https://github.com/TWilsonT)

## 1.0 Purpose
This project was completed for the University of Victoria's Documenting and Understanding Software Systems course. It is constructed to be an in-depth analysis of an open-source software system to gain a deeper understanding of its purpose, implementation and architecture through a set of procedures taking to document the system. In this chapter, we are presenting Mailpile's stakeholders, business goals, quality attributes, architecturally significant requirements, a module view of the system, a component and connector view of the system, and an inspection of the code quality of Mailpile.

## 2.0 About Mailpile System
Mailpile is a [Mail User Agent](https://en.wikipedia.org/wiki/Email_client) (MUA - commonly known as "mail client") which currently knows how to read mail from Mbox, Maildir, POP3 and IMAP. Mail client is the software that lets a user view, compose, receive and send mail. Mailpile is written in Python, and has very few external dependencies that are not packaged with Python's standard library. 

Mailpile is different from most MUAs predominantly in that its architectural paradigm is not "list mail from folders", focusing on fetching, listing, viewing, writing and sending mail, with features like search and tagging as an afterthought, but rather a "search engine for mail" with a focus on searching and tagging, with fetching, viewing, writing and sending as necessary but in terms of workflow, secondary actions [1]. 

## 3.0 Stakeholders


| Role | Concern | Instances |
|------|--------|--------|
| Acquirers | Oversee the procurement of the system or product| [Mailpile](https://www.mailpile.is/)/Co-founders(Bjarni Einarsson, Smári McCarthy, Brennan Novak) |
| Assessors | 	Oversee the Mailpile’s conformance to standards and legal regulation |  co-founder and lead developer Bjarni Einarsson |
| Communicators | Explain the system to other stakeholders via its documentation and training materials | Mailpile [Wiki](https://github.com/mailpile/Mailpile/wiki), Mailpile [blogs](https://www.mailpile.is/blog/) , Mailpile [Help](https://www.mailpile.is/faq/) |
| Developers | Construct and deploy the system from specifications (or lead the teams that do this) | Lead developers( Bjarni Einarsson, Smári McCarthy, Brennan Novak, Alexandre Viau, Alexander Haase, Páll Hilmarsson) and over 100 Mailpile's open source community [contributors](https://github.com/mailpile/Mailpile/graphs/contributors)  |
| Maintainers | Manage the evolution of the system once it is operational | Mailpile's opensouce community and core management team(Bjarni Einarsson, Smári McCarthy, Brennan Novak) |
| Support Staff | Provide support to users for the product or system when it is running| Mailpile's core developer's team |
| Testers | Test Mailpile to ensure that it is suitable for use | Mailpile's core developer's team, Mailpile's open source community and users who uses Mailpile and report the issues  |
| Sponsors| Person or group who provide support and financial resources | Mailpile's community of [backers](https://www.mailpile.is/thank-you/)|
| Users | Define the system’s functionality and ultimately make use of it | It is meant for wide range of users who prefer integrity and privacy of their data. For example : Researchers, Professional, Business Owners, Academics, Students etc|


## 4.0 Business Goals

Once we have recorded the Mailpile stakeholders; we can consider their interests in Milepile to complete a list of their business goals. The following table provides the business goals alongside a description for each goal.

The system should be safe, easy and allow users to read, write, search and organize their e-mail. 


| Business Goal | Description |
|------|--------|
| Privacy | The content of the email is encrypted and only visible to the sender and receiver |
| Integrity | The messages are original (not forged or false) |
| Delivery | Messages are delivered undamaged and within a timely manner |
| Storage Privacy | Unauthorized 3rd parties cannot read the content of the email |
| Storage Integrity | Unauthorized 3rd parties cannot modify the email |
| Availability | Users should be able to easily and safely access the content of their email |
| Metadata Privacy | The only people who can know the identity of the communicators are those who are involved in the conversation  |
| User Experience | To implement simple, safe and easy to use user interface which reduces cognitive load and risk of errors |
| Organize | User should be able to have fast search and organize their large volume of emails. |
| Growth | To increase open source community and financial supports/backers. Currently, there are 3500+ donors which includes businesses, organizations and individual supporters |


## 5.0 Architecturally Significant Requirements

### 5.1 List of ASRs

- Performance
  - Email should be delivered to recipient as fast as possible (near real time) 
    - The system employs appropriate queue-and-retry strategies
    - The system informs the user if a message cannot be delivered in a timely fashion.
  - Mailpile should respond to the search queries quickly (less than 5 seconds)

- Privacy & Security
  - Implement protection against viruses and phishing
  - Content of email should be safe from forging and eavesdropping
  - Users data should be stored locally in a secure manner (encryption)
    - Protects against situations such as stolen laptop
  - Unauthorized 3rd parties cannot read or modify the content of any email.
  - The system will not allow any ads
    - Should filter out spam emails also

- Usability
  - The user interface should be designed to reduce cognitive load
  - The user interface should be intuitive
  - The user interface should enchance the user experience
  - Users should be able to read and write mail without an internet connection
  - Users should be able to organize their emails efficiently using tags and categorization

- Availability-  H/W Failure
  - In the event of system failures (disk corruption etc.), data should be recoverable 

### 5.2 Prioritized List of Quality Attributes

| Quality Attribute | ASR | Description |
|------|--------|-----------|
| Performance | Performance and Implementation | Email should be delivered within 1 minute to the recipient (this implies that Mailpile uses appropriate queue-and-retry strategies), and the user should be informed if a message cannot be delivered quickly. Also, Mailpile should respond to search queries within 5 seconds |
| Usability | Usability Tests | Basic Mailpile functions should be tested from a user's point of view (send, search, etc.) to ensure good usability. A user should be able to understand the interface quickly in such a way that it “makes sense to them". Users should be able to easily install Mailpile. |
| Availability | Data Availability and Backups | Mailpile will keep secure backups of all data in case of a H/W failure. This data includes public and private keys. Additionally, resources need to be provided to educate and assist users during a recovery.|
| Privacy and Security | Data Integrity, Privacy And Security | Messages are delivered intact, and their contents have not been eavesdropped on. Mailpile will support the OpenPGP, PGP/MIME and Autocrypt standards for encryption and digital e-mail signatures. Generally user metadata should not be tracked, if it must be then it is kept anonymous. |


## 6.0 Utility Tree

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Utility%20Tree.png "Logo Title Text 1")

## 7.0 Quality Attribute Scenarios (QAS)

#### 7.1 Foreign Access Scenario

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Foreign Access Scenario |
| Business Goal | The content of the email is encrypted and only visible to the sender and receiver |
| Quality Attribute | Privacy |
| Stimulus | Interception of email (man in the middle, or related) |
| Stimulus Source | Malicious Third Party |
| Response | Entire email message is encrypted, and unviewable |
| Response measure | No part of the message can be viewed (subject, from, to, body, etc.) |


#### 7.2 Foreign Access Scenario

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Mailbox Search Scenario |
| Business Goal | Users should be able to quickly search a large volume of emails |
| Quality Attribute | Performance |
| Stimulus | A search query is submitted by a Mailpile user |
| Stimulus Source | User |
| Response | Mailpile searches mailboxes for matching objects and provides the result to the user |
| Response measure | Matching objects are shown to the user in less than 1 second  |


#### 7.3 Data Availability Scenario

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Data Availability Scenario |
| Business Goal | Users should be able to easily access the content of their email |
| Quality Attribute | Availability |
| Stimulus | The authorized user clicks on the desired email  |
| Stimulus Source | User |
| Response | Feedback that their email is being downloaded |
| Response measure | A new interface open and shows the contents of the email |




## 8.0 Module View

### 8.1 Introduction 

This milestone documents the module structure of Mailpile. The views presented below are intended to show one of the Quality Attribute Scenarios created in Milestone Two. The name of the QAS is "Foreign Access Scenario". Our main focus here is to show how the architecture implemented by Mailpile facilitates our quality attributes scenario. The QAS is included here for the sake of convenience:  

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Foreign Access Scenario |
| Business Goal | The content of the email is encrypted and only visible to sender and receiver |
| Quality Attribute | Privacy and Integrity |
| Stimulus | Interception of email (man in the middle, or related) |
| Stimulus Source | Malicious Third Party |
| Response | Entire email message is encrypted, and unviewable |
| Response Measure | No part of the message can be viewed (subject, from, to, body, etc.) |


### 8.2 Primary Presentation
We have selected a "uses" diagram to present the primary view , which represents what modules use what other modules and therefore their dependencies. This helps to understand the clear picture of how Mailpile is designed.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Module%20View%20Diagram.jpeg "Primary View Diagram")





### 8.3 Element Catalog

The element catalog introduces the elements that are relevant to the above primary view diagram. This sectoin explains the important architectural elements in the Mailpile system.

#### Mailpile 
"Mailpile" is the main package of the Mailpile email client. It contains the implemenation of all major functionality (UI, security, email management etc). 

#### Plugins
The "Plugins" package contains modules which are independent of the Mailpile source tree. It contains several other modules like: backup, compose, eventlog, oauth, search, crypto_gnupg, crypto_autocrypt etc.

#### Crypto
The "Crypto" package contains all the cryptographic functionality related modules of Mailpile.

#### Email Key lookup
This module is responsible for local key discovery. When a user installs Mailpile it generates a key for them and stores it locally. Mailpile works on the TOFU(Trust On First Use) principle, which means that when a new key is discovered, the user can choose to accept it, and it is stored locally as a trusted key. The Key lookup module is used to find these keys when required.

#### Keydata
This module is used to get keydata (creation time, validity, type, name, size, fingerprint, uids etc.).

#### GPGI
The GPGI(GNU Privacy Guard Interface) module implements crptographic functionalities related to GnuPG(GNU Privacy Guard)  and PGP key generation. 

#### GnuPG
GnuPG allows Mailpile to sign and encrypt data communications. Mailpile uses GnuPG to manage PGP encryption keys. The PGP public key of the other party must be present in the GnuPG keychain for Mailpile to send a PGP encrypted email or to verify a received PGP signature.

#### GnuPG Key Generator
This module is used to generate new PGP(Pretty Good Privacy) keys.

#### PGP/MIME
PGP/MIME is another standard Mailpile uses for encryption and signing. Since Mailpile needs its users to be able to communicate with other email client users, and most desktop and mobile clients support PGP/MIME, Mailpile should be able to recieve and parse PGP/MIME formatted mails. 

The PGP/MIME module is a wrapper of all the functionality for PGP/MIME encrytion, signing and decryption.

#### State
The State module inside the "crypto" package is used to maintain the cryptographic status of a message. It maintains two types of status: one is the signature status of the message, and the other is the encryption status of the message. 

Signature and encryption status are indicated using different tags, such as mp_sig-none, mp_sig-changed, mp_sig-unsigned, mp_sig-revoked, mp_enc-error, mp_enc-decrypted, mp_enc-lockedkey.

#### Autocrypt_utils
Autocrypt is a set of guidelines for end-to-end encryption. Mailpile is using autocrypt to perform key exchange mechanisms,  and to protect metadata privacy. The Autocrypt_utils module contains many autocrypt utilities, like: parsing autocrypt headers, creating autocrypt headers, and creating autocrypt compliant keys. 

#### Crypto_autocrypt
The Crypto_autocrypt module implements various autocrypt API commands and functionalities, which mainly includes: adding autocrypt headers to outgoing mail, autocrypt key management, and parsing autocrypt headers for incoming mail.

#### Crypto_gnupg
The Crypto_gnupg module implements various GnuPG API commands and functionalities. These include: GPG key management (key search, key receive, key import, key signing), and GPG related email content processing.

#### Compose
The Compose module is used to implement content composition functions, such as: creating a new blank email for editing, editing an existing draft, creating a reply draft, creating a forward draft , attaching files to email, removing attachements from mail etc.

#### Email 
The Email module implements the core functionalities for email/message processing, including: preparing headers, creating messages, making attachements, updating attachements, deleting messages , getting metadata and so on.

#### Security
The Security module is a container for all security related Mailpile code.

#### Commands
All the commands implemented in Mailpile can be found in the Commands module. Every command is derived from the base "command" class, defined in the Commands module. These commands are exposed to user by either CLI (command line interface) or web interface, and as REST APIs end points.







### 8.4 Context Diagram

The following diagram outlines the context for the previous primary view, in particular showing the external elements used by the Mailpile system. The purpose of this diagram is to provide a better understanding of what external elements are used in the functionality of Mailpile. We should note, however, that Mailpile has very few external dependencies that are not already packaged with Python's standard library.


![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/context%20Diagram.jpg "Context Diagram")

### 8.5 Interfaces

Interface diagrams for this project are presented in this section. The first interface view shows the interface between crypt_autocrypt and EmailKeyLookupHandler.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Interface%20View%20One.png "Interface View One")![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Interface%20Key.png)


In the code, the above interaction can be seen in [mailpile/plugins/crypt_autocrypt.py Line 281](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/crypto_autocrypt.py#L281)


The second interface diagram shows how the GnuPG library is used in the rest of the mailpile project. In implementation, GnuPG is only an interface, and the actual implementation of the functions is hidden away in other classes (those being: "autocrypt_utils", "GnuPGKeyGenerator", "GnuPGResultParser", and more).


![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Interface%20View%20Two.png "Interface View One")

GnuPG is used by "crypto_autocrypt" in exactly one place, [mailpile/plugins/crypto_autocrypt Line 309](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/crypto_autocrypt.py#L309
). In this case it is used to grab a key.

Crypto_gnupg is another place where the GnuPG library is used in the code. It is used many times, including:

* [mailpile/plugins/crypto_gnupg.py Line 104](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/crypto_gnupg.py#L104
) - list_keys()
* [mailpile/plugins/crypto_gnupg.py Line 106](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/crypto_gnupg.py#L106
) - address_to_keys
* [mailpile/plugins/crypton_gnupg.py Line 115](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/crypto_gnupg.py#L115
) - get_pubkey
* [mailpile/plugins/crypto_gnupg.py Line 80]() - list_secret_keys

For "crypto_gnupg", like with "crypto_autocrypt", all the functionality is key related. However, "crypto_gnupg" uses GnuPG more extensively, by listing keys, getting keys etc.



### 8.6 Rationale
Mailpile is an open-source modern email client, with user-friendly security and privacy features. It is still in the development stage, but is nearing its first release.The quality attribute which we are focusing on in this milestone is "Security",  and the QAS we chose is about end-to-end encryption. The full Quality Attribute Scenario is included in the introduction section of this document.

Mailpile's architecture is based on a modular, "Seperation of Concerns (SoC)" approach. Mailpile implements all the cryptographic related modules inside a single package called "Crypto". The project aims to support many different cryptographic standards (including encryption, decryption, and signing techniques), so this is quite a large (and important) portion of the codebase. Keeping all the cryptographic modules in a separate package ensures that they are decoupled from the rest of the system, which is helpful when adding new cryptographic techniques. This means that new cryptographic modules can be added (or old ones removed) easily, and without affecting other modules. This ability to quickly implement new crytographic standards is extremely important to the security of Mailpile (as new, better methods can be added quickly, and and older in-secure ones can be removed). The "SoC" approach is also beneficial in that new developers who want to work on security modules only need to understand the code inside the "Crypto" package, and won't need to dig into whole code base.

Mailpile's architecture is also plugin based. Plugins for the project are contained under the "[mailpile/plugins](https://github.com/mailpile/Mailpile/tree/master/mailpile/plugins)" folder. The use of plugins allows for developers to create and install packages that do not live in the regular Mailpile source tree. Major functionalities are implemented in these seperate plugin modules. This means that plugins (and therefore major functionality) can be tested and run independently of each other. Every command that Mailpile uses is written as an internal plugin. This relates to privacy and security because the cryptographic APIs Mailpile uses are implemented as plugins. The huge advantage of structuring the code in this way is that developers can run or test commands independently (using either the command line or a web based interface).

An important design decision is exactly what encryption standards Mailpile will support, and this decision should be based on what kind of security they want to achieve for their users. For example, one of Mailpile's goals is "Metadata Privacy". To protect metadata privacy, Mailpile has chosen "Autocrypt" as its default mode of key discovery and distribution. Non-autocrypt methods for checking key authenticity rely on a "Web of Trust". This is not ideal for the project, as it can be used to infer and publish a "social graph" for it's users. To protect their metadata privacy, this social graph must be kept private. Autocrypt, however, embeds keys into message headers, and uses a de-centralized model for key discovery and authentication, meaning no such graph can be created.

The final consideration for the project, is that Mailpile must operate within already existing privacy standards. This means it supports OpenPGP encryption standards (using GnuPG). However, these standards are often not strict enough to fully support Mailpile's own privacy and security standards, so they must do additional work on top of them. In the case of OpenPGP encryption, their is a deficiency in protecting user metadata, and anonymity. Also, OpenPGP does not encrypt message headers (meaning the "subject", "from", and "to" lines are all sent un-encrypted). To solve these OpenPGP problems, Mailpile also implements PGP/MIME, to add in these additional security measures. 



## 9.0 Component and Connector View


### 9.1 Introduction

The following is an updated (more correct) quality attribute scenario, based on those defined in Milestone Two.

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Mailbox Search Scenario |
| Business Goal | Users should be able to quickly search a large volume of emails |
| Quality Attribute | Performance |
| Stimulus | A search query is submitted by a Mailpile user |
| Stimulus Source | User |
| Response | Mailpile searches mailboxes for matching objects and provides the result to the user |
| Response measure | Matching objects are shown to the user in less than 1 second |


### 9.2 Primary Presentation

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Software%20Component%20Diagram.png "Primary View Diagram")

### 9.3 Element Catalog

#### Mailbox

Mailboxes are the local directories of Mailpile. This is where email gets stored from mail server sources (such as POP3, IMAP, etc). Mailpile allows its users to manage their own mailboxes; including adding, deleting, configuring.

Each mailbox is scheduled to get updated email from the server sources. New emails are decrypted by the "crypto" module on the fly.
 
#### Mail Sources

Mailpile's "Mail Sources" module takes care of importing mails from external servers into Mailpile's local mailboxes. Mail sources can represent remote servers (IMAP, POP3, etc.) or local sources such as a Thunderbird installation. This component is responsible for two tasks:
1. Discovery and processing of new mailboxes containing email 
2. Discovery and processing of new email messages

Mail Sources are configured as part of the Mailpile configuration tree. Each mail source is a named dictionary under the "sources" section of the Mailpile configuration.

#### Crypto

This component contains all of the cryptographic functions for Mailpile. With regard to our QAS, it is used to decrypt incoming (encrypted) email messages.

#### Mail Index

The key for quickly searching email is to use indexing. Mailpile maintains search indexes in local storage. All the search index related functionalities(like creating index from message, adding index to the storage, retrieving etc) are implementes inside mail index component.

During the indexing process each email is read and added to a Mailpile index. An index stores things like: subject, sender, keywords, attachments. The "Mail Index" component also applies the tags based on global tagging rules, and auto tagging.

#### Mailpile Index Storage

This the local storage file where the Mailpile's search index is stored.

#### Search

Search is one of Mailpile's core components. It receives various types of search queries from users. Based on the terms in the search query, it communicates with the "Mail Index" component to find relevant emails.  

#### User Interaction 

Mailpile supports two types of user interfaces (CLI and Web Interface) to allow users to interact with it. It supports command based interactions to interact with the Mailpile back-end. Most commands are exposed to the users via a command line interface, and web interfaces which are implemented with HTML pages. 

#### Command Line Interface

Mailpile has a command line interface which can be used by developers to have quicker testing and interaction with the Mailpile back-end.

#### Web User Interface

Mailpile has an interactive web interface to make interaction easier for non-technical users.







### 9.4 Context Diagram


The following diagram outlines the context for the primary view. In this context diagram, we are highlighting the search component of Mailpile and how it interacts with external elements. When it comes to this QAS, we should note that Mailpile has minimal [external dependencies.](https://www.mailpile.is/blog/2013-08-15_Digging_Through_the_Details.html)

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/context%20Diagram2.png "Context Diagram")




### 9.5 Interfaces

[Search Command](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/search.py#L686)

#### 9.5.1 Mailpile User Search Interface

**Interface Identity**

CLI and Web Search Command -- [implemented here](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/search.py#L686)

**Resources Provided**

Provides one command (defined in [plugins/search.py Line 1011](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/search.py#L1011)) which can be used for either web searches (through the web client's user interface), or command line searches.

Provides these modifiers for search queries ([plugins/search.py Line 691](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/search.py#L691)): 
```
HTTP_QUERY_VARS = {
        'q': 'search terms',
        'qr': 'search refinements',
        'order': 'sort order',
        'start': 'start position',
        'end': 'end position',
        'full': 'return all metadata',
        'view': 'MID/MID pairs to expand in place',
        'parent': 'Parent folder, in browse mode',
        'context': 'refine or redisplay an older search'
    }
```
Search is idempotent (does not change the state of the program), and repeating a search will yield the same results. 

**Data Types**

* The ["Search" class](https://github.com/mailpile/Mailpile/blob/6eddd6763494db2eb75d295bf179b192aab23084/mailpile/plugins/search.py#L686) created is an extension of Mailpile's base ["Command" class](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L27). The "Command class is a generic class, which all Mailpile commands inherit from. It provides base functionality, such as interpreting different input formats ([json](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L177), [xml](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L186), [txt](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L189), etc.), and [error](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L417)/[success](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L434) handling. 
* All query variables defined above are python "String" variables (even those which would normally be assumed to be integers, such as start position and end position).

**Error Handling**

Error handling is implemented in the base "Command" class, and can be seen here: [mailpile/commands 417](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py#L417). Error scenarios include those where invalid queries are entered, as well as searches which have network failures.

**Variability**

The interface can be used from either the web client, or the command line, but the implementation (and functions they can perform) are the same.

**Quality Attributes**

* Usability: A user can choose to search with either a web client, or CLI depending on comfort level
* Modifiability: Both the CLI and Web searches are implemented in only one spot (so any future changes need only to be done in one spot).

**Rationale**

Mailpile in general is command based. This means that any Mailpile function a user would be interested in performing is implemented as a command. These commands then have buttons in the Web UI, but they can also be used as direct command line commands. This allows "power users" and "casual users" alike to use the application.

**Usage Guide**
Web searches in Mailpile are performed with a simple search bar (just as in GMail, Outlook and other web-based mail clients). More interestingly, some sample [CLI searches](https://github.com/mailpile/Mailpile/wiki/Using-Mailpile) can be seen below:
```
$ ./mp
mailpile> search bjarni einarsson
...
mailpile> search subject:bjarni
...
mailpile> search from:bjarni to:somebody
...
mailpile> search from:bjarni -from:pagekite
...
mailpile> search group:family -from:mom
...
mailpile> s att:pdf
...
mailpile> s has:attachment
...
mailpile> s date:2011-1-30 +date:2011-1-29
...
mailpile> s year:2011 month:12
...
mailpile> s dates:2011-12..2012-04-15
...
mailpile> s mailbox:path/fragment/or/filename
```

#### 9.5.2 Mailpile Index Storage Interface

**Interface Identity**
Index Databasing Interface

**Resources Provided**
Mailpiles ["MailIndex"](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L38) class handles all the functionality related to reading/writing indexes. These indexes aree important because they allow for faster searching.

The capabilities of this class are [shown below](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L49):

```
CAPABILITIES = set([
        BaseIndex.CAN_SEARCH,
        BaseIndex.CAN_SORT,
        BaseIndex.HAS_UNREAD,
        BaseIndex.HAS_ATTS,
        BaseIndex.HAS_TAGS])
```
Even though all these functions are implemented, for this interface we care only about the read/write behaviour which is needed for searching.

In this class, index writing is implemented [mailpile/search.py Line 300](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L300). This is where Mailpile writes the index to a file, for later usage. Secondly, the reading of created index files is also implemented [mailepile/search.py Line 1525](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L1525).

**Data Types**
* Files in this Class are those created using Python's default 'File' [objects](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L173).
* Index's are Python 'List' [objects](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L60).
* Index tags are represented using Python's 'Dictionary' [objects](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L64).

**Error Handling**
Errors are *not* handled in the MailIndex class. Therefore they must either be handled in the code which uses the class, or else they will cause crashes. Erorrs that could occur in this class include those where files either cannot be found or are corrupted.

**Variability**
N/A

**Quality Attributes**
* Performance: Indexes allow searches to happen fast

**Rationale**
The "MailIndex" class is an interface used for reading/writing index files (which are later used for searching). Indexes allow for faster information retrieval, because they allow the search to forgo scanning the entire dataset (in this case emails).

**Usage Guide**
Indexing happens automatically (behind the scenes), and occurs in [four stages](https://github.com/mailpile/Mailpile/wiki/Indexing-Mail):

1. Configuration: create mail sources
2. Mailbox discovery: apply discovery policies
3. Message copying: update local mailboxes
4. Message indexing: record metadata and search terms, apply tags




### 9.6 Variability Guide



In the C&C primary view of Mailpile's email search, the number of mail sources and number of mailboxes are both variable. A user can add new mailsouces, and mailboxes. A user may also choose to remove existing ones. The number of mailboxes will depened on the requirements of each user. 

Mailpiles architecture is designed to handle a variable number of mail sources and mailboxes. The "Mailbox Discovery" module keeps Mailpile's internal state consistent and in sync with remote IMAP and POP3 servers. When a new mailbox is added to Mailpile, it is registered insde Mailpile's "mailbox" configurations (example below).

<pre><code>
{
"mailbox": {
            "000w": {
                "apply_tags": {}, 
                "local": "/home/USER/.local/share/Mailpile/default/mail/12345", 
                "name": "MyGmailTag", 
                "path": "@000w", 
                "policy": "unknown",
                "primary_tag": "Personal GMail/Baronsstigur39", 
                "process_new": true
		}}		}
</code></pre>
			
When a new mail source is added to mailpile it is registered in mailpiles configurations under sources section
<pre><code>
{
   "sources": {
        "abcdefg": "{ ... }", 
        "1234xyz": "{ ..(Local mailboxes).. }", 
        "999000x": "{ ..(Personal GMail).. }"
    }
}
</code></pre>

			





### 9.7 Rationale




Mailpile is an open-source modern email client, which features enhanced organization, searching, security and privacy. The project is still in the development stage, but is nearing its first release.

The quality attribute which we are focusing on in this milestone is "Performance", and the QAS we chose is relatde to quickly searching a users mailboxes. The full Quality Attribute Scenario is included in the introduction section of this document.

Having fast and efficient search functionality is one of the primary business goals for Mailpile. The developers have taken several measures to implement this fast searching; and this causes Mailpile to have fundamental differences in the way it handles and stores email. Most "first generation" email clients use mailboxes and folders to store email. For those applications, organization means moving emails from folder to folder, and mailbox to mailbox. Mailpile, however, models their approach after GMail. In this context, search is the driving factor behind e-mail storage.

Mailpile uses "tags" to organize emails, and stores them based on these labels. This explains how Mailpile stores emails, but how does the searching actually work?

Mailpile maintains it's own "search index" on a user's local system. The index is constructed based off of the "tagging system" previously metined. Having a local search index allows for faster searches (as not every email needs to be looked at for each search). Mailpile is normally able to return search results in less than half a second, even on a very modest laptop.

The indexing mechanism inside Mailpile supports a variable number of mailboxes. Mailbox discovery is performed by the "Mailsources" component in the Mailpile architecture. When new email is discovered by this component, it is automatically indexed, and available for search.

Once a piece of email has been both tagged and indexed, it no longer matters which mailbox or folder the email is currently stored in. Users can search, access, and organize their mail, based on various tags and search terms.


While storing search indexes locally does provide the advantage of having faster searches, it is not without issues. Since search indexes are only stored on the local system (and their is no backing up implemented), if something happens to your laptop or PC, the search index will be permanently lost. Their is no way for a user to recover search indexes in this case. The only option is for Mailpile to manually re-scan every mailbox (and email), to rebuild the indexes. This can be a very long process, especially when their is a large number of mailboxes, and emails.

[Search Function Implementation](https://github.com/mailpile/Mailpile/blob/ac03b658c1a50672102dccd205e49739f709177e/mailpile/search.py#L1852)



## 10.0 Code Quality and Technical Debt
### 10.1 CodeScene Analysis 


Codescene Cloud is an online tool that analyzes github repositories and identifies patterns. These patterns relate to the evolutionary timeline of the code, and reports are generated based on several important aspects. These include: size, coupling, code churn, hotspots, and refactoring targets. These reports can be used to help predict future faults and potential technical debt. Here is our [CodeScene analysis of Mailpile](https://codescene.io/projects/4421/jobs/12421/results)


#### 10.1.1 Hotspots

A hotspots map is used to visually show the hierarchy of packages inside a given project. In the image below, the dark red modules are the ones with the most development activity (aka hotspots). Hotspots are calculated using two methods:

1.The lines of code in each file

2.The change frequency of each file

The report shows that both [commands.py ](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py) and [manager.py](https://github.com/mailpile/Mailpile/blob/01b72a43e9f2b4e7bf7dd4fc4cb12780f7139262/mailpile/config/manager.py) have the highest churn percentage. This means that these areas of the project are where most of development activities occur.


![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Hotspots.png "Hotspots")


Hotspots are a preliminary metric to find frequent developmental activity locations. Locations which are changed very often may reflect a greater architectural problem.


#### 10.1.2 Refactoring Targets

In this section, CodeScene tries to create a "priority" of improvements. Codescene gives a rating for each file/folder, with the "seriousness" of their technical debt represented by the color of their bubble.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Refactoring%20Targets.png "Refactoring Targets")

As we can see in below, the files which should most be prioritized are: [commands.py ](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py) ,  [manager.py](https://github.com/mailpile/Mailpile/blob/01b72a43e9f2b4e7bf7dd4fc4cb12780f7139262/mailpile/config/manager.py), [search.py](https://github.com/mailpile/Mailpile/blob/master/mailpile/search.py) and [gpgi.py](https://github.com/mailpile/Mailpile/blob/master/mailpile/crypto/gpgi.py). This is because these are the files Codescene judges as having the highest technical debt interest rate. These files can create large problems in other files/modules if they ever need to be changed. We will investigate how coupled these packages are in the next section.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/List%20of%20RT.png "Refactoring Targets List")


The final task we will do with refactoring, is to investigate the file "command.py". Codescene allows you to "X-Ray" a file. The "X-Ray" shows detailed information about the complexity of various functions/classes which are defined inside. In figure below , we can see that the function ` __ init __`  has the highest complexity/size of 53 followed by  `_choose_messages` and then `run_sync`.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/x-ray.png "x-ray")
<p align="center">Figure 5.1.2.2: File X-Ray Results</p>

#### 10.1.3 Temporal Coupling

Temporal coupling is a metric which measures when two or more modules change **together**. In the image below, we can see the modules with the highest coupling rates. These modules are:
[manager.py](https://github.com/mailpile/Mailpile/blob/01b72a43e9f2b4e7bf7dd4fc4cb12780f7139262/mailpile/config/manager.py) with 803 couplings
[commands.py](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py) with 764 couplings
[search.py](https://github.com/mailpile/Mailpile/blob/master/mailpile/search.py) with 579 couplings

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Coupling%20number.png "List of Coupled Modules")


We can also use Codescene to examine these coupling more closely.[manager.py](https://github.com/mailpile/Mailpile/blob/01b72a43e9f2b4e7bf7dd4fc4cb12780f7139262/mailpile/config/manager.py) and [commands.py](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py) have a 45% degree of coupling, with a total number of 214 revisions. The [manager.py](https://github.com/mailpile/Mailpile/blob/01b72a43e9f2b4e7bf7dd4fc4cb12780f7139262/mailpile/config/manager.py) and [search.py](https://github.com/mailpile/Mailpile/blob/master/mailpile/search.py) files have a 35% degree of coupling and a total of 190 revisions. Finally, [commands.py](https://github.com/mailpile/Mailpile/blob/babc3e5c3e7dfa3326998d1628ffad5b0bbd27f5/mailpile/commands.py) and [search.py](https://github.com/mailpile/Mailpile/blob/master/mailpile/search.py) have a 40% degree of coupling, with a total of 190 revisions also.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Coupling%20map.png "Coupling Map")


Suggested refactoring may involve decoupling larger classes and functions, and creating more specialization of files and packages. This process would lead to better maintainability.



### 10.2 Sonarcloud/ SonarQube Analysis


Sonarcloud is a cloud based service, created by SonarSource. It is based on SonarQube, which is an open source project. It does a code quality review of software projects, and provides a report on various metrics. These metrics relate to reliability, security, maintainability, code coverage, duplication, and complexity. The [Quality Report](https://sonarcloud.io/dashboard?id=deepak21188_Mailpile) we generated for Mailpile shows that it is in and "OK" state. SonarQube judges it's overall quality as "passing", which indicates that the code is production ready. This measurement is based on many boolean conditions. [Code Analysis of Mailpile by SonarQube](https://sonarcloud.io/dashboard?id=deepak21188_Mailpile)


#### 10.2.1 Code Issues

SonarQube reports issues found in the source code in terms of many different metrics (bugs, vulnerabilities, code smells,  debt, coverage and code duplication) (see the image below). The code issues found in a project can effect the overall quality of the project. In this section we will explore many code quality issues in Mailpile.

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/sonar-overview.PNG "Sonar report overview")



##### Bugs

SonarQube can find code which is either "objectively wrong", or not likely to give intended behaviour. These occurences can cause the code to behave in unexpected/unintended ways. Since Mailpile is still in it's early, pre-release days, it is import to eliminate these bugs, as they can hinder the further development of the project. SonarQube has identified 271 total bugs in Mailpile. They can be broken down into different severity levels as follows:

| Severity  |  Number of bugs |
|------|--------|
| Blocker | 3 |
| Critical | 22 |
| Major | 41 |
| Minor | 205 |
| Info | 0 |

Most of the major bugs can be further divided, into two categories:

1. Usage of “return” statement in the middle of code (which makes the code after unreachable). 
2. Usage of keywords that have been deprecated (for example `<tt>` element in HTML). 

Most of the minor bugs suggest to use newer versions of outdated HTML tags, including: `<b>` instead of `<strong>` , and `<i>` instead of `<em>`.
 
##### Vulnerabilities 

SonarQube can also detect security related problems, which are called "Vulnerabilities". These are any implementation details which can expose the project to attackers. SonarQube found eleven such instances inside Mailpile. All of these vulnerabilities fall under the "minor" severity level. Every vulnerability found relates to the use of either the "alter" or “confirm” statements inside javascript code. "Alter" and "confirm" statements may expose the system to the XSS(Cross-Site Scripting) attacks. 

##### Code Smells

Code smells are problems related to the "maintainability" quality attribute. While code smells can be a subjective measure, SonarQube still is able to measure them. Refactoring/removing these smells will directly result in the lowering of techincal debt for this project. SonarQube reports 1404 code smells in total. The breakdown of code smells, based on severity levels, is as follows:

| Severity  |  Number of bugs |
|------|--------|
| Blocker | 60 |
| Critical | 212 |
| Major | 929 |
| Minor | 203 |
| Info | 0 |

Most of the code smells in Mailpile are under the "Major" severity level. Once again, it is mostly the same type of problem, repeated over and over again. In this case, the common issues we see are: function names not following convention, many "FIXME" and related comments, and use of obsolete statements.

There are also 212 critical issues. Critical issues normally indicate that a "high cognitive load" is required to understand/modify the section in question.

The last worrying category under the "Code Smells" is "blockers". Blocker issues can fall into two categories "pitfall" or "confused". Pitfall issues occur when the current implementation works, but a trap has been set for future changes. "Confused" simply means that future maintainers/modifiers may be confused by the current implementation. Most of the blocking issues in Mailpile relate to the implicit nature of defining javascript variables using "let", "const", or "var".

SonarQube reports that Mailpile requires a total of twenty-five days to resolve the technical debt of the current code smells.

#### 10.2.2 Code Quality Metrics

This section analyzes various "code quality" metrics, as reported by SonarQube.

##### Reliability

SonarQube measures "Reliability" based on the total number of bugs in a system, and the remediation efforts required. Mailpile currently has a reliability rating of **E**. This is a low rating, and is given based on the many "blocker" bugs present. SonarQube has detected three blocker bugs in the project. The remediation efforts required to fix them is estimated at two days and six hours.

![alt_text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/reliability.PNG "reliability chart")


  
##### Security Rating

SonarQube measures "Security" of a project based on the number of vulnerabilities present in a system, as well as their severity. Mailpile is given **B** rating, as it has only has minor vulnerabilities present. The remediation effort to remove these vulnerabilities is estimated to be one hour and fifty mins.

![alt_text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/security.PNG "Security chart")
 


##### Maintainability Rating

SonarQube measures "Maintainability" of a project, based on the technical debt ratio. This is calculated as: 

```Technical debt ratio = Remediation cost / Development cost```

The maintainability rating given to Mailpile is an **A**. This is outstanding, and it means that less than five percent of the time put into the project needs to be used to fix current debt.

![alt_text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/maintainability.PNG "maintainabilty chart")


##### Duplication

SonarQube has a duplication metric, which is a measure of the total number of duplicate lines (822), duplicate blocks (35) or duplicate files (20). Duplication can also be measured as duplication density, which is the percentage of duplicate line in the entire code base. Mailpile has a reported duplication density of 0.8%  

##### Complexity

Complexity is a measure of how complex the control flow of a system is. SonarQube uses two complexity metrics:

1. Cyclomatic complexity - a measure of the total number of linear paths through the ocde
2. Cognitive complexity -how difficult a system is to understand for mailpile

The cyclomatic complexity is reported as 12 378, and the cognitive complexity is reported as 13 283.


### 10.3 Technical Debt Analysis

In the final section of this document we will take a deeper dive into some of the issues found inside the Mailpile source code. To find these problems, we searched through the codebase for various key-phrases such as "FIXME", "TODO", and "HACK". These comments represent areas where the development team need to tackle in the future (i.e. technical debt).

We have chosen to investigate the upgrading from Python 2.7 to Python 3.x, and memory usage.

##### 1. Upgrade from Python 2.7 to Python 3.x

This issue is also being tracked inside Mailpile's issue tracker: [issue 160](
https://github.com/mailpile/Mailpile/issues/160).

Mailpile is currently being written using Python 2.7, which is not in active development, and has it's "end of life" planned for the year 2020 (see [official announcement](https://hg.python.org/peps/rev/76d43e52d978)).

In order for Mailpile to work properly in the future, it needs to be upgraded to some version of Python 3. This process may involve a significant amount of work. This is because their are currently many libraries which are used by Mailpile, but do not exist in Python 3. An example of this problem is the SpamBayes library. There are also some obsolete statements currently being used in the code base (as reported by SonarQube). These statements include things such as improper "print" statements, and won't be too difficult to fix.

This issue was first raised in 2013 and according to the lead developer, they are considering this issue in their long term roadmap. The response from the lead developer is as follows:

```> This remains on our long term roadmap, but won't be addressed in the near term because our priority at the moment is to just ship  something that works. :-)```


The issue is still in an "open" state. Technical debt will increase further as long as Mailpile  does not perform the upgrade to Python 3.


##### 2. Memory usage

One of the most important business goals for Mailpile is to have a fast search engine. The implementation of this feature, however, has led to some technical debt. 

In [Issue#1782](https://github.com/mailpile/Mailpile/issues/1782), a user complains about the large amount of memory/CPU used by Mailpile. The lead developer, Bjarni Einarsson, has explained that this is the result of an intentional trade-off, and is the only way they can offer certain features (such as the fast serarching).

Once cause of this problem is that mail indexing (which is one thing that enables the fast searching), requires mail indexes to be stored in memory. An explanation of this process can be found [here](https://www.mailpile.is/blog/2013-08-15_Digging_Through_the_Details.html). [The amount of RAM used by Mailpile will increase linearly with the size of the indexes present.](https://github.com/mailpile/Mailpile/issues/1782#issuecomment-279882693)

This may become problematic, especially for users with a large volume of emails (think enterprise/business users).






## 11.0 Conclusion


