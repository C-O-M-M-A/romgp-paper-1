%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% IDENTIFICATION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RAMArticle}[2015/11/11]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INITIAL CODE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DECLARATION OF OPTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*          {\PassOptionsToClass{\CurrentOption}{amsart}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% EXECUTION OF OPTIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ProcessOptions \relax		% cf. hint on p. 882!

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PACKAGE LOADING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{amsart}
\RequirePackage[utf8]{inputenc} 
\RequirePackage{calc}
\RequirePackage{ifthen}
\RequirePackage{xspace} 
\RequirePackage{amssymb} 
\RequirePackage{stmaryrd} 
\RequirePackage{caption}
\RequirePackage[rightcaption]{sidecap}
\RequirePackage{graphicx}
\RequirePackage{natbib}
\RequirePackage{hyperref}
\RequirePackage[capitalize,noabbrev]{cleveref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% MAIN CODE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\RAMHome}{89 Sackville Road\\Sheffield\\S101GU\\United Kingdom} 
%
% SETTINGS
\numberwithin{equation}{section}
\renewcommand\sidecaptionsep{-10pt}		% For sidecap package
\sidecaptionvpos{figure}{c}		% For sidecap package
%
% STATEMENT
\newlength{\axiomhskip} 
\newlength{\proofvskip} 
\setlength{\parskip}{2.5pt} 
\setlength{\parindent}{10pt}
\setlength{\axiomhskip}{\parindent}
\setlength{\proofvskip}{-\baselineskip/2}
\theoremstyle{definition} 
\newtheorem{definition}{Definition}[section] 
\newtheorem{remark}[definition]{Remark} 
\newtheorem{Xaxiom}{Axiom}[definition]
\newtheorem{Xroi}{Rule of Inference}[definition]
\theoremstyle{plain} 
\newtheorem{proposition}[definition]{Proposition} 
\newtheorem{lemma}[definition]{Lemma} 
\newtheorem{corollary}[definition]{Corollary} 
\newtheorem{theorem}[definition]{Theorem} 
\newtheorem{result}{Theorem} 
\newenvironment{axiom}{\vspace{-5pt}\par \hspace*{\axiomhskip} 
\begin{minipage}[t]
	 {\linewidth-(\axiomhskip+\parindent)*2} 
	\begin{Xaxiom}
		} { 
	\end{Xaxiom}
\end{minipage}
\hspace*{\axiomhskip}\vspace{3pt}\par\smallskip} 
\newenvironment{roi}{\vspace{-5pt}\par \hspace*{\axiomhskip} 
\begin{minipage}[t]
	 {\linewidth-(\axiomhskip+\parindent)*2} 
	\begin{Xroi}
		} { 
	\end{Xroi}
\end{minipage}
\hspace*{\axiomhskip}\vspace{3pt}\par\smallskip} 
\renewcommand\theXaxiom{\thedefinition\alph{Xaxiom}} 
\renewcommand\theXroi{\thedefinition\alph{Xroi}} 
\newenvironment{Pooof}[1][\proofname]{\vspace{\pooofvskip}\proof[#1]}{ 
\endproof} 
%
% CROSS REFERENCING
\newcommand{\crefrangeconjunction}{--}
\newcommand{\crefpairconjunction}{,}
\newcommand{\crefmiddleconjunction}{,}
\newcommand{\creflastconjunction}{,}
%
% SPACE
\newcommand*{\M}[1]{\ensuremath{#1}\xspace} 
\newcommand*{\XM}[1]{\xspace\M{#1}}
\newcommand{\T}[1]{\text{#1}} 
\newcommand*{\QT}[2][]{\M{\quad\T{#2}\ifthenelse{\equal{#1}{}}{\quad}{#1}}} 
\newcommand*{\QM}[2][]{\M{\quad#2\ifthenelse{\equal{#1}{}}{\quad}{#1}}} 
\newcommand*{\QIFF}{\QM{\Longleftrightarrow}} 
%
% SYMBOL CLASSES
\newcommand*{\Mathbin}[3]{\M{#1 \mathbin{#2} #3}} 
\newcommand*{\Mathinner}[1]{\M{\mathinner{#1}}} 
\newcommand*{\Mathrel}[3]{\M{#1 \mathrel{#2} #3}}
%
% OPERATOR
\DeclareMathOperator{\cod}{cod} \DeclareMathOperator{\dom}{dom} \DeclareMathOperator{\sgn}{sgn}
\newcommand*{\lrp}[1]{\M{\mathord{\left(#1\right)}}}
\newcommand*{\lrprm}[1]{\M{\!\mathord{\left(#1\right)}}}
\newcommand*{\dd}[1]{\M{\mathop{\mathrm{d}{#1}}}} 
\newcommand*{\pd}[2][]{\M{\mathop{\partial_{#2}^{\,#1}}}}
\newcommand*{\deriv}[3][]{\M{\frac{\dd^{#1}#2}{\dd#3^{#1}}}}
\newcommand*{\image}[2]{\M{#1\mathord{\bigl(\mathord{#2}\bigr)}}} 
\newcommand*{\cont}[3][]{\M{\ifthenelse{\equal{#1}{}}{\st{F}^{(#2)}\mathord{\bigl(\mathord{#3}\bigr)}}{\st{F}^{(#2,#1)}\mathord{\bigl(\mathord{#3}\bigr)}}}}
%
% DEFINITION
\newcommand*{\dfn}[1]{\textbf{\textup{#1}}}
\newcommand*{\deq}{\M{\mathrel{\mathop:}=}} 
\newcommand*{\deqr}{\M{=\mathrel{\mathop:}}} 
\newcommand*{\mapdef}[3]{\M{#1\colon #2 \to #3}} 
\newcommand*{\mapstodef}[3]{\M{#1\colon #2 \mapsto #3}}
%
% INTERVAL
\newcommand*{\open}[2]{\M{{\left\rbrack#1,#2\right\lbrack}}} 
\newcommand*{\closed}[2]{\M{{\left\lbrack#1,#2\right\rbrack}}} 
\newcommand*{\clopen}[2]{\M{{\left\lbrack#1,#2\right\lbrack}}} 
\newcommand*{\opclo}[2]{\M{{\left\rbrack#1,#2\right\rbrack}}} 
%
% MISCELLANEOUS MATH
\newcommand*{\modulus}[1]{\M{\left\lvert#1\right\rvert}} 
\newcommand*{\bmodulus}[1]{\M{\bigl\lvert#1\bigr\rvert}} 
\newcommand*{\norm}[2]{\M{\left\lVert#1\right\rVert_{#2}}} 
\newcommand*{\bnorm}[2]{\M{\bigl\lVert#1\bigr\rVert_{#2}}} 
\newcommand*{\set}[1]{\M{\left\lbrace#1\right\rbrace}} 
\newcommand*{\setbuilder}[2]{\M{\left\lbrace#1 \: \big\vert \: #2\right\rbrace}}
%
% SET VECTOR FUNCTION
\newcommand*{\vr}[1]{\M{\mathbf{#1}}} 
\newcommand*{\st}[1]{\M{\mathbb{#1}}} 
\newcommand*{\ol}[2][suppress]{\M{\overline{\ifthenelse{\equal{#1}{suppress}}{#2}{#2(#1)}}}}
\newcommand*{\ul}[2][suppress]{\M{\underline{\ifthenelse{\equal{#1}{suppress}}{#2}{#2(#1)}}}}
\newcommand*{\olvr}[2][suppress]{\M{\overline{\ifthenelse{\equal{#1}{suppress}}{\vr{#2}}{\vr{#2}(#1)}}}} 
\newcommand*{\olst}[2][suppress]{\M{\overline{\ifthenelse{\equal{#1}{suppress}}{\st{#2}}{\st{#2}(#1)}}}}
