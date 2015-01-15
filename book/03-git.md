# Git

You check your emails in the morning and (yay!) you find see a Pull Request
waiting for your review. You open it and start working. You have to:

1. Study what is changing and why.
2. See if it might have repercussions with other parts of the system.
3. Think if it should be backported to previous versions.
4. Make it easily reversible for future you. Just in case.
5. Make it easy (for future you when debugging related functionality) to
   remember and understand the context of this discussion and changeset.

There is this one rule that will help with all of the above: **keep commits
small and cohesive**. A good commit may be as small as a one-line change and as
big as a change in every file of the entire project, provided it contains no
more than one logical change.

A small and cohesive commit is easier to review and grasp. git `annotate` and
`blame` commands will be more clear about the origin and reason of each line of
the entire source code. If you find the need to revert the changeset, it is
possible to `revert` that single commit, the same as if we have to backport it
(in git terms, `cherry-pick`) to previous releases.

Keep commits as small and cohesive as possible.


## Ask for good commit messages

Let’s say you are investigating a bug. While debugging you decide to go back in
the history of the project to find the origin of a conditional. You find that
around a year ago that line was changed, there were no test changes, and the
commit message reads “Allow `a` to be equal to `THRESHOLD`”.  The change was:

```diff
- if (a < THRESHOLD) {
+ if (a <= THRESHOLD) {
```

You were successful in finding the origin of the change, but it doesn’t get you
any closer to understanding why that change and this bug exists. The author of
that change is luckily in the same room as you: it is you! Having such a close
relationship with the programmer doesn’t get you any closer to understanding why
did he/she think this change was needed past year.

The audience for the commit message (any reviewer, starting a year ago and into
the future) has to find out what the patch does and how it fixes a given issue
they have. A good commit message that answers these rather typical questions can
spare that effort for *everyone*. Any commit message is a potential time sink,
or a never-too-verbose effective note.

A good commit message lets anyone decide if the solution is still relevant, and
if it’s a good solution for the problem at hand or we can find better ways. A
good message should answer three questions:

* Why is this change necessary?
* How does it address the issue?
* What effects does the patch have?

Note the absence of a “what is” type of question. We have the git log for that
already, it speaks for itself.

Tim Pope meta-describes [a good commit
message](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
in a sample commit:

```
Capitalized, short (50 chars or less) summary

More detailed explanatory text, if necessary.  Wrap it to about 72
characters or so.  In some contexts, the first line is treated as the
subject of an email and the rest of the text as the body.  The blank
line separating the summary from the body is critical (unless you omit
the body entirely); tools like rebase can get confused if you run the
two together.

Write your commit message in the imperative: “Fix bug” and not “Fixed bug”
or “Fixes bug.”  This convention matches up with commit messages generated
by commands like git merge and git revert.

Further paragraphs come after blank lines.

- Bullet points are okay, too

- Typically a hyphen or asterisk is used for the bullet, followed by a
  single space, with blank lines in between, but conventions vary here

- Use a hanging indent
```

There is a flag that enables us to write a commit message right from the command
line: `-m <msg>` / `--message=<msg>`. But the CLI feels like a temporary
one-liner rather than a page in written history. Instead of using that flag we
should [configure your favorite text
editor](http://stackoverflow.com/a/2596835/356060) to write commit messages.

Having a clean story in your git log will make a huge difference in how you and
others perceive your project. By taking great care of commit messages as you do
of code, you will help increase your project’s overall quality.


## Accepting Pull Requests

You should constantly acknowledge, reward and thank anyone providing feedback
and/or code. Thank them publicly and be explicit on why their contributions were
useful to you, to them and to the community. People like being appreciated, it
will make them happy and inspire them.

Alongside from the code review, you should make sure the history contributors
build is tidy too. If history got polluted with messages like “cleanup
whitespace”, “more style changes”, etc., they should be squashed together into
meaningful parts, for the reasons outlined earlier in this chapter.

Each commit’s message should describe the problem and the solution without using
connectors, making sure they are cohesive and have only one reason to exist.
Commits with non-descriptive messages should be rewritten to reveal intent. Pull
Requests that are small in scope should fit into a single commit. Some may
contain more, with each commit being independent from one another.

In general, history should be rewritten to explain how and why changes take
place, and to improve documentation left in the git log. See [an outline of the
git commands for rewriting git
history](http://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history).


## Rejecting Pull Requests

Written code is a liability. Code is legacy as soon as it makes it into master.
Will you or your team want to maintain it? Will you like maintaining it? Do you
see it bringing in more cost than the value it provides?

We want our project to be useful for the broadest possible audience. It can feel
awkward to say “no” to a legitimate use case or idea. We may feel like adding
configuration options to the software so we can take everyone into account, but
it comes with hidden costs. Maintainers have to keep in mind one more state the
software can be in for every new feature or modification, and also give support
to the users of that configuration that maintainers rarely (if ever) use.

Say “no” when you believe the addition won’t help the project. “No, I am not
going to work this feature out for you”. “No, I am not going to maintain that
code, with or without your future help”.

If you internally feel like saying “no” but you can’t find the way to do it,
remember how the leaders of most popular open source projects and organizations
work:

\begin{center}
  \begin{tabular}{ r l }
    David Heinemeier Hansson & Ruby on Rails \\
    Theo de Raadt       & OpenBSD  \\
    Richard M. Stallman & Free Software Foundation \\
    Linus Torvalds      & Linux
  \end{tabular}
\end{center}

These people are highly opinionated, decisive and dominant. They are the
“benevolent dictators” of their projects, and many times they do things because
so they want, without the need to reach concensus.

Creator of Ruby Yukihiro “Matz” Matsumoto is one of the nicest people in the
world. Ruby was unheard of until DHH published Rails. While I personally prefer
to follow Matz’s style, I count with some great sources of inspiration for when
I want to say “no”.
