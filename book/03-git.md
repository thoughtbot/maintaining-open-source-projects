# Git & GitHub

You check your emails in the morning, and you happily find a patch waiting
for your consideration. You open it and start building a mental picture of what
is proposed. You have to:

* Study what is changing and why.
* See if it might have repercussions with other parts of the system.
* Think if you should backport it to previous releases.
* Make it easily reversible for future you (just in case).
* Make it easy (for future you when debugging related functionality) to remember
  and understand the context and discussion around this patch.

Let’s see how good usage of Git can help with these goals.


## Request small, cohesive commits

There are two rules that help with all of the above:

* Keep commits cohesive
* Keep commits as small as possible

A Pull Request is a collection of commits that you should review as well.
A good commit may be as small as a one-line change and as big as a
change in every file of the entire project, provided it contains no more than
one logical change. If it contains more, split it.

For example, if a patch fixes a bug and optimizes the performance of a feature,
split it into two separate commits. But don’t split a single logical change into
several commits. For example, the implementation of a feature and the
corresponding tests belong in the same commit.

A small and cohesive commit is easier to review and grasp. Git’s `annotate` and
`blame` commands will be more clear about the origin and reason of each line of
the entire source code. If you find the need to revert the changeset, it is
possible to `revert` that single commit. The same applies if you have to
backport it (in git terms, `cherry-pick` it) to previous releases.

Always keep commits as small and cohesive as possible and ask your contributors
to do the same, and you will stay on the right path.


## Request good commit messages

Imagine you are investigating a bug reported to your project. After
some debugging you narrow the bug down to an `if` for which the condition
changed from a “less than” to a “less or equal than” comparison:

```diff
- if (a < THRESHOLD)
+ if (a <= THRESHOLD)
```

If you undo that change, this bug seems to disappear, but before committing the
change you want to make sure you understand the reasoning behind this condition
to avoid introducing a regression.

You decide to go back in the history of the project in search of the origin of
that line, to learn why was the `<` operator replaced by `<=`. You find the
change happened around a year ago, there were no other changes in that
commit, and the commit message reads:

> allow `a` to be equal to `THRESHOLD`

Such a discovery! You were successful in finding the origin of the change, but
that doesn’t get you any closer to understanding why that change (and this bug)
exists.

The author of that change is luckily in the same room as you. In fact, it *is
you*! Having such a close relationship, however, doesn’t help you understand why
you made the change last year, or what repercussions your new change could have.
Irrelevant commit messages make it difficult for you or any reviewer to find
out what a patch does and how it affects the software.

A more informative message spares that effort for *everyone*. A commit message
can be a potential time sink or serve as never-too-verbose documentation. An
informative commit message lets anyone decide if the solution still applies and
if it’s a good solution to the problem at hand. Also, it can help determine if
it's possible to find better alternatives. Understanding why something happened
months or years ago becomes possible and efficient.

A good commit message answers three questions:

* Why is this change necessary?
* How does it address the issue?
* What effects does the patch have?

Note the absence of a “what is” type of question. We have the git log for that
already; you can leave a short summary of the “what”, but elaborate on the
“why”. Other useful notes to add to the end of the commit message are issue
tracker IDs, link to other commits or patches, etc.

There are style practices that help keeping a consistent and more readable log:

* Separate subject from body with a blank line
* Limit the subject line to 50 characters
* Capitalize the subject line, and don’t end it with a period
* Use imperative form in the subject line
* Wrap the body at 72 characters
* The subject tells what the commits does, the body explains why

