# Versioning & Releasing

Through versioning, software is assigned names or numbers to its unique states
of development. These numbers are assigned in increasing order and correspond to
new developments in the project.

In systems with many dependencies, releasing new package versions can be
challenging. When dependency specifications are too tight, version lock might
happen, the inability to upgrade a package without having to release new
versions of dependent packages. When dependency specifications are too loose,
more future versions might be assumed to be compatible than desired. “Dependency
hell” happens when version lock or promiscuity prevents a project from safely
moving forward.

Software is often tracked using two different software versioning schemes: an
internal version number that increments many times in a single day, such as a
revision control number, and a released version that typically changes far less
often, such as [Semantic Versioning] or a project code name.

[Semantic Versioning]: http://semver.org/

## Semantic Versioning

Semantic Versioning (SemVer) is a standard that defines rules for changing
software version numbers, intended to minimize the pitfalls of version lock and
promiscuity. Under this scheme, version numbers and the way they change convey
meaning about the underlying code and what was modified from one version to the
next.

Semantic Versioning uses a three-part number, `MAJOR.MINOR.PATCH`. They are
incremented according to the following rules:

* `MAJOR` for breaking changes (backward incompatible changes)
* `MINOR` for new features (backward compatible additions)
* `PATCH` for bugfixes (backward compatible changes)

A change is backward compatible if it’s API compatible with the last release.

Additional labels for pre-release and build metadata can be used after the
`PATCH` number.

For example, software that relies on version 2.1.5 of an API is compatible with
version 2.2.3, but not necessarily with 3.0.1.

SemVer provides a shared language for library authors and users. It simplifies
the upgrade process in most cases, and it makes maintainers think twice before
breaking their APIs.

SemVer might sound simpler than it is, though. Jeremy Ashkenas, author and
maintainer of CoffeeScript, backbone.js, and underscore.js among others, [states
that SemVer is an oversimplification][jeremy-on-semver] of an inherently human
problem:

[jeremy-on-semver]: https://gist.github.com/jashkenas/cbd2b088e20279ae2c8e

> If your package has a minor change in behavior that will “break” for 1% of your
> users, is that a breaking change? Does that change if the number of affected
> users is 10%? or 20? How about if instead, it’s only a small number of users
> that will have to change their code, but the change for them will be difficult?
> — a common event with deprecated unpopular features.
>
> Ultimately, SemVer is a false promise that appeals to many developers — the
> promise of pain-free, don’t-have-to-think-about-it, updates to dependencies. But
> it simply isn’t true.

For end user programs, versioning rules don’t matter as much. You might have
lost track of what version your web browser is. [MAME] doesn't intend to release
a version 1.0 of their emulator, with the argument that it will never be truly
“finished” because there will always be more arcade games. Version 0.99 was
followed by version 0.100. After eight years of development, eMule reached
version 0.50a.

[MAME]: http://mamedev.org/oldrel.html

Releasing new versions can be a powerful marketing move. Who doesn’t like to
hear of shiny new releases with new features for Christmas or on an annual
conference? It should be easy to talk about it too! “Have you heard of version
5? They just announced it! Grab it while it’s hot!” There can also be [branding
or political meaning] in version changes.

[branding or political meaning]: https://en.wikipedia.org/wiki/Software_versioning#Political_and_cultural_significance_of_version_numbers

Inform the version in the package, in the documentation, and also in the source
code itself, so that it can be read by running software. This way, a developer
using the library can access it dynamically, and write software compatible with
different versions of your project.

## Publishing a new release

1. Checkout the branch you want to make a release of (typically `master`)
1. Update the project’s version in the source code and documentation accordingly
1. Update `NEWS.md` to reflect the changes since the previous release
1. Commit the changes
1. Tag the release commit and cryptographically sign the tag (`git tag -a -s vVERSION`)
1. Publish the release commit and tag (`git push && git push --tags`)
1. Build and publish the package (`make build`)
1. Announce the new release, making sure to say a big “thank you” to
   contributors who helped with this version.

There is no technical requirement to tag releases, but if you need to refer to
version 2.2.7 any time from now, it’s easier to use the version number than to
hunt for the corresponding commit’s hash.

Once published, a release does not change.

We published a [template document detailing the steps to release a new rubygem
in GitHub][releasing].

[releasing]: https://github.com/thoughtbot/templates/blob/master/RELEASING.md

### Maintenance releases

You can maintain diverging major versions of your project and release them
independently by keeping as many release branches as versions you need to keep
track of. If you release 1.1, 1.2, and then 2.0, and you still need to
support the 1.x series with security fixes, you’d need a branch to put the
maintenance releases on for them.

The Pull Requests you receive will typically have the main `master` branch as
the base, but if they target a previous version, they’d branch off of the
corresponding base branch, `v1.2-stable` for instance.

