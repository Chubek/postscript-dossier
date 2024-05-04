This document gives an overview of the PostScript PDL --- the first 'truly' device-independent Page Description Language, dating back to Adobe in the early 80s. 

PS changed the way we thought about 'graphics'. Prior to Adobe's PS, we had people in big suits at Madison Avenue slapping their secretaries on the buttocksk, drinking scotch whiskey during the day, and occasionally used large, expensive machines to create graphics for advertisement, TV, magazines and so on. 

After PS, flashforward 30 years and you have Sanjeet working part-time at his mom's basement creating graphics -- what changed?

Simply put, Adobe created an 'standard' for printers, and/or digital display devices, to 'display' graphics. By 'display' here I mean either dump ink on paper or light up pixels. 

It's just like how Intel created a pseudo-standard for the instruction set of what was back then called 'micro computers' and now they are just called 'computers'. PS is just like the x86 (and later amd64/x86-64) Assembly, but instead of a microprocessor fetching, decoding and executing it, it is a printer. In a way, an application like Zathura can be viewed as the VirtualBox of PostScript! Things are more muddled, but in my mind, it makes sense. Sue me. And when you do sue me, the legal clerk will be using a package like LaTeX to write your 'soopeena' (sorry, I don't know how to spell this word!) --- and LaTeX can be translated to PS.

Grantd, these days another PDL has taken PS' place: The Jeff- Sorry, Portable Document Formant, or PDF. Ironically, it was Adobe that created PDF  as well. Regardless, it's pretty straightforward and trivial to translate PS to PDF and vice versa. GNU GhostScript can interpret both. Most PS-related utilities in the modern day use GhostScript. There exists a lot of PostScript interpreters. The reason is that PS is simple to parse, and simple to understand.

One reason PS is like Assembly of graphics is that it's got a very simple and 'coarse' syntax. You will be highligy unlikely to find someone write PostScript code 'directly'. People usually use languages like Asymptote, or markup languages like LaTeX.

This document is written in Markdown, in several sections, with some help from ChatGPT. I am personally not 'very good' at PS. But I am trying to learn it to write a PS interpreter called 'Nock' in Rust --- also, several 'x2ps' utilities.

If you find any errors in this document, report them to me at `chubakbidpaa [at] riseup [dot] net`. You may also find meon Discord at `.chubak`. 


