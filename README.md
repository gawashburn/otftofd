otftofd is a script I wrote to help the task of generating a NFSS font
description file and a map file from a large collection of OpenType
fonts. In particular, when considering Adobe Pro Optical fonts, there is
almost a combinatorial nightmare when attempting to create these files
by hand.

This software is still alpha quality and mostly designed specifically
for Adobe font conventions. It currently has experimental support for
generating swashed versions of a font and fonts consisting of ornaments.
There is some preliminary support for selecting encodings, but it is far
from complete. The tool has been mostly tested withe the T1 Cork
encoding. For more information about using the tool, invoke it with the
–help option.

otftofd is written in [OCaml](http://caml.inria.fr/) and additionally
requires Eddie Kohler's excellent [LCDF Typetools](http://www.lcdf.org/~eddietwo/type/).

ofttofd was originally called »adobe-font-tool«, but at the suggestion
of CTAN it was renamed to hopefully be more descriptive.

otftofd is licensed under the FSF General Public License. Bug fixes,
improvements, and suggestions are welcome. 
