# Community

An active community is the most valuable asset for an Open Source project. A big
community can also be hard to keep organized, and keep up with, but following
certain practices we can maintain a healthy signal-to-noise ratio.


## Communication

Communication is vital. Think about an open source project were the latest
commit is from years ago, or an issue where the last question remains unanswered
for weeks. You find yourself in a dead end street, nothing to see here or about
to happen. You go in search of greener pastures. As maintainers we’ll want to
avoid conveying that feeling.

Communication, even if to only say “I don’t have the time right now, I’m sorry,
hopefully next week”, keeps the air flowing. It shows you care about feedback,
you keep the project in mind, and you are honest about availability. Keep the
channel always open, even when you can’t invest enough time in the project. It
goes a long way into building a trusting community.

There are different channels for different needs. We use:

* **Issue trackers** for concrete tasks that need to be done on the source code.
  This is, keep track of software bugs, desired features for future versions,
  concrete improvements to the code base, etc.
* **Wikis** as community maintained documentation, and how-to guides.
* **Forums and Q&A websites** (like StackOverflow), for answering specific
  questions users have about usage of the project.
* **Mailing lists and chat rooms** can be useful if there is activity. Otherwise
  they can turn into half empty restaurants, exposing a negative image for your
  project, they better not exist if that is the case.


## Encourage (the right amount of) participation

The project’s website and/or README file are the landing page for your audience.
Link to resources you use to interact between users and developers, and explain
how and why to use them. Describe why the project exists and how to use it.
Show how to contribute to it. Use clear and welcoming language, you are helping
your community become users of your projects, and helping them help you.

When the project is nascent, any kind of participation is useful. You can see
where people struggle, why does that happen, and what you could improve in your
software or documentation to make the on-boarding process smoother. When the
project is small one should celebrate each interaction: it is getting validated.

When the project gets popular, participation starts to be more of a liability.
Feature requests, help requests, bug reports, and patches land all in your
inbox, and it can get hard to manage. You may even feel guilty about not
curating that list/responding to the people timely as before. I believe this is
a nice problem to have, a problem nonetheless.

The most typical way of losing control of the issue tracker is when users use it
for questions on implementation details in their own software, or issues that
don’t cut it as software bugs. When that happens, politely ask them to move
their question where it belongs (StackOverflow for example).

I say “politely” so interaction is smooth and you increase the chance they
follow your advice; otherwise they might feel cheated because you didn’t solve
their problem, whoever problem this is, and they may insist you to act. You have
no time to waste in these type of arguments, being friendly helps.