## Release version 1.0

Determining when a project can be considered stable isn’t a matter of time but
maturity. Most projects eventually reach a point where significant changes
become less frequent, and the development direction becomes clearer.

You might have your definition of “stable” for your project. For instance, if
you have a clear picture of the problem you are trying to solve and the steps
needed to solve successfully, you might call it ready when you complete such
steps.

In his [Producing Open Source Software book][producing-oss], Karl Fogel states
we shouldn’t be afraid of the public scrutiny that comes with an official
release:

[producing-oss]: http://producingoss.com/

> Don’t be afraid of looking unready, and never give in to the temptation to
> inflate or hype the development status. Everyone knows that software evolves by
> stages; there’s no shame in saying “This is alpha software with known bugs. It
> runs, and works at least some of the time, but use at your own risk.” Such
> language won’t scare away the kinds of developers you need at that stage. As for
> users, one of the worst things a project can do is attract users before the
> software is ready for them. A reputation for instability or bugginess is very
> hard to shake, once acquired. Conservativism pays off in the long run; it’s
> always better for the software to be more stable than the user expected than
> less, and pleasant surprises produce the best kind of word-of-mouth.

If it’s not so clear for you, a way to gauge when a project is stable is by
monitoring how others use the code. If you are lucky, users will ask you
questions about the project, or blog about it. You can do GitHub code searches
to see real projects using the library, gaining insight into potential API
changes to better suit users’ needs.

SemVer states that when a library is in major version zero (0.y.z) it’s under
initial development, and anything may change at any time. The public API is not
yet stable. If you’re changing the API frequently, you should either still be in
version 0.y.z or on a separate development branch working on the next major
release.

Version 1.0.0 denotes a stable public API, and users may write programs that
depend on that contract. SemVer describes situations in which a project should
probably be at least on version 1.0:

* Project is used in production
* Project reached a stable API
* Maintainers worry about backward compatibility

While 1.0 is a statement about the stability of the API and according to SemVer
it doesn’t have to do with documentation, good documentation should exist for a
1.0 project. Strictly speaking you may put off improved documentation, better
tests, sample code, a logo, and any other features that open source projects
often provide; those are not required by SemVer for v1.0.

Whatever you are working on, let it see the daylight as soon as you can. Define
and communicate a concrete goal, and when you achieve it, call it 1.0 and
publish it.

## Releasing new versions

You may publish new releases when the project is perfect in most aspects, or
when it’s immediately relevant.

The first version of iPhone didn’t have copy and paste functionality. That flow
wasn’t polished, so Apple didn’t release it: the first iPhone didn’t allow you
to copy and paste. Everything that went out in that release was as good as they
could make it.

On the other hand, the first Rails version lacked quality in many aspects, but
it was very relevant. If David Heinemeier Hansson had waited for perfection, we
probably wouldn’t have Rails as we know it today.

Your project might not need to release with any periodicity whatsoever, staying
mostly stable instead. OpenSSL for example publishes most releases when a
security vulnerability is fixed.

