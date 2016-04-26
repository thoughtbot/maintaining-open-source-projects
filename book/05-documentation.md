# Documentation

## README

The first interaction new users have with your project is its website or README
file. Either document acts as the “landing page”, and serves as an onboarding
ramp for users and contributors alike.

People discovering your software need to learn the essential information. In
this chapter many different documents are covered with specific pieces of
knowledge. Sometimes it makes sense to condense certain documents into the
README file, while in other cases it’s better to keep them separate and link to
them from this file or website.

The README file should cover:

* Project name and brief description
* Mission statement
* Communication channels
* Installation instructions
* Usage examples
* Running tests
* High-level overview
* API documentation
* License
* Contributing

The project name is self-explanatory. The mission statement should be short and
precise. You can assume a minimally informed reader, as someone who doesn’t know
what key concepts used by your project mean probably won’t understand the rest
of the document anyway. After reading your mission statement users of the
library should be well informed about how useful the project is to their needs,
helping them take the decision of learning more about it or looking for better
suited alternatives.

“README” is a deliberately capitalized filename to make it easy to identify,
drawing users who might not know where to find documentation to read it. Also,
in Linux/Unix based environments, the `ls` command lists files according to
their ASCII order by default, giving relevance to the README over the lowercase
names in the same directory.

Three examples of excellent README files to draw inspiration from are:

* [Sinatra’s], which documents the API in its entirety. README translations are
    versioned and included in the root path of the project.
* [FactoryGirl’s] shows some very basic details and links out to the many
    relevant resources.
* [SimpleForm’s] fully documents the API too.

[Sinatra’s]: https://github.com/sinatra/sinatra#sinatra
[SimpleForm’s]: https://github.com/plataformatec/simple_form
[FactoryGirl’s]: https://github.com/thoughtbot/factory_girl

People might be visiting your project’s page because they have a problem. If you
know of common issues that happen while getting started, call that out in a
section of its own and provide a solution or workaround. A great example of one
such issue is `capybara-webkit`’s dependency that cannot be satisfied by the
project’s environment. thoughtbot [added a notice] about this particular
installation step in the README.

[added a notice]: https://github.com/thoughtbot/capybara-webkit#qt-dependency-and-installation-issues

Help people use, like or contribute to your software with a welcoming,
informative landing page.


## Overview

Imagine you find a project that seems good for your goals, and want to see in
more specific detail if you can make it work, making configuration adjustments
along the way. You will have questions like: “what are the bigger modules for
this software?”, “how do these pieces interact with each other?”, and “how does
this submodule exactly work?”. You don’t yet want to dig deep into the code but
instead get a bird’s eye view of the architecture. These are the questions the
Overview document covers.

The overview doesn’t need to show every file or subdirectory of your project,
only the most important concepts. Never assume that what one script does, how
the files in a directory interact with each other, or where to find a piece of
code is always clear to a newcomer. Making such assumptions makes _you_ the
onboarding bottleneck, as you will personally need to answer questions, and you
will not always be as readily available as documents freely published on the
internet.

The overview could start off explaining a “top level” explanation of the
project’s structure, and nothing more. You can go into detail as you have more
availability, but a handful of questions that are more frequently asked should
be enough to start with. As you answer questions in issue trackers or mailing
lists, you can fill in gaps in your Overview document. The concrete questions
will motivate you to write this piece of documentation, and they will also guide
you through the paths that are in need of more clarification.

If you use other libraries or frameworks, the Overview section is a good place
to link to their documentation as well.

Two notable Overview document examples:

* [subversion] has a web page with sections: Participating in the community,
    Theory and documentation, Code to read, Directory layout, Branch policy,
    Documentation, Patch submission guidelines.
* [OpenHatch] describes in one paragraph each different subsystem and links to
    external resources for each.

[subversion]: https://subversion.apache.org/docs/community-guide/general.html
[OpenHatch]: http://openhatch.readthedocs.org/en/latest/getting_started/project_overview.html


## Installing

The Installing document details every step needed for the project to run on a
new computer. It details how to find, install, compile, require, import and
export its dependencies in supported environments.

The repository should also contain a scripted version of these details, which
automates required steps for newcomers. A `Makefile` or general `bin/setup`
script should set up dependencies and run tests to make sure the project is
ready to be worked on. Specify at the beginning of your README how to run this
script, so that in no time a new user can interact with the software.

Installation instructions are an essential component of documentation for a
software project, because even people with the intentions, skills and curiosity
to participate will struggle setting up a project’s dependencies. No matter how
much stamina they have to work through technical problems, if they can’t install
the software, they will be impeded from running, using and applying changes to
your project.

Make the setup as easy as you can, lowering the barrier of entry for users and
contributors alike.


## News

When people upgrade a project they need to know what has changed. What are the
relevant changes between version X and Y? What are new APIs? How did existing
APIs change? Did it drop any API that is being used?