Tim Pope, renowned creator of several Vim plugins, meta-describes [a good
message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
in a hypothetical commit message:

```
Capitalized, short (50 chars or less) summary

More detailed explanatory text, if necessary.  Wrap it to about 72
characters or so.  In some contexts, the first line is treated as the
subject of an email and the rest of the text as the body.  The blank
line separating the summary from the body is critical (unless you omit
the body entirely); tools like rebase can get confused if you run the
two together.

Write your commit message in the imperative: “Fix bug” and not “Fixed
bug” or “Fixes bug.”  This convention matches up with commit messages
generated by commands like git merge and git revert.

Further paragraphs come after blank lines.

- Bullet points are okay, too

- Typically a hyphen or asterisk is used for the bullet, followed by a
  single space, with blank lines in between, but conventions vary here

- Use a hanging indent
```

Not every commit requires both a subject and a body. Sometimes a single line is
fine, specially when the change is so simple that no further context is
necessary. For example: “fix typo in README”. For these cases you can use the
`--message=` flag (`-m` for short) to `git commit`, which allows writing the
message right from the command line.

When you need to leave a longer explanation, instead of using that flag it’s
better to [hook your favorite text editor to git]. That way you’ll always have
enough space and your regular toolset for writing what is as relevant as code
itself: your commit message.

[hook your favorite text editor to git]: http://stackoverflow.com/a/2596835/356060

Summing up, always write commit messages as if you are explaining the change to
a colleague sitting next to you who has no idea of what is going on.


## Request good git history

Over the course of a single bug fix, one may create several commits with
improvements found while working through it and with feedback from code reviews.
Once merged the code may look tidy, but better not look at the sausage factory
that’s in the git log!

Some people see value in keeping the evolution of the code unchanged, commit
after commit, having the whole messy (but complete) changeset. Assuming each
commit includes an explanation of the rationale behind of it, then history is
complete, but that doesn’t mean clear. If the author takes the time to send a
curated history rather than the raw version, it’s easier for everyone in the
team to understand this change. For a programmer at work, it’s more useful to
understand what the code does and why, than a given contributor’s development
and learning process.

A repository has every version of the project since it was born indeed, and that
doesn’t necessarily include discussions that happen in chat rooms, hallways, or
GitHub pull requests. From those discussions, decisions arise on what should the
software do and how, and that context is lost unless we explicitly write it into
each commit message. You can encourage this before merging code by requesting
that:

* Each commit contains a single logical change. If it has more code changes it
    should be split, if it has less it should get squashed with other commits.
* Each commit message explains the problem and the solution without using
    connectors. If they use connectors, there’s probably more than one logical
    change.
* If the branch history is polluted with messages like “cleanup whitespace”, “more style
    changes”, “wip”, etc., commits are [squashed together into meaningful
    parts](http://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history).
* Changesets that are small in scope fit into a single commit. Some
    may contain more, with each commit being independent of one another.
* Similar rules apply to merging or splitting pull requests as you see fit.

It is better to squash commits together right before merging and not earlier.
That way, discussion and follow-up commits addressing the feedback stay
synchronized, anyone can see how the feature came up to be across the different
revisions, and the reviewer always knows what you addressed and what
not.

Be nice, floss every day and keep your git history clean.


## Reject patches

According to
[Wikipedia](https://en.wikipedia.org/wiki/Legacy_code#Modern_interpretations),
legacy code is source code inherited from someone else and source code inherited
from an older version of the software. Which means that any code that lands into
master is legacy code. We ourselves are effectively someone else after
forgetting the details of this code in two weeks, and any commit that’s behind
`HEAD` is quite literally an older version of the software. Code is a liability
and solving problems with as little code as possible is almost always a good
decision. It doesn’t matter how exciting it feels like to receive a patch:
the potential new feature in your project will need to be taken care
of over the course of its lifetime. You will have to keep in mind one more state
the software can be in for every new feature or modification that gets merged.

We want our project to be useful for the broadest possible audience. It can feel
awkward to say “no” to a legitimate use case or idea. We may think of adding
configuration options to the software so we can take everyone into account, but
that brings complexity.

To make sure merging a given patch is a good idea, you can ask the following
questions:

* Will you or your team want to maintain it?
* Will the author be reachable for support, answer questions that the community
    will have around that feature, fix related bugs?
* Will you like maintaining that piece of software?
* Do you see it bringing in more value than cost?

Say “no” when you believe the addition will not be helpful to the
project, the team maintaining it, and by extension the users.

If you internally feel like saying “no” but you can’t find the way to do it,
remember how leaders of popular open source projects and organizations work:

\begin{center}
  \begin{tabular}{ r l }
    David Heinemeier Hansson & Ruby on Rails \\
    Theo de Raadt       & OpenBSD \\
    Richard M. Stallman & Free Software Foundation \\
    Linus Torvalds      & Linux
  \end{tabular}
\end{center}

These people are highly opinionated, decisive, even dominant. They are the
“benevolent dictators” of their projects, and many times they take decisions
based solely on their taste, without the need to reach consensus.
They don’t ignore what other people say, they have strong opinions and stand for
them, and they are open to change those opinions provided relevant facts
(mostly!).

Creator of Ruby Yukihiro “Matz” Matsumoto is one of the nicest people in this
planet. Ruby was unheard of until DHH published Rails. While I try
to follow Matz’s style, I count with a few noteworthy sources of inspiration for
when I want to say “no”.
