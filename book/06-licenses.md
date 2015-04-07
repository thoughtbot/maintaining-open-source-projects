# Licenses

When we produce work, the country’s law gives us rights over our creation. We
are granted exclusive rights to its use and distribution so that we can receive
compensation for our “intellectual property”.

Some developers think that code with no license is automatically in the public
domain. That is not true: under the Berne Convention, which most countries have
signed, anything written down is automatically copyrighted, including programs.

Before copyright laws existed, whoever created non-material economic wealth had
to protect their creations to be able to seize value from them. For example,
they could publish a small subset of their creations and then request payment
before they published more. Another option was for authors to claim a
substantial sum one-off payment from, say, the printer of their book before
publishing it.

With copyright in place, authors, photographers, programmers, and other
intellectual workers can publish their creations immediately and wait for
licensing requests from people who want to use or re-publish their works.

If a piece of software does not carry a license, it is not free software unless
it has been explicitly and validly placed in the public domain. Free software
developers prefer to explicitly allow the use, modification and redistribution
of their work so that they benefit from peer review, testing and extensions that
the emerging community provide. By default, copyright law doesn't allow that,
and we need to use those very same laws to guarantee this collaborative way of
development.

In this chapter we explore the different ways we can allow that.


## Public domain

Works in the public domain are those whose intellectual property rights have
expired or are inapplicable. The term does not commonly apply to situations
where the creator retains residual rights, in which case use of the work is
referred to as “under license” or “with permission”.

Copyrighted work may not be used for derivative works without permission from
the copyright owner, while public domain work can be freely used for derivative
works without any permission. The copyright in a derivative work covers only the
additions and changes appearing for the first time in the work, it does not
extend to any preexisting work.

The simplest way to make a program free software is to put it in the public
domain, uncopyrighted. Being in the public domain is not a license; it means the
material is not copyrighted, and no license is needed. This allows people to
share the program and their improvements, and it allows people to use or convert
the program into proprietary software if so they want.


### A Public Domain License: CC0

[CC0] is a public domain dedication from the Creative Commons non-profit
organization. A work released under CC0 is dedicated to the public domain to the
fullest extent permitted by law. If that is not possible for any reason, CC0
also provides a permissive license as a fallback.

Code written by employees of the US government is a special exception since US
copyright law explicitly puts that in the public domain. This does not apply to
works that the US pays a company to write. It also does not apply to other
countries, many of which do allow the state to have a copyright on government
writings.

[CC0]: https://creativecommons.org/choose/zero/


## Copyleft licenses

“Copyleft” (a play on the word “copyright”) is the practice of using copyright
law to offer the right to distribute copies and modified versions of a creation,
and requiring that the same rights be preserved in modified versions of the
work. It makes the work freely available to be modified, requiring all modified
and extended versions to stay free as well.

The Free Software Foundation (FSF) quotes four freedoms that a software license
should respect to be considered “free”:

* freedom to use the work
* freedom to study the work
* freedom to copy and share the work with others
* freedom to modify the work, and the freedom to distribute modified and,
  therefore, derivative works

These freedoms don’t ensure that a derivative work will be distributed under the
same terms. In general, copyright law is used by an author to prohibit
recipients from reproducing, adapting, or distributing copies of the work. In
contrast, an author may give every person who receives a copy of some work
permission to reproduce, adapt or distribute it and require that any resulting
copies or adaptations are also bound by the same licensing. Using the copyright
laws to ensure the freedoms are kept is called “Copyleft”.

Supporters of Copyleft licenses don’t want to see software they write with the
intention for its users to be able to study, modify and share it become closed.
Instead of relying on intrinsic motivation or good will for keeping work and its
derivatives free, by the use of Copyleft licenses a project retains the right to
prosecute entities that don't publish their derivative works. These type of
licenses “restricts restrictions”, enforcing the continuation of the license
terms into the future.


### GPL

The [GNU General Public License (GPL)] grants the recipients of a
computer program the rights of the Free Software Definition and uses copyleft
to ensure the freedoms are preserved whenever the work is distributed, even when
the work is changed or added to. Commercial use and derivation by anyone is
permitted, as long as the terms of the license are honored. Proprietary
derivatives by third parties are not possible unless the copyright holder grants
permission. The first General Public License was applied to the GNU Compiler
Collection in 1987.

Researcher and programmer [David A. Wheeler argues][wheeler] that the copyleft
provided by the GPL was crucial to the success of Linux-based systems, giving
contributors to the kernel the assurance that their work would remain free,
rather than being used by software companies that could potentially give nothing
back to the community.

