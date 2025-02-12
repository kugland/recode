/* Conversion of files between different charsets and surfaces.
   Copyright © 1990-2018 Free Software Foundation, Inc.
   Contributed by François Pinard <pinard@iro.umontreal.ca>, 1988.

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public License
   as published by the Free Software Foundation; either version 3 of the
   License, or (at your option) any later version.

   This library is distributed in the hope that it will be
   useful, but WITHOUT ANY WARRANTY; without even the implied warranty
   of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public
   License along with the Recode Library; see the file `COPYING.LIB'.
   If not, see <https://www.gnu.org/licenses/>.
*/

/* Step name: latex_latin1.  */

Letter			[a-zA-Z]
Braces			[ \t]*(\{\})?

%%

\\"#"				{ PUT_NON_DIACRITIC_BYTE ('#', subtask); }
\\"$"				{ PUT_NON_DIACRITIC_BYTE ('$', subtask); }
\\"%"				{ PUT_NON_DIACRITIC_BYTE ('%', subtask); }
\\"&"				{ PUT_NON_DIACRITIC_BYTE ('&', subtask); }
\\mbox"{$<$}"			{ PUT_NON_DIACRITIC_BYTE ('<', subtask); }
\\mbox"{$>$}"			{ PUT_NON_DIACRITIC_BYTE ('>', subtask); }
\\"_"				{ PUT_NON_DIACRITIC_BYTE ('_', subtask); }
\\"{"				{ PUT_NON_DIACRITIC_BYTE ('{', subtask); }
\\"}"				{ PUT_NON_DIACRITIC_BYTE ('}', subtask); }

\\textasciicircum{Braces}	{ PUT_NON_DIACRITIC_BYTE ('^', subtask); }
\\backslash{Braces}		{ PUT_NON_DIACRITIC_BYTE ('\\', subtask); }

"~"				{ PUT_NON_DIACRITIC_BYTE (160, subtask); }
"!`"				{ PUT_NON_DIACRITIC_BYTE (161, subtask); }
\\pound{Braces}			{ PUT_NON_DIACRITIC_BYTE (163, subtask); }
\\S{Braces}			{ PUT_NON_DIACRITIC_BYTE (167, subtask); }
\\\"				{ PUT_NON_DIACRITIC_BYTE (168, subtask); }
\\copyright{Braces}		{ PUT_NON_DIACRITIC_BYTE (169, subtask); }
"``"				{ PUT_NON_DIACRITIC_BYTE (171, subtask); }
\\neg{Braces}			{ PUT_NON_DIACRITIC_BYTE (172, subtask); }
\\"-"				{ PUT_NON_DIACRITIC_BYTE (173, subtask); }
\\mbox"{$^\\circ$}"		{ PUT_NON_DIACRITIC_BYTE (176, subtask); }
\\mbox"{$\\pm$}"		{ PUT_NON_DIACRITIC_BYTE (177, subtask); }
\\mbox"{$^2$}"			{ PUT_NON_DIACRITIC_BYTE (178, subtask); }
\\mbox"{$^3$}"			{ PUT_NON_DIACRITIC_BYTE (179, subtask); }
\\"'"				{ PUT_NON_DIACRITIC_BYTE (180, subtask); }
\\mbox"{$\\mu$}"		{ PUT_NON_DIACRITIC_BYTE (181, subtask); }
\\cdotp				{ PUT_NON_DIACRITIC_BYTE (183, subtask); }
\\","				{ PUT_NON_DIACRITIC_BYTE (184, subtask); }
\\mbox"{$^1$}"			{ PUT_NON_DIACRITIC_BYTE (185, subtask); }
"''"				{ PUT_NON_DIACRITIC_BYTE (187, subtask); }
\\frac"1/4"{Braces}		{ PUT_NON_DIACRITIC_BYTE (188, subtask); }
\\frac"1/2"{Braces}		{ PUT_NON_DIACRITIC_BYTE (189, subtask); }
\\frac"3/4"{Braces}		{ PUT_NON_DIACRITIC_BYTE (190, subtask); }
"?`"				{ PUT_NON_DIACRITIC_BYTE (191, subtask); }

