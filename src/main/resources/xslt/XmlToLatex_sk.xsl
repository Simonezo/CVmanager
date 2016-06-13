<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" omit-xml-declaration="yes" encoding="UTF-8"/>

<xsl:template match="/cv">

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\documentclass[a4paper,12pt]{memoir} % Font and paper size
\newcommand{\folder}{../src/main/resources/xslt}
\input{\folder/structure.tex} % Include the file specifying document layout and packages

%----------------------------------------------------------------------------------------
%	NAME AND CONTACT INFORMATION 
%----------------------------------------------------------------------------------------

\userinformation{

\begin{flushright}
\small % Smaller font size

\textbf{datum narodenia:}
\\
<xsl:value-of select="*/birthday"/>
\\
<xsl:for-each select="*/contacts/contact">
	<xsl:value-of select="@id"/>: <xsl:value-of select="."/>
	\\
</xsl:for-each>

\Sep % Some whitespace

\textbf{Adresa} \\
<xsl:value-of select="*/address"/>
\vfill % Whitespace under this block to push it up under the photo
\end{flushright}
}

%----------------------------------------------------------------------------------------

\begin{document}

\userinformation % Print your information in the left column

\framebreak % End of the first column

%----------------------------------------------------------------------------------------
%	HEADING
%----------------------------------------------------------------------------------------

\cvheading{<xsl:value-of select="*/	fullName"/>} % Large heading - your name

%----------------------------------------------------------------------------------------
%	ABOUT ME
%----------------------------------------------------------------------------------------

\aboutme{O mňa}{<xsl:value-of select="personalProfile"/>}

%----------------------------------------------------------------------------------------
%	EXPERIENCE
%----------------------------------------------------------------------------------------

\CVSection{Skúsenosti}

<xsl:for-each select="workExperience/workItem">
\CVItem{<xsl:value-of select="@from"/> - <xsl:value-of select="@to"/>, <xsl:value-of select="@company"/>, <xsl:value-of select="@position"/>}{<xsl:value-of select="."/>}
</xsl:for-each>

\Sep % Extra whitespace after the end of a major section

%----------------------------------------------------------------------------------------
%	EDUCATION
%----------------------------------------------------------------------------------------

\CVSection{Vzdelanie}

<xsl:for-each select="educations/educationItem">
\CVItem{<xsl:value-of select="@from"/> - <xsl:value-of select="@to"/>, <xsl:value-of select="@school"/>}{<xsl:value-of select="."/>}
</xsl:for-each>

\Sep % Extra whitespace after the end of a major section

%----------------------------------------------------------------------------------------
%	ACHIEVEMENT
%----------------------------------------------------------------------------------------

\CVSection{Úspechy}

<xsl:for-each select="achievements/achievementItem">
\CVItem{<xsl:value-of select="@year"/>, <xsl:value-of select="@title"/>}{<xsl:value-of select="."/>}
</xsl:for-each>

\Sep % Extra whitespace after the end of a major section


%----------------------------------------------------------------------------------------
%	COMMUNICATION SKILLS
%----------------------------------------------------------------------------------------

\CVSection{Komunikačné schopnosti}

<xsl:for-each select="languages/languageItem">
\CVItem{<xsl:value-of select="@lang"/> - \small <xsl:value-of select="@level"/>}
</xsl:for-each>

\Sep % Extra whitespace after the end of a major section

%----------------------------------------------------------------------------------------
%	SKILLS
%----------------------------------------------------------------------------------------

\CVSection{Osobné a profesijné schopnosti}

<xsl:for-each select="skills/skillItem">
\CVItem{<xsl:value-of select="@title"/>}{<xsl:value-of select="."/>}
</xsl:for-each>

\Sep % Extra whitespace after the end of a major section

%----------------------------------------------------------------------------------------
%	NEW PAGE DELIMITER
%	Place this block wherever you would like the content of your CV to go onto the next page
%----------------------------------------------------------------------------------------
%\clearpage % Start a new page
%\userinformation % Print your information in the left column
%\framebreak % End of the first column


%----------------------------------------------------------------------------------------
%	HOBBIES
%----------------------------------------------------------------------------------------

\CVSection{Záľuby}

<xsl:for-each select="hobbies/hobbyItem">
\CVItem{<xsl:value-of select="@title"/>}{<xsl:value-of select="."/>}
</xsl:for-each>

\Sep % Extra whitespace after the end of a major section

%-------------------------------------------------------

\end{document}
</xsl:template>

</xsl:stylesheet> 

