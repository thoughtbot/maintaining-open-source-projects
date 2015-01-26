# Community

An active community is the most valuable asset for an open source project. If
the community is also big it can be hard to keep organized and keep up with, but
following certain practices will help you maintain a healthy signal-to-noise
ratio across the wires.


## Communication

Communication is vital. Think about an open source project where the last
question remains unanswered for weeks in the issue tracker, and you can’t find
any activity in the public profiles of the maintainers. You find yourself on a
dead-end street. Nothing happens here, and there is no indication that anything
will happen soon. You would leave in search of greener pastures. As maintainers
we’ll want to avoid conveying that feeling to keep the userbase centralized.

Communication, even if to only say “I don’t have the time right now,
hopefully next week”, keeps things moving. It shows you care about feedback,
you keep the project in mind, and you are honest about availability. Keep the
channel always open, even when you can’t invest enough time in the project. It
goes a long way into building a trusting community.

There are many tools available to open source maintainers for communication,
each fulfilling a different purpose:

* **Issue trackers** for concrete tasks that need to be done on the source,
  such as: tracking software bugs; documenting desired features; and making
  concrete improvements to the code.
* **Wikis** for community maintained documentation and how-to guides.
* **Forums and Q&A websites** for answering specific questions users have about
  usage of the project.
* **Mailing lists and chat rooms** for general talk.

If any of these channels have little activity, they can seem like half empty
restaurants, exposing a negative image for your project. The project will be
better off not having them when that is the case.


## Encourage (the right amount of) participation

The project’s website or README file are the landing page for your audience.
Link to resources you use to interact between users and developers, and explain
how and why to use them. Describe why the project exists and how to use it.
Show how to contribute to it. Use clear and welcoming language, you are helping
your community become users of your projects, and helping them help you.

Any kind of participation is useful to your nascent project. You can see
where people struggle, why they struggle, and what you could improve in your
software or documentation to make the onboarding process smoother. In the early
stages each interaction should be celebrated: your project is getting validated.

When the project gets popular, participation starts to be more of a liability.
Feature requests, help requests, bug reports, and patches all land in your
inbox, and it can get tough to manage. You may even feel guilty about not
responding to people as timely as you could before. I believe this is
a nice problem to have, a problem nonetheless.

Many users start to use the issue tracker for questions around implementation
details in their own software, or issues that don’t cut it as software bugs, and
when that happens your inbox and issue tracker start to suffer. To avoid this,
politely ask them to move their question where it belongs.

You will decide when to move discussions out of the issue tracker. Stack Overflow
won’t be helpful when you have a small audience, in that case the issue tracker
is the right place to ask. When those questions begin to be answered organically
by members of your community may be a good moment to grow onto other platforms.

I always suggest to interact “politely” so interaction is smooth and you
increase the chance they follow your advice. Otherwise they might feel cheated
because you didn’t solve their problem, whoever problem this is, and they may
insist you to act. You have no time to waste in these type of arguments, being
friendly helps.

