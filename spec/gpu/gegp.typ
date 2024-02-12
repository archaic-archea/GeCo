#import "../conf.typ": conf
#import "@preview/bytefield:0.0.3": *

#set heading(numbering: "1.")

#show: doc => conf(
    title: [
        The Germanium Graphics Processing Architecture
    ],
    authors: (
        (
            name: "Lilly Anderson",
            email: "archaic.archea@gmail.com",
        ),
    ),
    introduction: "Germanium Graphics Processor, also called GeGP (pronounced as 'ɡɛɡ-pi'), is a computer architecture intended for high-speed graphics processing. It operates as a 64-bit EPIC architecture and is focused on accelerating graphical mathematical operations.",
    doc,
)

= Goals
The goals of the GeGP project are to provide proper acceleration for operations such as those often shown in linear algebra, trigonometry, as well as normal math operations. A list of what operations we currently support accelerating can be found in subsection 2.1

== Acceleration
- Sine
- Cosine
- Tangent
- 2x2, 3x3, and 4x4 Matrix Operations
- 2-, 3-, and 4-d Vector Operations
- Standard mathemtaical operations (addition, subtraction, multiplication, division, square root)

= Assistance
Many people have provided assistance in editting this document and although they are not authors, it is still important to give them credit.
- Jaiden Garcia: https://mariwa.me/contact