If you don’t release often though, you might encounter inertia before preparing
new releases. If this is the case, you might consider [doing it more
often](http://martinfowler.com/bliki/FrequencyReducesDifficulty.html).

### Release early. Release often.

With time-based releases you obtain early and frequent releases, creating a tight
feedback loop between developers and testers or users. With a periodic release
schedule, contributions are regularly made public.

Pick a reasonable time frame for your project, so that you get a good compromise
between releasing very often and very slowly (every time you add a commit versus
every year, for instance). If you release too often you might annoy people when
they upgrade; if you do it too infrequently, fixed bugs won’t reach the majority
of your users.

Security fixes or bugs that block most people from using the project should be
released as soon as possible, regardless of schedule.

On the other hand, sometimes there might be no changes to publish, and when
a period finishes there is no need to release.

## Security releases

A vulnerability report shouldn't be published until its fix has been released.
When you get a new report, keep it private.

Before you start fixing the bug, you should request a CVE identifier. CVE stands
for "Common Vulnerabilities and Exposures". You can request an id from any of
the [CVE Numbering Authorities](https://cve.mitre.org/cve/cna.html). CVE
identifiers allow us to more easily talk about security issues: "issue CVE-2009-3555"
instead of "the OpenSSL vulnerability, from like 2009, the DoS one. No, not that
one."

CVE allows multiple vendors, products, and customers to track accurately
security vulnerabilities and make sure they are dealt with. CVE Identifiers are
from an international information security effort that is publicly available and
free to use.

The CVE report specifies:

* The project (name and related links)
* A description of the vulnerability
* Affected and fixed versions
* What’s the vulnerability’s impact (how many people are affected and how)
* What is the upgrade process
* What workarounds can users take, if any
* Credits
* Any other kind of relevant information you can provide

An example follows:

```no-highlight
Cross-site request forgery (CSRF) vulnerability in doorkeeper 1.4.0
and earlier allows remote attackers to hijack the user's OAuth
authorization code. This vulnerability has been assigned the CVE
identifier CVE-2014-8144.

Versions Affected:  1.4.0 and below
Fixed Versions:     1.4.1, 2.0.0

Impact
------

Doorkeeper's endpoints didn't have CSRF protection. Any HTML document
on the Internet can then read a user's authorization code with
arbitrary scope from any Doorkeeper-compatible Rails app you are
logged in.

Releases
--------

The 1.4.1 and 2.0.0 releases are available at
https://rubygems.org/gems/doorkeeper and
https://github.com/doorkeeper-gem/doorkeeper.

Upgrade Process
---------------

Upgrade doorkeeper version at least to 1.4.1.

Workarounds
-----------

There are no feasible workarounds for this vulnerability.

Credits
-------
Thanks to Sergey Belov of DigitalOcean for finding the vulnerability,
Phill Baker of DigitalOcean for reporting and fixing it, and Egor
Homakov of Sakurity.com for raising awareness.
```

Work on the vulnerability in private. Only publish the fixes when you release
new patched versions of your project. This keeps people from learning about the
vulnerability before it’s been fixed, potentially taking advantage of affected
deploys of your software. The goal is to reach most users of your project so
they can upgrade as soon as possible.

If you take too long to release, the attacker might announce it before you have
a fix ready. The person who reported the vulnerability is the “white hat”. There
may already be “black hats” taking advantage of it. Some CVE reports [go public
after two weeks since an id was
granted](https://github.com/RedHatProductSecurity/CVE-HOWTO#distrosvsopenwallorg),
minimizing this period of potentially unknown vulnerability.

After you get the CVE identifier and report, the fix and releases ready,
publish this information to security lists and users of your library as
widely as you’re able to.

Some examples for Ruby projects:

* oss-security@lists.openwall.com mailing list.
* [ruby-security-ann Google group](https://groups.google.com/forum/#!forum/ruby-security-ann).
* [ruby-advisory-db GitHub project](https://github.com/rubysec/ruby-advisory-db).

## Deprecation cycles

Deprecating existing functionality is a normal part of software development and
is often required to make forward progress.

Before you completely remove the functionality in the next major version, there
should be at least one minor release that contains the deprecation notice so
that users can smoothly transition to the new API. Then you can safely change
the API, and release new versions, numbered as detailed in [Semantic
Versioning].

When deprecating part of your public API consider:

1. updating your documentation to let users know about the change
2. publish a new minor release with the deprecation notice in place

## Quitting as a maintainer

It is natural for the founder of an open-source project to move on to other
interests. Abandoning the project can be very damaging to the community.
Whenever possible, the owner should leave the project to new maintainers.

Abandoning an open source project should be done similarly to how a company
handles the end of life of any product, minimally affecting its customers.

When you’d like to let go of a project you maintain, look after someone
competent in the community who may be willing to take it over. If you
find someone, it will be beneficial for current users, for your reputation and
the organization behind the project, and also for the new maintainer.

This step may sound hard, but it comes for free if you create a welcoming
environment, where new contributors are added to the team as they express
interest and show sufficient skills. Involving outside developers in the running
of your project early on is healthy for the project and creates a pool of people
that you can turn the project over to when needed.

The [lottery factor] (more dramatically known as the bus factor) of a project is
the number of team members that can be lost from a project before it collapses
due to lack of competent people. Bram Moolenaar, maintainer of the Vim text
editor since 1991, [stated 23 years later] that the community should “keep him
alive” for the Vim project to succeed in the foreseeable future.

[lottery factor]: https://en.wikipedia.org/wiki/Bus_factor
[stated 23 years later]: http://www.binpress.com/blog/2014/11/19/vim-creator-bram-moolenaar-interview/

A better outcome for the health of the project was set in a different example,
when Joe Ferris announced he was looking for new maintainers for
`backbone-support` in the form of a [Pull Request to the
project](https://github.com/thoughtbot/backbone-support/pull/27). Eduardo
Gutierrez saw the Pull Request and stepped up as new maintainer.

Sometimes you might stop development on a project because it is not relevant
anymore, for example, because new better tools are available that solve the
problem for which your project existed. In that case, you can announce the
reasons it is not maintained anymore in the documentation, with relevant links
for current users.

When you find new maintainers, give them access to the repository or transfer it
to their account, and do the same for related websites and services, social
media and email accounts, grant package manager permissions so they can release
new versions, etc. Announce the transfer to your community, leave the community
happily intact, be proud of the work you have been doing and just done, and
enjoy the time you will spend on new ventures.