[GNU General Public License (GPL)]: https://www.gnu.org/licenses/gpl.html
[wheeler]: http://www.dwheeler.com/blog/2006/09/01/#gpl-bsd

The terms of the GPL can be enforced in court. For example, [Free Software
Foundation, Inc. v. Cisco Systems, Inc.] was a lawsuit initiated by the FSF
against Cisco Systems, contending that code it held the copyright to was found
in several Linksys models, without providing complete copies of all source code
and their modifications. The parties reached a settlement which includes Cisco
appointing a director to ensure Linksys products comply with free software
licenses, to notify previous recipients of their products containing FSF
programs of their rights under the GPL, and Cisco making an undisclosed
financial contribution to the FSF.

[Free Software Foundation, Inc. v. Cisco Systems, Inc.]: https://en.wikipedia.org/wiki/Free_Software_Foundation,_Inc._v._Cisco_Systems,_Inc.

The rights an author keeps through the GPL can imply a potential conflict
of interest with corporations. As an example, the GPL License is incompatible
with application distribution systems like the Mac App Store, because of the
right “to make a copy for your neighbour”, which is violated by the Apple DRM
restrictions that prevent copying of paid software. The obligation to release
derived source code for companies developing closed-source software is a deal
breaker from the start.


### LGPL

The [GNU Lesser General Public License (LGPL)] is a free software license, but
not strongly copyleft because it permits linking with non-free modules. It
allows developers and companies to use and integrate LGPL software into their
own (even proprietary) software without being required to release the source
code of their software parts.

[GNU Lesser General Public License (LGPL)]: https://www.gnu.org/licenses/why-not-lgpl.html

The license requires that only the LGPL software-parts be modifiable by
end-users via source code availability. For proprietary software, LGPL parts are
usually in the form of a shared library so that there is a clear separation
between the proprietary and LGPL parts.

The LGPL was developed as a compromise between the strong copyleft of the GNU
General Public License and more permissive licenses such as the BSD licenses and
the MIT (X11) License.

The license uses terminology mainly intended for applications written in the C
programming language or its family. [Franz Inc. published its own preamble to
the license] to clarify terminology in the Lisp context. In object-oriented
languages, [subclassing is considered a derivative], and as such, permitted.

[Franz Inc. published its own preamble to the license]: http://opensource.franz.com/preamble.html
[subclassing is considered a derivative]: https://www.gnu.org/licenses/lgpl-java.html


## Permissive licences

Copyleft and permissive type of licenses were born roughly at the same time, in
late 1980s. Berkeley Software Distribution (BSD) was a Unix operating system
derivative developed and distributed by the University of California, Berkeley.
The project began in 1977; in June 1986 4.3BSD was released. Until then, all
versions of BSD incorporated proprietary AT&T Unix code and were, therefore,
subject to an AT&T software license. Source code licenses had become very
expensive, and several outside parties had expressed interest in a separate
release of the networking code, which had been developed entirely outside AT&T
and would not be subject to the licensing requirement. This led to Networking
Release 1 (Net/1), which was made available to non-licensees of AT&T code and
was freely redistributable under the terms of the original BSD free software
License. It was released in June 1989.

A user could release the code modified or unmodified in source or binary form
with no accounting to Berkeley. The only requirements were that the copyright
notices in the source file be left intact and that products that incorporated
the code include in their documentation that the product contained code from the
University of California and its contributors. Although Berkeley charged a $1000
fee to get a tape, anyone was free to get a copy from somebody who already had
it. Indeed, several large sites put it up for anonymous FTP shortly after it was
released, and even though the code was freely available, several hundred
organizations purchased tapes, which helped to fund the Computer Systems
Research Group at Berkeley and encouraged further development.

A permissive free software licence has minimal requirements about how the
software can be redistributed. Such licenses therefore make no guarantee that
future generations of the software will remain free. The permissive nature of
the BSD license has allowed many other operating systems, both free and
proprietary, to incorporate BSD code. For example, Microsoft Windows has used
BSD-derived code in its implementation of TCP/IP, and bundles recompiled
versions of BSD’s command-line networking tools since Windows
2000. Also Darwin, the system on which Apple’s Mac OS X is built, is a
derivative of 4.4BSD-Lite2 and FreeBSD.

People who advocated free software but disagreed that it was a social imperative
began around 1998 using the term “open-source software” and presenting it as
having technical advantages. They felt that software freedom was primarily a
practical matter rather than an ideological one, and concluded that FSF’s
social activism was not appealing to companies like Netscape and looked for a
way to rebrand the free software movement to emphasize the business potential of
the sharing of source code.