A NEWS or HISTORY file in the root path for the project lists user-visible
changes that have been happening and you consider worth mentioning. This is not
a list of every commit that happened in between versions; a user doesn’t need to
know a typo in the documentation was fixed, or whitespace inconsistencies where
addressed. User facing changes are enough.

[GNU coding standards] suggest adding the relevant changes for each release to
the top of the file, detailing the version they pertain to, and the date of each
release. They also advise not to discard old items, so that a user upgrading can
see what has changed since any previous version.

[GNU coding standards]: https://www.gnu.org/prep/standards/html_node/NEWS-File.html

You can see an example of informative [HISTORY file in rack’s codebase].

[HISTORY file in rack’s codebase]: https://github.com/rack/rack/blob/master/HISTORY.md


## Code of Conduct

A code of conduct details principles, standards, or rules of behaviour that
guide the decisions and procedures of the team. It informs the members of the
group with different social values and communication styles of expected
behavior, ensuring to respect the rights of all members. The document needs to
inform in clear language what is expected of each member, and provide a
mechanism for resolving conflicts in the community when they arise.

[Contributor-Covenant.org] is a sample code of conduct for open source projects.
It links to external resources on code of conducts, and the discussions and
decisions are documented in its [GitHub repository].

[Contributor-Covenant.org]: http://contributor-covenant.org/
[GitHub repository]: https://github.com/ContributorCovenant/contributor_covenant

Unlike code, where it is expectable to have bugs or unexpected outcomes, it's
better to proactively put policies in place when dealing with people. Misconduct
is to be actively prevented.


## Contributing

A CONTRIBUTING file in the root directory for the project explains how
collaborators can contribute their work to the project. Some instructions to
specify follow:

* Who are the team members, and how to contact them
* How to update documentation
* How to answer questions
* How to report bugs
* Link to the style guide
* Link to the code of conduct
* Where to discuss new features
* How to submit patches

It should be very clear in this document that security issues shouldn’t be
brought up in public channels but on private ones, to prevent malicious hackers
(“black hats”) from exploiting vulnerabilities before fixes are released. We’ll
speak more about security considerations in the “Versioning & Releasing” chapter
of this book.

GitHub acknowledges the existence of a `CONTRIBUTING.md` file in the root path
of the repository, and adds a link to it when a contributor visits the form to
file a new issue or submit a pull request.

You may add whatever you find useful to tell people thinking of contributing to
your project, before or while they are doing so. For example, the [devise “Bug
reports” wiki page][devise-bug-reports] goes into great detail on what
constitutes a bug in their project, and how it should be reported. By asking
people to double check it is a malfunction before submitting a report, and that
they have enough information for maintainers to take action on it, they keep the
large amounts of issues better curated. This helps the team focus on the most
important issues to be addressed.

[devise-bug-reports]: https://github.com/plataformatec/devise/wiki/Bug-reports

You might want to define in this file a section titled “your first contribution”
to ease the onboarding process for newcomers.


## Releasing

Like the “Installing” document, this natural language description of the release
process for a new version should have an accompanying script that executes those
commands.

Example steps for releasing a new version for an open source project are:

1. Update version number in the `lib/version` file
2. Update `NEWS.md` to reflect the changes since last release
3. Commit changes
4. Tag the release and cryptographically sign the tag: `git tag -s vVERSION`
5. Push changes: `git push && git push --tags`
6. Build and publish the package: `make build`
7. Announce the new release, making sure to say a big “thank you” to
   contributors who helped with this version.

Ruby on Rails has a great example of a [releasing document].

[releasing document]: https://github.com/rails/rails/blob/master/RELEASING_RAILS.md


## Wiki

The wiki is a perfect place for a FAQ section for the software. You can start
it with a mostly blank FAQ template with a few questions and answers, so there
will be an obvious place for people to contribute questions and answers after
the project is under way.

As the maintainer you don’t personally _need_ this documentation, because you
already understand most of your project, if not every corner of it. It can be
difficult to see things from a newcomer’s point of view, and describe steps that
seem obvious to you. You will need the users coming up with their questions, and
freely updating the documentation as they see fit. A wiki is the perfect
implementation of such a protocol.

As a result of its independence and complete freedom to change, it will have
different styles and ways of writing. Its absolutely open nature leaves room for
potential vandalism that won’t be immediately visible. It will also probably go
out of date as you release new versions of the project, because it’s not
versioned and tested as code is. Make sure the intended audience is clear at all
times to all editors. Document the wiki guidelines in the wiki itself and point
people to them.

You will want to curate it as much as you do the code and its documentation,
with a frequency that makes the most sense to you and your community. Make sure
to set the right expectations of relevance for the wiki, so users know how much
to rely on it, and feel comfortable editing it when they know it is not up to
date.

---

Technical writing is still writing. As if you were writing an essay or blog
post, you should strive to grab the attention of your reader early on. Don’t
make your users think more than they need, onboard them instead with a great
landing page that allows them to drill into the details they need.