Another problem that commonly results in clutter in the issue tracker is
irreproducibility. Users may be trying to show a legit problem with your
project, but with so little information it’s impossible to reproduce or decide
if it is actually a problem with your project at all. In this case, ask them to
provide more information. I personally link to
[yourbugreportneedsmore.info](http://yourbugreportneedsmore.info).

Steve Klabnik [refers to this work as
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
there’s not enough information it’s impossible to solve. An example response for
these cases:

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
variations of RTFM (short for “read the freaking manual” and its variations),
try to ask for feedback to someone you trust, or to take a step back and look at
your project with the eyes of a new comer. Do you see anything that is not clear
enough? What could this project do to lower the odds of this question appearing
again?  Meanwhile, adding the question to an FAQ page can prove a good band aid.
Being able to link to it will already be helpful.


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
(according to a threshold that works for you), take one
decision and call it resolved. You will be saving everyone’s time. Everyone’s
but the time of the trolls, they’ll now have to search for another thread where
to continue their work. I call that a success.

**Goldwin’s law** states that as an online discussion grows longer (regardless
of topic or scope), sooner or later someone will compare someone or something to
Hitler or Nazism. You may find yourself in the unhappy need to quote it.

When it happens, it’s a reliable red flag of a low signal-to-noise ratio, this
is the miner’s canary of a conversation that went too far, a good moment to jump
out. Call the thread finished and whoever mentioned the Nazis automatically
loses the debate. Link to [the Wikipedia
article](https://en.wikipedia.org/wiki/Godwin%27s_law) for extra fun.


## Harness the Chameleon Effect

“The Cathedral and the Bazaar” states in its 10th lesson:

> Treat all your contributors as if they are the most valuable resource, and
> they will respond by becoming your most valuable resource.

This is a description of the “Chameleon Effect” cognitive bias, also called
“unintentional mirroring”, our tendency to take on characteristics that have
been arbitrarily assigned to us.

This was [studied in a training
camp](http://psycnet.apa.org/journals/apl/67/2/194/) where officers were about
to instruct a
leadership development course for junior officers, deciding who would become
the next batch of leaders. The training officers were informed, based on ratings
by previous commanders, which trainees presented “high”, “regular” or “unknown”
command potential. Something neither trainers nor trainees knew was that
“command potential” scores were randomly assigned.

Four months later all trainees took a test based on the materials they learned
during the program, and it was found that trainees whom the training officers
thought had high potential, scored better on the test than their “unknown” and
“regular” counterparts. Being *labeled* as leaders resulted in actual improved exam
results.

Do your project a favor and treat all your contributors as if they are the most
valuable resource. They will respond by becoming your most valuable resource, if
they are not already.


## On feedback

I find being aware of cognitive biases to be most useful while giving and
receiving feedback in a productive manner for both parties. A [cognitive
bias](https://en.wikipedia.org/wiki/Cognitive_bias) is a pattern of deviation in
judgment, from which inferences about other people and situations may be drawn
in an illogical way.

[Fairness
bias](http://www.amazon.com/Sway-Irresistible-Pull-Irrational-Behavior/dp/0385530609),
for example, describes our tendency to seek balance. If a supplier keeps an open
line of communication with an unhappy customer about a faulty product, the
customer will respond more favourably regardless of the outcome. The need to be
heard takes more relevance than the need of the product working correctly. We
can apply this to code revision. Asking instead of asserting makes the
contributor feel heard and valued. If we are the authors we can harness this
effect even before conversation starts, by explaining beforehand the rationale
behind our work.

[Loss aversion](https://en.wikipedia.org/wiki/Loss_aversion) describes people’s
tendency to strongly prefer avoiding losses to acquiring gains. More concretely,
giving you 5 dollars won’t make you extremely happy but if I take $5 from you
you will get upset. This relates with saying “no” to a Pull Request. As a
reviewer, giving a clear explanation of the reasons of your rejection will
probably help avoiding a longer discussion on the reasons why the patch should
or should not be merged. As a contributor you should know that however strongly
you feel your patch should be merged in, if you were the reviewer or another
external party you would probably not feel so strongly about it.

Daniel Goleman identifies an [online negative
bias](https://www.youtube.com/watch?v=TBCiSAJ20Wc): what you thought was a
neutral message can be read as hostile, and what you thought was positive may be
assumed to be neutral. You can avoid this by using positive language instead of
neutral. Written discussions have less bandwidth, they need to be more explicit
and include more context than conversations over the phone or in person.

We already covered the [Chameleon
Effect](https://en.wikipedia.org/wiki/Pygmalion_effect). Remembering everyone
knows something you don’t yet know will help you treating everyone with care,
making them feel valuable to your project and inspiring further contributions.

Wrapping up, while giving feedback it’s good to:

* Start with appreciation for the work and input.
* Ask, don’t tell. Phrase ideas as questions.
* Be explicit. Discussions over the wire have less bandwidth than in person, and
  need more context.
* Try to respond to every question and comment.
* If you disagree strongly, consider giving it a few moments before responding.
* Don’t assume the audience shares your experience or context. Avoid words like
  “basically”, “simply”, “clearly”, etc.
* Avoid flamewars (unless it’s your thing).
* Review is of the code, not people. Keep this in mind as a contributor too.


## Expectations and guilt

Businesses rely on your project. Software projects rely on it. People rely on
it. They ultimately rely on you, the project owner.

You are aware that if you put in three more hours of work you may be saving ten
people’s time next week, not to mention through the future, and that makes you
feel somehow responsible for the potential save.

An unintended regression could directly affect hundreds of people (add or remove
zeros with the popularity of your project).

People can be rude while complaining about errors or lack of features.

These situations have proven to be a significant weight on many maintainers' shoulders, a
feeling so hard to deal with that leads to burnout and ultimately the
abandonment of the project. Here is a list of a few examples:

* [GitHub meta-issue to “help open-source maintainers stay
    sane”](https://github.com/isaacs/github/issues/167)
* [Jacob “Fat” Thornton’s talk: What Is Open Source And Why Do I Feel So
    Guilty?](https://www.youtube.com/watch?v=UIDb6VBO9os)
* [docpad maintainer quits due to burn
    out](https://github.com/docpad/docpad/issues/821)
* [capistrano maintainer quits due to burn
    out](https://groups.google.com/forum/#!msg/capistrano/nmMaqWR1z84/hdjAGIGbwdYJ)
* [Google Talk: How Open Source Projects Survive Poisonous
    People](https://www.youtube.com/watch?v=Q52kFL8zVoM)
* [Phillip Roberts's blog post: Creation and
    Vulnerability](http://latentflip.com/creation-and-vulnerability/)
* [Basecamp blog post: Open Source Guilt and
    Passion](https://signalvnoise.com/posts/3349-open-source-guilt-passion)

In the open source world nobody owes anything to anyone. If anything, users owe
maintainers gratitude for publishing something that was and is useful to them.
Your code is being run in who-knows how many computers and servers, you provided
work to many more companies you can even think of.

Let’s say you actually wasted your and people’s time by making a mistake, say,
by setting the wrong expectations, or introducing a bug you could have spotted
giving it a little more time. If we put wasted time on the right side of a scale
and gained time on the left side (from your work on the project until this
hypothetical mistake) chances are it is still uneven, looking straight up. A
mistake today doesn’t undo all your previous help and successes.

We’ll be better maintainers if we are energetic. Negative feelings won’t help on
that, positive ones will. How to change how we feel is not topic for this book,
I hope at least to raise awareness of the feelings that may sprout from leading
an OSS project, as that in itself should help.

People’s expectations and needs will be different than what you set for yourself
and your project. You can try to channel and intersect that but never control or
absolutely agree on them.

At the end of the day we should not worry about things that are out of our
control. And feel amazing about contributing value to the world.
