# UVic Students Documenting Software Architectures: UVicDSA 2018


**[Neil Ernst]**, **[Omar Elazhary]**<br/>
*University of Victoria, April, 2019*

[Neil Ernst]: http://neilernst.net
[Omar Elazhary]: https://omazhary.github.io

This is the second in a series of edited books of contributions from students in an upper-level software engineering course at the University of Victoria. Modeled heavily on the pioneering [DelftSWA][delftswa] course from van Deursen et al. (1), the course goal was to introduce students to "documenting and understanding software". We did this by picking a large, open-source software system on Github and documenting its architecture in several phases. The result is a comprehensive, if partial, description of the system from the point of view of relative newcomers. 

## Views and Beyond Approach
In contrast to the Delft approach, we used the [Software Engineering Institute views and beyond approach][dsa] for documenting software. The main focus is to trace technical decisions back to business/project goals using the lens of quality attributes. We focus on identifying the *architecturally significant* drivers that impact the software design. The views and beyond model suggests there are three main types of architectural structures to reason about: *modules* at implementation time, *components and connectors* at runtime, and *allocation* structures connecting the code to non-code artifacts.

## Acknowledgements
This course would not be possible without the help of Arie, Andy and Maurício at Delft, who pioneered this approach in 2015. 

## Further Reading

1. Arie van Deursen, Maurício Aniche, Joop Aué, Rogier Slag, Michael de Jong, Alex Nederlof, Eric Bouwers. [A Collaborative Approach to Teach Software Architecture][sigcse]. 48th ACM Technical Symposium on Computer Science Education (SIGCSE), 2017.
1. Arie van Deursen, Alex Nederlof, and Eric Bouwers. Teaching Software Architecture: with GitHub! [avandeursen.com][teaching-swa], December 2013.
1. Amy Brown and Greg Wilson (editors). [The Architecture of Open Source Applications][aosa]. Volumes 1-2, 2012.
1. Paul Clements et al. [Documenting Software Architectures][dsa]. Addison Wesley, 2011, ISBN-13: 978-0321552686.

[sigcse]: https://pure.tudelft.nl/portal/en/publications/a-collaborative-approach-to-teaching-software-architecture(0c7f2aeb-f2d6-4c56-9ab7-5f47f73d133f).html
[teaching-swa]: http://avandeursen.com/2013/12/30/teaching-software-architecture-with-github/
[rw]: http://www.viewpoints-and-perspectives.info/
[aosa]: http://aosabook.org/
[dsa]: https://www.amazon.com/Documenting-Software-Architectures-Views-Beyond/dp/0321552687
[delftswa]: https://legacy.gitbook.com/book/delftswa/desosa-2017/details

## Copyright and License

The copyright of the chapters is with the authors of the chapters. All chapters are licensed under the [Creative Commons Attribution 4.0 International License][cc-by].
Reuse of the material is permitted, provided adequate attribution (such as a link to the corresponding chapter on the [UVicDSA book site][uvicdsa]) is included.

<!-- Cover image credits:
 -->
[![Creative Commons](images/cc-by.png)][cc-by]

[cc-by]: http://creativecommons.org/licenses/by/4.0/
[uvicdsa]: https://uvicdsa.gitbook.io/uvicdsa18/
