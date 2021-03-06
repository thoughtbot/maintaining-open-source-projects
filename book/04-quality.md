# Maintaining quality

During code review, there are two types of feedback you can provide:

* High level: about software design, design patterns, anti-patterns,
    architecture, suggestion of alternative implementations.
* Low level: details like matching coding style with the surroundings of the
    file or project, indentation, naming conventions, etc.

A high-level plan is key to the success of the project. Weak foundations can
complicate updating or extending the software, which can eventually stall
development altogether.

It might seem that feedback on style is less relevant, as an unnecessary comma
or a misspelled name won’t break a feature. But small discrepancies give the
impression of individual developers working without purpose rather than a team
working together toward a common goal. Lack of attention to detail conveys an
attitude that might permeate other aspects of a project like readability,
dependency management, and testing. An inconsistent style is a superficial but
notable sign that people don’t care much about quality.

Kees Keizer and colleagues from the University of Groningen [conducted
experiments] showing that if people observe a certain social norm or legitimate
rule was violated, they are more likely to violate other norms or rules, causing
disorder to spread. This effect is also known as “broken windows”:
one broken window in a building is enough to increase the chances that more
will appear.

[conducted experiments]: http://www.sciencemag.org/content/322/5908/1681.abstract

Bram Moolenaar, author and maintainer of the Vim text editor, suggests
maintainers to set a precedent:

> Write nice code. Use white space properly, use good names for methods, add
> comments to explain anything that isn’t obvious, etc. If you write ugly code,
> anyone who intends to fix a bug or add a feature will not enjoy their work and
> likely avoid it next time.

Taking care of software quality at every level keeps maintenance costs low. Poor
structural quality in business applications results in cost and schedule
overruns. It also creates waste in the form of rework. Engineering Researcher
Jussi Koskinen cites studies in [_Software Maintenance Costs_] that show the
relative cost of maintaining software and managing its evolution represents more
than 50% of its total cost.

Let’s see how we can control these costs.

[_Software Maintenance Costs_]:
https://web.archive.org/web/20120313070806/http://users.jyu.fi/~koskinen/smcosts.htm


## Adopt a style guide

A programming style guide is a set of rules used while writing code that
establishes and enforces style to improve communication, helping programmers
read and understand source code. It ensures consistency within a file and across
multiple files. When a group of people adhere to the same guidelines, all the
files feel familiar to everyone.

You can write the coding standard for your project or adopt an existing one, and
follow it. Any guideline will be useful, as any one of them will handle a myriad
of little decisions for you and your team so you don’t need to think about them
too. In many cases it doesn’t matter what decisions these are; the point is to
avoid having to discuss them frequently. Code ought to conform with the
guidelines, leaving little room for opinions and bike-shed type of discussions.
Guidelines save time for you to focus on the deeper concepts of a given
changeset and the high-level overview of the code under review.

Here is a list of three sample style guides and coding standards:

* [Most popular Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
* [Symfony’s PHP coding standard](http://symfony.com/doc/current/contributing/code/standards.html)
* [thoughtbot style guides for different languages and
    frameworks](https://github.com/thoughtbot/guides/tree/master/style#style)

Public discussions in pull requests shape these standards, deciding not only on
superficial style but also fostering best practices whenever possible. For
example, in Ruby it’s better to avoid rescuing the general `Exception` class, as
it traps OS signals to exit a process, requiring to send a non-catchable `KILL`
to end execution of the script. thoughtbot guidelines advise against that
practice. People who follow a popular guideline might avoid rough edges even
while they are not conscious of them.

If you are working on side projects though, you may throw
away conventions and ignore everything anyone has ever said. Because, as
[Harrison Shoff delightfully answers in a critique of his guidelines], lack of process is
what gets us to new discoveries. Not everything has to feel cookie cut,
particularly for explorations.

[Harrison Shoff delightfully answers in a critique of his guidelines]:
https://github.com/airbnb/javascript/issues/102#issuecomment-28157738

Style guides can help polish reliability, performance, security,
maintainability, and size of your software. You can research the reasoning
behind each rule, and analyze if they apply to you and your team. Even without
the need of learning all this context you can still achieve healthy results.
Follow the rules that hundreds of people from your community have shaped, and
break them when they don’t make sense any longer for you.


## Use static analysis tools

The existence of a document that specifies a process is not enough for people to
follow it. Take a moment to let this sink in. You will still continue receiving
contributions in the most creative styles you've ever seen, and you might not be
happiest about the originality contributors show.

If you receive a contribution with guideline violations that you’d rather see
followed, you have the following options:

1. Not to merge the changes. Unfortunately, this might come off as rude to the
   contributor(s). It also doesn’t help the project if the code changes are
   functionally useful.

2. Ignore the guidelines and merge anyway. It leads to sloppy looking code.

3. Merge and apply style changes yourself. This is time-consuming and will
   clutter the git history with stylistic rather than functional changes.

4. Comment on every violation, working with the author until the changeset is
   good. This is time-consuming and might feel awkward.

5. Do nothing, and let a robot comment on every style violation in virtually no
   time, consistently, and with no emotions.

Ruby has a tool called rubocop that exposes style violations. Hound CI is a
product that uses rubocop, and it comments in the changed lines of patches that
do not conform to the style guides. Hound is consistently the first reviewer of
any patch in the projects that set it up. Because it’s a bot, it avoids the
potentially awkward situation of nitpicking style violations over a
contribution. People rarely get offended by a robot dog. It is indeed waiting to
criticize your style, but it does so always, with the same speed, consistency
and lack of passion. People can handle Hound items ahead of your review, leaving
code that reads as if anyone on your team had written it.

Other useful static analysis tools are:

* For JavaScript code, Douglas Crockbford’s tricky to please [JSLint], or the
    configurable fork [JSHint].
* [RIPS] for PHP security analysis.
* [Brakeman] for Rails security analysis.
* [Flog] for Ruby code complexity.
* [Flay] for Ruby code duplication.
* [Wikipedia list of static analysis tools].

[JSLint]: http://jslint.com/
[JSHint]: http://jshint.com/
[RIPS]: http://rips-scanner.sourceforge.net/
[Brakeman]: http://brakemanscanner.org/
[Flog]: http://ruby.sadi.st/Flog.html
[Flay]: http://ruby.sadi.st/Flay.html
[Wikipedia list of static analysis tools]: https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis

Let machines do what they are good at, and humans do what machines can’t do.
Stop thinking about _how_ code is changing to focus better on _what_ is
changing.


## Request regression tests for every change

Testing helps verify whether, after introducing new behavior or updating the
project, the change has had the intended effect. Tests help us gain confidence
that the project:

* Meets its requirements.
* Responds correctly to all kinds of input.
* Performs its functions within an acceptable time frame.
* Is usable.
* Can be installed and run in its intended environments.

Testing cannot establish that a product functions well under any condition, but
it can determine when it does not function properly under specific conditions. A
failing test is the most specific description of an issue a project can get. In
an ideal world, we would have a failing test accompanying the natural language
description of every issue.

These tests in turn serve as regression tests. A regression happens if a
change has unintended consequences over other parts of the project. Having tests
covering each bug fix protects us in an automated way from reappearing bugs,
making the software more reliable.


## Run tests on every commit

Running tests before committing to master helps avoid one developer’s work
breaking another copy of the software. Continuous Integration (CI) originally described a
workflow in which every developer would run all unit tests in their local
environment and verify they passed before sharing changes.

Nowadays build servers automatically run all tests after every commit, and
report results to the authors closing a tight feedback loop. In addition to
automated tests, CI environments can implement continuous processes for general
quality control. Such processes run additional static and dynamic tests, measure
and profile performance, extract and format documentation from the source code,
and facilitate manual QA processes. This continuous application of quality
control aims to improve visibility over the project’s quality.

[Travis CI] is an open source continuous integration service for projects hosted
on GitHub. It’s free for open source projects. Like similar services, it
automatically detects new commits in any branch, builds the project and runs its
tests. It notifies the developer about the success or failure of the run upon
completion.

[Travis CI]: https://travis-ci.com/

Travis CI will test all combinations you specify of runtimes, dependency
versions, and environment variables.

An example configuration file for a ruby library might be:

```
language: ruby

rvm:
  - 2.2
  - 2.3

env:
  - DATABASE=mongodb
  - DATABASE=postgresql
  - DATABASE=redis

gemfile:
  - Gemfile
  - Gemfile.rails42
```

This results in a 2×3×2 build matrix that will validate your project runs in the
many combinations of rails and ruby versions, and databases your users may have.

By automating as many quality controls as possible in a CI environment, you will
make sure there is visibility into the project’s different quality measurements.
This will help your team and community maintain them more effectively.


## Choose your own values

When you start a new project you follow a set of values and priorities, whether
you are conscious about it or not. You produce work with a belief, taste or
deliberate decision on what is most important for your project and community,
and take decisions based on that.

A list of priorities for your project to follow can be:

* Reliability
* Security
* Usability
* Design
* Code quality
* Popularity
* Performance
* Cleverness

A prioritization of values you might want for your community can be:

* Collaboration
* Friendliness
* Experience
* Low barrier of entry
* Stability
* Numbers (lines of written code, commits added, etc.)

<!--
TODO: On culture

Each issue you close, each patch you merge, each thread you participate in shows
your values, and that will probably grow a following of people who share them.
See example threads in which maintainers set priorities for their projects:

* A Rails thread speaking about conventions
* A reactive.js thread speaking about performance
* A GNU thread speaking about licenses
* A FreeBSD thread enforcing code correctness or simplicity
* An OpenBSD thread on security of different implementations
-->

A developer will like it if the object model is close to real world domain
concepts and code is loosely coupled. A customer may think a product is good if
it can be understood and used in less than a minute. A product owner will find
the software healthy if it’s profitable. Different people see the same product
through different lenses. What’s irrelevant to one project is essential to
another.

As the project’s maintainer, you’re in a unique position to define the values of
your project’s community. In this chapter we’ve mainly discussed values related
to code quality: adhering to a style guide, maintaining test coverage, using CI,
and so on. A project that doesn’t honor these values is less likely to succeed,
but a project certainly won’t succeed if no one wants to work on it. Make sure
that the values you choose to cultivate resonate with potential contributors and
help make the project something you can be proud of.