\\"`"A|\\"`{A}"			{ put_byte (192, subtask); }
\\"'"A|\\"'{A}"			{ put_byte (193, subtask); }
\\"^"A|\\"^{A}"			{ put_byte (194, subtask); }
\\"~"A|\\"~{A}"			{ put_byte (195, subtask); }
\\\"A|\\\""{A}"			{ put_byte (196, subtask); }
\\AA{Braces}			{ put_byte (197, subtask); }
\\AE{Braces}			{ put_byte (198, subtask); }
\\c[ \t]+C|\\c"{C}"		{ put_byte (199, subtask); }
\\"`"E|\\"`{E}"			{ put_byte (200, subtask); }
\\"'"E|\\"'{E}"			{ put_byte (201, subtask); }
\\"^"E|\\"^{E}"			{ put_byte (202, subtask); }
\\\"E|\\\""{E}"			{ put_byte (203, subtask); }
\\"`"I|\\"`{I}"			{ put_byte (204, subtask); }
\\"'"I|\\"'{I}"			{ put_byte (205, subtask); }
\\"^"I|\\"^{I}"			{ put_byte (206, subtask); }
\\\"I|\\\""{I}"			{ put_byte (207, subtask); }
\\"~"N|\\"~{N}"			{ put_byte (209, subtask); }
\\"`"O|\\"`{O}"			{ put_byte (210, subtask); }
\\"'"O|\\"'{O}"			{ put_byte (211, subtask); }
\\"^"O|\\"^{O}"			{ put_byte (212, subtask); }
\\"~"O|\\"~{O}"			{ put_byte (213, subtask); }
\\\"O|\\\""{O}"			{ put_byte (214, subtask); }
\\O{Braces}			{ put_byte (216, subtask); }
\\"`"U|\\"`{U}"			{ put_byte (217, subtask); }
\\"'"U|\\"'{U}"			{ put_byte (218, subtask); }
\\"^"U|\\"^{U}"			{ put_byte (219, subtask); }
\\\"U|\\\""{U}"			{ put_byte (220, subtask); }
\\"'"Y|\\"'{Y}"			{ put_byte (221, subtask); }
\\ss{Braces}			{ put_byte (223, subtask); }
\\"`"a|\\"`{a}"			{ put_byte (224, subtask); }
\\"'"a|\\"'{a}"			{ put_byte (225, subtask); }
\\"^"a|\\"^{a}"			{ put_byte (226, subtask); }
\\"~"a|\\"~{a}"			{ put_byte (227, subtask); }
\\\"a|\\\""{a}"			{ put_byte (228, subtask); }
\\aa{Braces}			{ put_byte (229, subtask); }
\\ae{Braces}			{ put_byte (230, subtask); }
\\c[ \t]+c|\\c"{c}"		{ put_byte (231, subtask); }
\\"`"e|\\"`{e}"			{ put_byte (232, subtask); }
\\"'"e|\\"'{e}"			{ put_byte (233, subtask); }
\\"^"e|\\"^{e}"			{ put_byte (234, subtask); }
\\\"e|\\\""{e}"			{ put_byte (235, subtask); }
\\"`"\\i{Braces}|\\"`{\\i}"	{ put_byte (236, subtask); }
\\"'"\\i{Braces}|\\"'{\\i}"	{ put_byte (237, subtask); }
\\"^"\\i{Braces}|\\"^{\\i}"	{ put_byte (238, subtask); }
\\\"\\i{Braces}|\\\""{\\i}"	{ put_byte (239, subtask); }
\\"~"n|\\"~{n}"			{ put_byte (241, subtask); }
\\"`"o|\\"`{o}"			{ put_byte (242, subtask); }
\\"'"o|\\"'{o}"			{ put_byte (243, subtask); }
\\"^"o|\\"^{o}"			{ put_byte (244, subtask); }
\\"~"o|\\"~{o}"			{ put_byte (245, subtask); }
\\\"o|\\\""{o}"			{ put_byte (246, subtask); }
\\o{Braces}			{ put_byte (248, subtask); }
\\"`"u|\\"`{u}"			{ put_byte (249, subtask); }
\\"'"u|\\"'{u}"			{ put_byte (250, subtask); }
\\"^"u|\\"^{u}"			{ put_byte (251, subtask); }
\\\"u|\\\""{u}"			{ put_byte (252, subtask); }
\\"'"y|\\"'{y}"			{ put_byte (253, subtask); }
\\\"y|\\\""{y}"			{ put_byte (255, subtask); }

\\[`'^"]\\i{Letter}*{Braces}	{ ECHO; }
\\{Letter}+{Braces}		{ ECHO; }

%%

bool
module_latex_latin1 (RECODE_OUTER outer)
{
  return
    declare_single (outer, "LaTeX", "Latin-1",
                    outer->quality_variable_to_byte,
                    NULL, transform_latex_latin1)
    && declare_alias (outer, "TeX", "LaTeX")
    && declare_alias (outer, "ltex", "LaTeX");
}

void
delmodule_latex_latin1 (RECODE_OUTER outer)
{
}
