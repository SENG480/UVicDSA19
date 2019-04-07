# Mailpile

## Table Of Contents

 1.0 Purpose
 2.0 About Mailpile System
 3.0 Stakeholders
 4.0 Business Goals
 5.0 Architecturally Significant Requirements (ASR)
 6.0 Utility Tree
 7.0 Quality Attribute Scenarios (QAS)
 8.0 Module View
    * Primary Presentation
    * Element Catalog
      + Elements and Properties
      + Relations and Properties
      + Element Behaviour
    * Context Diagram
    * Rationale
 9.0 Component and Connector View
    * Primary Presentation
    * Element Catalog
      + Elements and Properties
      + Relations and Properties
      + Element Behaviour
    * Context Diagram
    * Variability Guide
    * Rationale
 10.0 Code Quality and Technical Debt
 11.0 Conclusion
 
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


### 5.3 Utility Tree

![alt text](https://github.com/AhmadAlsaif/UVicDSA19/blob/patch-1/images/Mailpile/Utility%20Tree.png "Logo Title Text 1")

### 5.4 Scenario Tables

#### Foreign Access Scenario

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Foreign Access Scenario |
| Business Goal | The content of the email is encrypted and only visible to the sender and receiver |
| Quality Attribute | Privacy |
| Stimulus | Interception of email (man in the middle, or related) |
| Stimulus Source | Malicious Third Party |
| Response | Entire email message is encrypted, and unviewable |
| Response measure | No part of the message can be viewed (subject, from, to, body, etc.) |


#### Foreign Access Scenario

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Mailbox Search Scenario |
| Business Goal | Users should be able to quickly search a large volume of emails |
| Quality Attribute | Performance |
| Stimulus | A search query is submitted by a Mailpile user |
| Stimulus Source | User |
| Response | Mailpile searches mailboxes for matching objects and provides the result to the user |
| Response measure | Matching objects are shown to the user in less than 1 second  |


#### Data Availability Scenario

| Aspect | Details |
| ------------- |-------------|
| Scenario Name | Data Availability Scenario |
| Business Goal | Users should be able to easily access the content of their email |
| Quality Attribute | Availability |
| Stimulus | The authorized user clicks on the desired email  |
| Stimulus Source | User |
| Response | Feedback that their email is being downloaded |
| Response measure | A new interface open and shows the contents of the email |












