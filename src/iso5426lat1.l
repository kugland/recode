/*
 * Copyright (c) 1998, Wolfram Schneider <wosch@freebsd.org>
 *                     Konrad Zuse Zentrum für Informationstechnik Berlin.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *
 * iso5426 to iso8859-1 conversion. This file support only a subset
 * of ISO 5426:1983. It is incomplete due the lack of free
 * available documentation ;-(
 * 
 * The character conversion based on the german MAB2 (Maschinelles 
 * Austauschformat für Bibliotheken) documentation, October 1996, 
 * die Deutsche Bibliothek, Frankfurt am Main. 
 * URL: http://www.ddb.de, ftp://ftp.ddb.de/pub/mab/
 *
 *
 * http://lcweb.loc.gov/loc/standards/isotc46/sc4standards.html
 * Character sets: 
 * ISO 5426:1983 -   Extension of the Latin alphabet coded character
 *                   set for bibliographic information interchange 
 * ISO 5426-2:1996 - Extension of the Latin alphabet coded character set 
 *                   for bibliographic information interchange 
 *                   Part 2: Latin characters used in minor European 
 *                   languages and obsolete typography 
 *
 * 
 * ISO 5426:1983
 * 
 * Extension of the Latin alphabet coded character set for bibliographic
 * information interchange
 * 
 * Contains a set of 76 graphic characters with their coded
 * representations. It includes a code table and a legend showing each
 * graphic, its name and use, and explanatory notes. Primarily intended
 * for information interchange among data processing systems and within
 * message transmission systems, this character set is designed to handle
 * information in 39 specified languages, as well as transliterated or
 * romanized forms of an additional 32 languages. These characters,
 * together with the characters in the international reference version of
 * ISO 646 (ISO escape sequence ESC 2/8 4/0), constitute a character set
 * for the international interchange of bibliographic citations,
 * including their annotations, in the Latin alphabet.
 * 
 * ISO 5426-2:1996 
 * 
 * Extension of the Latin alphabet coded character set for bibliographic
 * information interchange Part 2: Latin characters used in minor
 * European languages and obsolete typography
 * 
 * Contains a set of 70 graphic characters, and their coded
 * representations. These characters form a supplement to those provided
 * in ISO 5426 by addressing less common and obsolete languages which use
 * the Latin script and obsolete printing conventions. Included is a code
 * table and a legend showing each graphic, its name and use, and
 * explanatory notes. This character set is primarily intended for
 * information interchange among data processing systems and within
 * message transmission systems. These characters, together with the
 * characters from ISO 646/IEC and ISO 5426, is intended to handle
 * information in the following languages: Anglo-Saxon, Greenlandic,
 * Lappish, Latin, Latvian (older forms), and Maltese. It is also
 * intended to cover printing conventions associated with older books, in
 * particular marks associated with binding signatures.
 * 
 */


/* Step name: iso5426_latin1.  */


%%
\173	{ put_byte (123, subtask); }
\174    { put_byte (124, subtask); }
\175    { put_byte (125, subtask); }
\37     { put_byte (36, subtask); }
\266	{ put_byte (158, subtask); } 
\241	{ put_byte (161, subtask); }
\243	{ put_byte (163, subtask); }
\244	{ put_byte (36, subtask);  }
\247	{ put_byte (167, subtask); } 

\210    { put_byte (172, subtask); }
\211    { put_byte (172, subtask); }

\253	{ put_byte (171, subtask); } 
\273	{ put_byte (187, subtask); }
\277	{ put_byte (191, subtask); } 

\341	{ put_byte (198, subtask); }
\342	{ put_byte (208, subtask); }

\350    { put_byte (76, subtask); }
\351	{ put_byte (216, subtask); }
\354	{ put_byte (254, subtask); }
\361	{ put_byte (230, subtask); }
\362	{ put_byte (100, subtask); }
\363	{ put_byte (240, subtask); }
\365	{ put_byte (134, subtask); }
\370	{ put_byte (108, subtask); }
\371	{ put_byte (248, subtask); }
\373	{ put_byte (223, subtask); }
\374	{ put_byte (222, subtask); } 

\301a	{ put_byte (224, subtask); } 
\301e	{ put_byte (232, subtask); } 
\301i	{ put_byte (236, subtask); } 
\301o	{ put_byte (242, subtask); } 
\301u	{ put_byte (249, subtask); } 

\301A	{ put_byte (192, subtask); } 
\301E	{ put_byte (200, subtask); } 
\301I	{ put_byte (204, subtask); } 
\301O	{ put_byte (210, subtask); } 
\301U	{ put_byte (217, subtask); } 

\302a	{ put_byte (225, subtask); } 
\302e	{ put_byte (233, subtask); } 
\302i	{ put_byte (237, subtask); } 
\302o	{ put_byte (243, subtask); } 
\302u	{ put_byte (250, subtask); } 
\302y	{ put_byte (253, subtask); } 

\302A	{ put_byte (193, subtask); } 
\302E	{ put_byte (201, subtask); } 
\302I	{ put_byte (205, subtask); } 
\302O	{ put_byte (211, subtask); } 
\302U	{ put_byte (218, subtask); } 
\302Y	{ put_byte (221, subtask); } 

\303a	{ put_byte (226, subtask); } 
\303e	{ put_byte (234, subtask); } 
\303i	{ put_byte (238, subtask); } 
\303o	{ put_byte (244, subtask); } 
\303u	{ put_byte (251, subtask); } 

\303A	{ put_byte (194, subtask); } 
\303E	{ put_byte (202, subtask); } 
\303I	{ put_byte (206, subtask); } 
\303O	{ put_byte (212, subtask); } 
\303U	{ put_byte (219, subtask); } 

\304a	{ put_byte (227, subtask); } 
\304o	{ put_byte (245, subtask); } 
\304n	{ put_byte (241, subtask); } 

\304A	{ put_byte (195, subtask); } 
\304O	{ put_byte (213, subtask); } 
\304N	{ put_byte (209, subtask); } 

\310e	{ put_byte (235, subtask); } 
\310i	{ put_byte (239, subtask); } 
\310y	{ put_byte (255, subtask); } 

\310E	{ put_byte (203, subtask); } 
\310I	{ put_byte (207, subtask); } 

\312a	{ put_byte (229, subtask); } 
\312A	{ put_byte (197, subtask); } 

\320c	{ put_byte (231, subtask); } 
\320C	{ put_byte (199, subtask); } 

\311a	{ put_byte (228, subtask); } 
\311o	{ put_byte (246, subtask); } 
\311u	{ put_byte (252, subtask); } 
\311A	{ put_byte (196, subtask); } 
\311O	{ put_byte (214, subtask); } 
\311U	{ put_byte (220, subtask); }   
%%

bool
module_iso5426_latin1 (RECODE_OUTER outer)
{
  return declare_single (outer, "ISO_5426:1983-DB-MAB2", "Latin-1", 
                         outer->quality_variable_to_byte, NULL,
                         transform_iso5426_latin1)
    && declare_alias (outer, "ISO_5426", "ISO_5426:1983-DB-MAB2")
    && declare_alias (outer, "DB-MAB2", "ISO_5426:1983-DB-MAB2")
    && declare_alias (outer, "MAB2", "ISO_5426:1983-DB-MAB2")
    && declare_alias (outer, "MAB", "ISO_5426:1983-DB-MAB2")
    && declare_alias (outer, "DDB", "ISO_5426:1983-DB-MAB2"); /* Die Deutsche Bibliothek */
}

void
delmodule_iso5426_latin1 (RECODE_OUTER outer)
{
}
