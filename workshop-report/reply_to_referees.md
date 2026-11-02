# Reply to the referees
We thank all our referees for their constructive feedbackand the raised points,
and hope that our comments below, and the changes we did to the manuscript answer their criticism.

## Reviewer M:

### M1.
** Original Manuscript **
> Digital tools have become so useful in academic research that more and more processes in the research cycle require their use.

** Reviewer Comment **
> I would argue that phrasing which maintains a separation between research and digital tools may itself be part of the problem.

** Our Response **
Thank you for this observation. Our intention was to emphasize the growing dependence of research activities on digital technologies, rather than to suggest a conceptual separation between research and the tools involved in conducting it. We agree that the original formulation could be interpreted in this way and have revised the sentence accordingly.

** changed in the manuscript **
Digital tools have become integral to academic research, shaping an increasing number of activities throughout the research cycle.

### M2
** Original Manuscript **
> These units provide research data management (RDM) and research software engineering (RSE) services to all projects within a CRC.

** Reviewer Comment **
> Are these really services to be provided, or should they instead be understood as project outputs? I think this distinction is worth addressing.

** Our Response **
Thank you for this observation. We decided against clarifying this in the - on purpose - short introduction of the paper, but have instead opted to add that point(some are heavily service, others have CRC-related project output) to the Lessons learnt section, after the overview of the CRCs.


** changed in the manuscript **
Added
> We observe, that some INF projects lean towards a service-providing idea, where the services can even be bundled across SFBs such as in \autoref{subsec:vdr} while others lean towards a project based output.

to "Lessons learnt"

### M3 
** Original Manuscript **
> …their structures, practical approaches, and accumulated experience tend to remain within individual CRCs. This report attempts to change that.

** Reviewer Comment **
> This points to a broader issue with such schemes. When work is scoped within a finite project, its outputs do not necessarily have a lasting impact. Why should a research software output not be regarded as a long-lasting contribution in the same way as, for example, a useful equation? I would have liked the authors to address this point more directly and express a concrete position on it. In any case, the statement that this report “attempts to change that” feels somewhat too ambitious and could be made more specific.

** Our Response **
THank You for this comment we rephrased the introduction better to showcase what the contributions of this report are. We also state the introduction of the inf-projects-in-crcs network already at the beginning.