Another common problem that results in clutter in the issue tracker is
irreproducibility. Users may be trying to show a legit problem with your
project, but with so little information it’s impossible to reproduce, or to
decide if it is actually a problem with your project at all or not. In this
case, ask them to provide more information. I personally link to
[yourbugreportneedsmore.info](http://yourbugreportneedsmore.info).

Twitter Bootstrap author Fat [draws an analogy with
puppies](https://www.youtube.com/watch?v=UIDb6VBO9os#t=1193): fun to grow and
play with while they are new and small, but more of a chore when they grow
bigger (watch out as they may grow bigger than your whole home). Steve Klabnik
[refers to this work as
“gardening”](http://words.steveklabnik.com/how-to-be-an-open-source-gardener):
you often and regularly pull the weeds out to keep it clean, in the particular
case he describes, the Ruby on Rails issue tracker.

Precooked responses for these common interactions can be a huge time saver. Copy
& paste a paragraph of text, press a button, and you took care of an issue. Some
examples I use:

> This question doesn’t belong in this issue tracker, as this is not an issue
> with factory_girl itself. Please post it in
> stackoverflow.com/questions/tagged/factory-girl. Closing this issue for now.

> This issue seems very specific to your application rather than with
> factory_girl itself. I suggest you ask about it in
> stackoverflow.com/questions/tagged/factory-girl, which will get attention from
> more people than in this issue tracker. Thanks!

Some issues get stale, with not even the requester chiming into it anymore. When
there’s not enough information it’s impossible to solve the issue. An example of
a response for these issues:

> Since it’s been two months, I hope things are working well now for you. I’ll
> close the issue until we can confirm it’s still happening. Happy to continue
> further discussion.

I also frequently paste a snippet of git commands to show [how to squash commits
together, and rebase on top of upstream’s
master](http://robots.thoughtbot.com/git-interactive-rebase-squash-amend-rewriting-history).

José Valim, maintainer of devise and elixir among others, uses a browser
extension that allows to post pre-cooked answers into GitHub Pull Requests with
the single press of a button. You can find the code in [GitHub: Jose vs
OSS](https://github.com/nashby/jose-vs-oss).

Repeating questions is a good symptom of something in your project that should
be simplified, documentation that needs a little more attention, better error
messages awaiting, etc. Before disregarding simple repeating questions with
variations of [RTFM](https://en.wikipedia.org/wiki/RTFM), try to ask for
feedback to someone you trust, or to take a step back and look at your project
with the eyes of a new comer. Do you see anything that is not clear enough? What
could this project do so that the odds of this question reappearing are lower?
Meanwhile, adding the question to a FAQ page can prove a good band aid. Being
able to link to it will already be helpful.


## When is it enough?

There are two rules we should keep in mind in any discussion.

**The bike-shed effect** (also called “Parkinson’s law of triviality”) states
that groups give disproportionate weight to trivial issues. For example, a
committee whose job is to approve plans for a nuclear power plant spends the
majority of its time on relatively trivial and unimportant but easy-to-grasp
issues, such as what materials to use for the staff bike-shed, while neglecting
the less-trivial proposed design of the nuclear power plant itself, which is far
more important but also a far more difficult and complex task to criticize
constructively.

When you see more activity than normal in a discussion over a superficial matter
(according to a threshold that works for you and your project), take one
decision and call it resolved. You will be saving everyone’s time. Everyone’s
but the time of the trolls, they’ll now have to search for another thread where
to continue their work. I’m personally ok with that.

**Goldwin’s law** states that as an online discussion grows longer (regardless
of topic or scope), sooner or later someone will compare someone or something to
Hitler or Nazism. You may find yourself in the unhappy need to quote it.

When it happens, it’s a reliable red flag of a low signal-to-noise ratio, this
is the miner’s canary of a conversation that went too far, a good moment to jump
out. Call the thread finished and whoever mentioned the Nazis automatically
loses the debate. Done! Link to [the Wikipedia
article](https://en.wikipedia.org/wiki/Godwin%27s_law) for extra fun.


## Harness the Chameleon Effect

“The Cathedral and the Bazaar” states in its 10th lesson:

> Treat all your contributors as if they are the most valuable resource, and
> they will respond by becoming your most valuable resource.

This is a description of the “Chameleon Effect” cognitive bias, also called
“unintentional mirroring”, our tendency to take on characteristics that have
been arbitrarily assigned to us.

This was studied in a training camp, where officers were about to instruct a
leadership development course for junior officers, deciding who would become
the next batch of leaders. The training officers were informed, based on ratings
by previous commanders, which trainees presented “high”, “regular” or “unknown”
command potential. Something neither trainers nor trainees knew was that
“command potential” scores were randomly assigned.

Four months later all trainees took a test based on the materials they learned
during the program, and it was found that trainees whom the training officers
thought had high potential, scored better on the test than their “unknown” and
“regular” counterparts. Being *labeled* as leaders resulted in improved exam
results.

Do your project a favor and treat all your contributors as if they are the most
valuable resource. They will respond by becoming your most valuable resource, if
they are not already.


## On feedback

Giving quality feedback and receiving feedback in a productive way is paramount.

When giving feedback it is good to:

* Keep in mind the review is of the code and never of a person.
* Phrase ideas in the form of questions. (“What do you think about doing X?”)
* Be explicit. Discussions over the wire have less bandwidth than in person, and
  need more context.
* Try to respond to every question and comment.
* Avoid flamewars (unless it’s your jam).
* Don’t assume the audience shares your experience or context. Avoid words like
  “basically”, “simply”, “clearly”, etc.

<!--
TODO: Would like to extend this section
TODO: Extensively quote Paul’s talk in RubyConf Argentina, it was all about this
-->

This is important for Pull Requests, for giving and receiving feedback in
general, and _most clearly_ for everyday life as well.


## Expectations and guilt

Businesses rely on your project. Software projects rely on it. People rely on
it. They ultimately rely on you, as the project’s owner/maintainer.

You are aware that if you put in three more hours of work you may be saving ten
people’s time next week, not to mention through the future, and that makes you
feel somehow responsible for that potential save.

An unintended regression could directly affect hundreds of people (add or remove
zeros with the popularity of your project).

People can be rude while complaining about errors or lack of features.

This has proven to be a significant weight on maintainers' shoulders, a feeling
so hard to deal with that leads to burnout and ultimately the abandonment of the
project.

In the Open Source world nobody owes anything to anyone. If anything, users owe
maintainers gratitude for publishing something that was and is useful to them.
Your code is being run in who knows how many computers and servers, you provided
work to many more companies you can even think of.

Let’s say you actually wasted your and people’s time by making a mistake, say,
by setting the wrong expectations, or introducing a bug you could have spotted
giving it a little more time. If we put wasted time on the right side of a scale
and gained time on the left side (from your work on the project until this
hypothetical mistake) chances are it is still uneven, looking straight up. A
mistake today doesn’t undo all your previous help and successes.

People’s expectations and needs will be different than what you set for yourself
and your project. You can try to channel and intersect that but never control or
absolutely agree on them.

We’ll be better maintainers if we are energetic. Negative feelings won’t help on
that, positive ones will. How to change how we feel is not topic for this book,
I hope at least to raise awareness of the feelings that may sprout from leading
an OSS project, as that in itself should help.

At the end of the day we should not worry about things that are out of our
control. And feel amazing about contributing value to the world.