Despite the fundamental philosophical differences between the free software
movement and the open source movement, the official definitions of free software
by the Free Software Foundation and of open source software by the Open Source
Initiative refer to the same software licenses, with a few minor exceptions.
While [stressing the philosophical differences], the Free Software Foundation
comments:

> The term “open source” software is used by some people to mean more or less
> the same category as free software. It is not exactly the same class of
> software: they accept some licenses that we consider too restrictive, and
> there are free software licenses they have not accepted. However, the
> differences in extension of the category are small: nearly all free software
> is open source, and nearly all open source software is free.
>
> — Free Software Foundation,

[stressing the philosophical differences]: https://www.gnu.org/philosophy/categories.html

Compared with the Public Domain, Permissive licenses often do stipulate some
limited requirements, such as that the original authors must be credited
(attribution). If a work is truly in the public domain, this is usually not
legally required.


### Apache

The [Apache License] does not require a derivative work of the software to be
distributed using the same license. It still requires the application of the
same license to all unmodified parts and, in every licensed file, any original
copyright, patent, trademark, and attribution notices in redistributed code must
be preserved. In every licensed file changed, a notification must be added
stating that changes have been made to that file.

[Apache License]: http://www.apache.org/licenses/LICENSE-2.0


### BSD License (modified)

The original BSD License (modified by removal of the [advertising clause])
allows unlimited redistribution for any purpose as long as its copyright notices
and the license’s disclaimers of warranty are maintained. The license also
contains a clause restricting the use of the names of contributors for
endorsement of a derived work without specific permission.

[advertising clause]: https://www.gnu.org/philosophy/bsd.en.html

This and the following permissive licenses we’ll mention are short enough to be
quoted verbatim, without the need of our interpretation:

```
Copyright (c) YEAR(S) COPYRIGHT-HOLDERS NAME AND EMAIL ADDRESS
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the <organization> nor the names of its contributors
      may be used to endorse or promote products derived from this software
      without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
```


### MIT License (X11)

The MIT License (X11) permits reuse within proprietary software provided all
copies of the licensed software include a copy of the MIT License terms and the
copyright notice. Such proprietary software retains its proprietary nature even
if it incorporates software under this license. Its template follows:

```
Copyright (c) YEAR(S) COPYRIGHT-HOLDERS NAME AND EMAIL ADDRESS

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```


### ISC License

The ISC License is a permissive free software license written by the Internet
Software Consortium. It is functionally equivalent to the simplified BSD and MIT
licenses, with language that was deemed unnecessary by the Berne convention
removed. Initially used for ISC’s software releases, it has since become the
preferred license of OpenBSD since 2003. Shorter than the MIT License, its
template follows:

```
Copyright (c) YEAR(S) COPYRIGHT-HOLDERS NAME AND EMAIL ADDRESS

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED “AS IS” AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.
```


## Dual Licensing

Copyleft licenses like GPL are also sometimes used as part of a dual licensing
business model, whereby owners release the code under a copyleft license, but
can also sell per-copy exclusive licenses to organizations that want to use or
redistribute the software under proprietary terms.

For software released under a copyleft open source license, such terms would
normally be incompatible, but the licensor can still permit it because as the
copyright holder, they are the only ones who could conceivably sue for copyright
infringement, and thus they can agree for a fee not to sue. This way, clients
get permission to redistribute the software under terms that would otherwise be
incompatible with its open source license.

When implementing dual-licensing, owners should incorporate code contributions
only from contributors who have signed a [sufficiently strong contributor
agreement] as to allow them to relicense that contributor’s code.

[sufficiently strong contributor agreement]: http://wiki.civiccommons.org/Contributor_Agreements


## Other permissive (and informal) licenses

In the United States, informal licenses are supposed to be interpreted based on
what the author intends. That makes them non-copyleft free software licenses, as
they don’t formally keep the derivatives under the same license clause. Many
other countries have a more rigid approach to copyright licenses. There is no
telling what courts in those countries might decide an informal statement means,
or if it is a license at all.

Two examples that state the same with opposing language:

### [Do What the Fuck You Want to Public License](http://www.wtfpl.net/about/)

```
        DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
                    Version 2, December 2004

 Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>

 Everyone is permitted to copy and distribute verbatim or modified
 copies of this license document, and changing it is allowed as long
 as the name is changed.

            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. You just DO WHAT THE FUCK YOU WANT TO.
```


### [THE HUGWARE LICENSE](http://hugware.org/)

```
THE HUGWARE LICENSE

LICENSE

If there is no other license you can do whatever you want with this while you
retain the attribution to the author.

HUGS

The author spent time to make this software so please show some gratitude,
in any
form. A hug, a tweet, a beer on a conference or just a plain old email. Your
choice.

Less hate, more hugs.
```