** changed in the manuscript **
removed "This report attempts to change that."
Added/reworded for context:
In order to counteract this, we first start with a historic overview of the development of the INF projects to provide an introduction into the existing literature and experiences.
Then we  catalogue current and past INF projects across Germany's research landscape, before drawing on a workshop held at deRSE26 to collect the lessons learnt and distil them into practical guidance for INF projects and comparable structures.
We also like to highlight that this overview forms the foundational project of
a network of INF projects \footnote{
\url{https://www.listserv.dfn.de/sympa/info/inf-projects-in-crcs}
} that wants to provide a platform for exchange of experiences.

### M4
** Original Manuscript **
>  Line 72: “the focus then shifts to Cologne.”
** Reviewer Comment **
> This sentence comes somewhat out of the blue, and it is unclear what exactly is meant by the focus shifting.


** Our Response **
You are right. It's just bad.

** changed in the manuscript **
removed: the focus then shifts to Cologne.
modified: In 2009 TRR~32 and CRC~806 organised a workshop of nearly 80 participants of diverse disciplines in Cologne, ...

### M5
** Original Manuscript **
> And, again, acceptance of the INF projects was brought up.

** Reviewer Comment **
>  This sentence does not serve the logical flow of the section particularly well. The use of “again” is also unexpected here.

** Our Response **
We integrated the sentence better into the text

** changed in the manuscript **
Modified to "Both workshops noted, that acceptance of the INF projects is a major issue."

### M6
** Original Manuscript **
> This project spans the breadth of digital tools in science from a single machine up to HPC clusters, from data generation, over data analysis up to data storage, collaborating with single scientists as well as larger research groups.
> This required a flexibility in the tooling, which obviously used git, but led to the use of C++, Python, Mathematica, Fortran, and Julia for programming.


** Reviewer Comment **
>  This passage could be toned down somewhat. It makes a rather broad statement and conveys a “we did it all” impression that stands in contrast to the rest of the paper. It is also unclear what should be attributed directly to the INF and what is due to a more indirect association.

** Our Response **
Thank you for this suggestion. We have revised the paragraph to describe the scope of the project's activities more precisely and in a more neutral tone, while retaining the accumulated range of computing environments, research workflows, and technologies involved after the timespan of 11 years
continuously staffed by the same person...

** changed in the manuscript **
Modified to
> Over the long lifespan of the project, its activities covered a broad range of scientific computing needs, from individual workstations to HPC clusters, and included data generation, analysis, and storage. The project collaborated with both individual researchers and larger research groups, adapting its tools and approaches to their respective requirements. Software development relied on Git for version control and employed languages including C++, Python, Mathematica, Fortran, and Julia.

### M7
** Original Manuscript **
> Lines 192–193: “usefulness was reflected in the successful evaluation of the CRC for a third funding period.”

** Reviewer Comment **
>  While I do not doubt the usefulness of the INF, the implied direction of causality seems questionable.

** Our Response **
Thank you we changed the causal order.

** changed in the manuscript **
changed to
> The continued relevance of the INF project's activities was reflected in the decision to incorporate parts of them into a new subproject during the CRC's third funding period.


### M8
** Original Manuscript **
Title of section 3.5

** Reviewer Comment **
> • The title of Section 3.5 seems inconsistent with those of the other project sections.


** Our Response **
FIXME:

** changed in the manuscript **
FIXME: 

### M9
** Original Manuscript **
including the central service projects Z02 and Z03.

** Reviewer Comment **
> What are these?

** Our Response **
We added the titles of the subprojects. As every CRC can freely decide how to name their
central projects and define their tasks, this is a highly specific CRC thing.
But you can observe here, that there were multiple "central" projects Z02, Z03, and INF.
and the task of INF was to provide data management related tasks.

** changed in the manuscript **
modified to: 
> including the central service projects Z02(Animal Motor Circuits Core Facility) and Z03(Humanes Motor-Assesment Center).

### M10
** Original Manuscript **
N/A

** Reviewer Comment **
> Line 252: – RDMS is not defined.


** Our Response **
we fixed this by removing the abbreviation altogether.

** changed in the manuscript **
> As its RDM platform

### M11
** Original Manuscript **
> Our project fulfils a central mission by providing RDM, consulting, and teaching, as well as software development.

** Reviewer Comment **
> Consider using a less ambitious formulation.

** Our Response **
Thank you for the suggestion. We have revised the sentence to describe the project's responsibilities more neutrally, without making an evaluative claim about its importance.

** changed in the manuscript **
> As a central infrastructure project, it provides research data management, consulting, teaching, and software development support to the CRC's research groups. 

### M12
** Original Manuscript **
> While the publication of scientific articles is well established, the publication of accompanying datasets remains difficult, primarily due to limited time resources of researchers. 

** Reviewer Comment **
> I am not sure this statement can be substantiated as written. Uploading data itself can sometimes take only a matter of minutes. The more substantial issue is often the additional effort required to organise data into a form that is useful after the fact. The challenge is therefore to establish good practices before the data are generated, so that sharing is effectively “built in” to the research process.


** Our Response **
Thank you for this opportunity to extend the argument. We incorporated your ideas

** changed in the manuscript **
> While the publication of scientific articles is well established, making accompanying research datasets available in a reusable form remains challenging. Without appropriate data management practices established early in the research process, preparing datasets for publication can require substantial additional effort, placing further demands on researchers' often limited time resources.

### M10
** Original Manuscript **
> breadth of the INF projects across the scientific domains is very diverse.

** Reviewer Comment **
> I assume the breadth lies primarily in the CRCs themselves; the INFs appear to be conceptually rather similar and to overlap considerably in their tasks.


** Our Response **
Thank you for this clarification. We start the paragraph now with your idea, and this leads then naturally to finding the commonalities.

** changed in the manuscript **
> As we have seen, INF projects have become established across most domains of research.

### M11
** Original Manuscript **
>  “…not only helpful, but often inevitable.”

** Reviewer Comment **
> “Inevitable” is probably not the most appropriate word here.

** Our Response **
Thank you for the suggestion, we have reworded this.

** changed in the manuscript **
> A key lesson learned is that PI buy-in is not merely beneficial, but a key ingredient for the successful implementation of RDM and RSE practices.
