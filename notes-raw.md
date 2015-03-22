# Notes that might go into the book

Regarding terminology, might be better to use patch instead of PR to avoid
assuming GitHub for the reader’s projects:

book/02-community.md:up with. Questions and feature requests will start queueing up. While you
book/02-community.md:Feature requests, help requests, bug reports, and patches all land in your
book/02-community.md:projects, uses a browser extension to post pre-cooked answers into pull requests
book/03-git.md:GitHub pull requests. From those discussions, decisions arise on what should the
book/03-git.md:* Pull requests that are small in scope fit into a single commit. Some
book/03-git.md:* Similar rules apply to merging or splitting pull requests as you see fit.
book/03-git.md:## Reject pull requests
book/04-quality.md:Public discussions in pull requests shape these standards, deciding not only
book/04-quality.md:requests that do not conform to the style guides. Hound is
book/05-documentation.md:* Submitting Pull Requests
maintaining-an-open-source-project documentation % grep -r PR book
book/03-git.md:You check your emails in the morning, and you happily find a pull request (PR) waiting
book/03-git.md:  and understand the context and discussion in this PR.
book/03-git.md:a PR is also a potential new feature in your project that you will need to take care
book/03-git.md:To make sure merging a given PR is a good idea, you can ask the following
book/04-quality.md:consistently the first reviewer of any PR in the projects that set it up. It being

---

Explain in "nobody owes anything to anyone" that thats what almost every OSI
license says:
http://opensource.org/licenses/

---

Bikeshed example ("pedantic PR"): https://github.com/twbs/bootstrap/pull/15909

---

It’s better to contribute upstream than to fork:
http://blog.steveklabnik.com/posts/2011-08-12-we-forget-that-open-source-is-made-of-people

Vim creator on NeoVim fork:

> Some of the basic choices seem odd and irrelevant for the main goals.
> Such as dropping support for some systems and not being backwards compatible.
> The goals could just as well been implemented without that.
I do hope that the nice things that NeoVim comes up with can be added back to
Vim. I mean, who doesn’t want better plugin support, a better GUI and embedding?
The big question is how to do that, and who is going to implement it properly.
http://www.binpress.com/blog/2014/11/19/vim-creator-bram-moolenaar-interview/

---

Ask Paul for feedback on the cognitive biases part

Add excellent talk on avoiding burnout: https://vimeo.com/106232256

---

Daniel Goleman, PRESENT HIM,

Tim Pope, PRESENT HIM,

Jussi Koskinen, PRESENT,

---

On commits
http://rakeroutes.com/blog/deliberate-git/

---

Bazaar vs Cathedral
http://forums.macrumors.com/showthread.php?t=884726

I run a 12+ person development team working on mission critical R&D tools at a
major aerospace company. Having a larger development community is not necessary
an advantage. Often when teams get too large they start to have all kinds of
problems that hinder successful development.

You can argue all day that code open to analysis is better/safer, but it means
nothing if it isn’t independent analysis. So what if the Keepass community can
analyze its own code. They will be naturally biased and will make assumptions
that an independent reviewer won’t. That would be like me claiming my code
doesn’t need Q&A because I already did that myself. It just doesn’t work that
way.

---

On community

Justin Searls on how to say no to a lot of work in a nice PR:
https://twitter.com/searls/status/568497014897577984 on
https://github.com/linemanjs/rails-lineman/pull/15#issuecomment-75122029

---

# Resources to review

## Blog posts

* http://www.codesimplicity.com/post/open-source-community-simplified/
* https://hacks.mozilla.org/2013/05/how-to-spread-the-word-about-your-code/
* http://www.drdobbs.com/open-source/building-and-maintaining-an-open-source/240168415
* See references in https://speakerdeck.com/bf4/maintaining-open-source-projects-1

## Talks

* http://confreaks.tv/videos/rubyconf2013-maintaining-sanity
