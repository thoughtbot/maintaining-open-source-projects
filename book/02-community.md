# Community

An active community is the most valuable asset for an open source project. But
like the code itself, it can also be one of its biggest liabilities. A community
that grows quickly can get out of hand, making it harder for you to stay
organized and keep up with. Questions and feature requests will begin queueing
up. While participating in one thread, you could lose track of what's being
discussed in another, where soon they will demand your attention.

In this chapter we describe practices that will help maintain a healthy
signal-to-noise ratio, while keeping everyone’s expectations in check.


## Communication channels

Imagine an open source project where the most recent question in the issue
tracker remains unanswered for weeks. You think of how else to contact people,
but even a search for the maintainer’s public profiles finds no activity. You
find yourself on a dead-end street: nothing is happening, and there is no
indication that anything will happen soon. You would leave this place in search
of greener pastures, trying to find another project that, even if not as useful
for you as this one looks like, has an active community sustaining it.

As maintainers, we want to avoid this feeling of abandonment. Communication is
vital to keep the air fresh, even if to only say “I don’t have the time right now,
hopefully next week.” It shows you keep the project in mind, you care about
feedback, and you are honest about availability. Always keep the channel open,
even when you can’t invest enough time to move forward any issue that’s being
treated. It goes a long way into building a community that trusts you and your
project.

There are different communication channels for different needs:

* **Issue trackers** for concrete tasks that need to be done on the source,
  such as tracking software bugs, documenting desired features, and making
  concrete improvements to the code.
* **Wikis** for community-maintained documentation and how-to guides.
* **Forums and Q&A websites** for answering specific questions users have about
  the project.
* **Mailing lists and chat rooms** for general talk.

If any of these channels present little activity, your project can come across
like a half empty restaurant, exposing a negative image. If this is the case, it
will be better off not having one or more of these features enabled until your
community has grown larger and is ready to leverage them.

## Answering questions

Any participation is useful to a nascent project. Through users' questions you can see where
people struggle, why they struggle, and how the software or documentation could
improve to make the onboarding process smoother. In the early stages you should
celebrate each interaction because they mean the project is getting validated.

To foster participation you should acknowledge contributors routinely. Thank them for the time they
spend providing feedback and code. Thank them publicly and be explicit about
how their contributions are useful to you, the project and the community. People
like being appreciated, and are more likely to continue contributing if you show
appreciation for their work.

When the project gets popular, however, participation starts to be more of a liability.
Feature requests, help requests, bug reports, and patches all land in your
email, which will make it tougher to manage. You might even feel guilty about not
responding as timely as you used to. How do we respond
when there is more input than we can go through in a timely fashion?

One of the first causes of a quickly growing inbox is people using the issue
tracker for questions around implementation details in their software or for
things that aren’t software bugs. You can avoid this by politely asking users to
move their messages, for example to Q&A websites or mailing lists.

It is not always better to move discussions out of the issue tracker though. For
example, a Q&A website like StackOverflow won’t be helpful when you have a small
audience. In this case, the issue tracker is the right place to ask. A good sign
that the project is ready to grow onto other platforms is when members of your
community organically start responding to issues. There’s a better chance that
questions in other channels will get responses as well.

By always interacting politely communication tends to flow smoothly. This, in
turn, increases the chance users will follow your suggestions. On the other
hand, if you are short and terse, users might feel you didn’t solve a problem
you could have solved, and may insist you act. Arguing where a question belongs
is not productive, and being friendly helps avoid it.


## Issue tracker gardening

A common problem that results in clutter in the issue tracker is
irreproducibility. Users may be trying to show a legit issue with your project,
but without enough information to reproduce it, which makes it hard to decide if
it is indeed a problem with your project. In this case, ask them to provide more
information. You might link to [bug report writing guidelines] for a curated,
external explanation around reproducibility.

[bug report writing guidelines]: https://developer.mozilla.org/en-US/docs/Mozilla/QA/Bug_writing_guidelines

Steve Klabnik, who helped tend the Ruby on Rails issue tracker, [refers to this
type of work as “gardening”]: you regularly pull out the weeds to keep it clean.

[refers to this type of work as “gardening”]: http://words.steveklabnik.com/how-to-be-an-open-source-gardener

Using canned responses for everyday interactions is a time saver. Copy & paste a
paragraph of text, press a button, and you took good care of an issue. An
example we use:

> This issue seems specific to your application rather than with factory_girl
> itself. I suggest you ask about it in:
>
> https://stackoverflow.com/questions/tagged/factory-girl
>
> It will get attention from more people than in this issue tracker. Thanks!

Some issues get stale, with not even the requester replying to your feedback
anymore. It’s impossible to solve a bug report with not enough information, or
which has nobody who has seen the problem to answer your questions. In these
cases we use an example response like:

> Since it’s been two months, I hope things are working well for you now. I’ll
> close the issue until we can confirm it’s still happening. I’m happy to
> continue further discussion whenever needed.

Many people submit very detailed issues. They need only a little encouragement
to convert their work into a patch.

> Thanks for reporting. That would be a useful addition to the docs indeed. Can
> you please send a pull request with your proposed changes? Thanks!

To an issue with an unclear description another sometimes helpful route to take
is to ask the requester to put together some quick code to further iterate on
their issue (a [spike]). If the requester implements even part of the needed
feature you can now have a more valuable discussion over a possible
implementation, with a description that is as precise as running code is.
Another possibility is that while working on the spike, the contributor finds
that it’s not a great idea after all, and closes the issue as invalid. This can
save you both valuable time.

[spike]: https://en.wikipedia.org/wiki/Spike_(software_development)

But, if you believe an issue doesn’t describe something good for the project,
ask further questions and take the time to learn what is being proposed before
asking for sample code. Otherwise, you run the risk of having to reject work you
have asked for.

A middle ground between no code and a running spike is to ask for a natural
language test case:

> If you had to describe the kind of test you’d write for this scenario (even
> in natural language), what would it be?

Another source of clutter in the issue tracker are questions that are asked
repeatedly. This is a good sign that there is something in your project that
should be simpler. Better error messages could help, documentation might need
more attention or code might need some refactoring. Before disregarding repeated
questions with variations of RTFM (“read the fucking manual”), ask someone you
trust for feedback. Try to take a step back and see the project as a newcomer
would. Do you see anything that is not clear enough? What could change to lower
the odds of a given problem from reappearing? In the mean time, adding the
question to an FAQ section is a good band-aid, and you can link to it when the
question is asked again.


## How much communication is enough?

There are two rules to keep in mind during any discussion:

The **bike shed effect** (also called “[Parkinson’s law of triviality]”) states
that groups give disproportionate weight to trivial issues. For example, a
committee whose job is to approve plans for a nuclear power plant spends the
majority of its time on relatively unimportant but easy-to-grasp issues, such as
what materials to use for the staff bike shed, while neglecting the less trivial
proposed design of the nuclear power plant itself, which is far more important
but also far more difficult and involved to criticize constructively.

[Parkinson’s law of triviality]: https://en.wikipedia.org/wiki/Law_of_triviality

When you see more activity than usual in a discussion over a superficial matter
(according to a threshold you define), take one decision (even if arbitrary) and
call it resolved. You will save everybody’s time.

**Godwin’s law** states that as an online discussion grows longer (regardless of
topic or scope), sooner or later someone will compare someone or something to
Hitler or Nazism. You would find yourself in the unhappy need to quote this law
when this happens.

The miner’s canary of a conversation that went too far and has a low
signal-to-noise ratio is an out of the blue mention of Nazism. When it happens,
call the thread finished and whoever mentioned the Nazis automatically loses the
debate. You can link to [the Wikipedia article] for extra fun!

[the Wikipedia article]: https://en.wikipedia.org/wiki/Godwin%27s_law


## On effective feedback

Having awareness of our [cognitive biases] is most useful to give and receive
feedback in a way that feels productive for both the reviewer and the reviewed.
A cognitive bias is a pattern of deviation in judgment from which inferences
about other people and situations may be drawn in an illogical way.

Here are some examples:

[Fairness bias] describes our tendency to seek balance. If a
supplier keeps an open line of communication with an unhappy customer about a
faulty product, the customer will respond more favorably regardless of the
outcome. The need to be heard takes precedence over the need for the product
working correctly.

Fairness bias can be applied to code reviews. Framing an idea as a question instead of
as an assertion makes the contributor feel heard and valued. If we are the
authors of the code being reviewed, we can harness this effect before the
conversation is even started, by explaining the rationale behind our work beforehand.

[Loss aversion] describes people’s tendency to strongly prefer avoiding losses
to acquiring gains. More concretely, giving you 5 dollars won’t make you extra
happy but if $5 are taken from you, you will get upset. Loss aversion relates
with saying “no” to a patch. As a reviewer, giving a clear explanation of the
reasons for your rejection helps avoiding a longer discussion on whether the
patch should or should not be merged, helping authors see more objectively the
value of their contributions. As a contributor, remember that if you were the
reviewer or another external party, you would probably be a bit more skeptical
than you currently are about the value of your patch.

Daniel Goleman, psychologist, author and science journalist, identifies an
[online negative bias]: the positive message you wrote
may be assumed to be neutral, and what seemed indifferent to you
can be read as hostile. You can avoid this by using positive language instead of
neutral. Written discussions have less bandwidth and need to include more context
than conversations over the phone or in person.

“The Cathedral and the Bazaar”, an essay by Eric Raymond on software engineering
methods, states in its 10th lesson:

> Treat all your contributors as if they are the most valuable resource, and
> they will respond by becoming your most valuable resource.

Raymond’s lesson illustrates the “[Chameleon Effect]” cognitive bias, also known
as “The Pygmalion Effect” and “unintentional mirroring”, which describes our
tendency to take on characteristics that have been arbitrarily assigned to us.

[cognitive biases]: https://en.wikipedia.org/wiki/Cognitive_bias
[Fairness bias]: http://www.amazon.com/Sway-Irresistible-Pull-Irrational-Behavior/dp/0385530609
[Loss aversion]: https://en.wikipedia.org/wiki/Loss_aversion
[online negative bias]: https://www.youtube.com/watch?v=TBCiSAJ20Wc
[Chameleon Effect]: https://en.wikipedia.org/wiki/Pygmalion_effect

The Pygmalion Effect was [studied in a training
camp](http://psycnet.apa.org/journals/apl/67/2/194/) where officers were about
to instruct a leadership development course for junior officers. A subset of the
junior officers would become the next batch of leaders. The training officers
were informed, based on ratings by previous commanders, which trainees presented
“high”, “regular” or “unknown” command potential. What neither trainers nor
trainees knew was that researchers assigned scores randomly.

Four months later all trainees took a test based on the materials they learned
during the program. Researchers found that trainees whom the training officers
thought had high potential scored better on the test than their “unknown” and
“regular” counterparts. Being *labeled* as leaders resulted in actual improved
exam results.

Do your project a favor and treat all your contributors as if they are the most
valuable resource. They will respond by becoming your most valuable resource, if
they are not already.

Wrapping up, while giving feedback it’s good to:

* Start with an appreciation of the work or comment.
* Phrase ideas as questions when you are not sure that your feedback shows a
  clear step forward.
* Be explicit. Online discussions have less bandwidth than in person and
  need more context.
* Try to respond to every question and comment.
* If you disagree strongly, consider giving it a moment before responding.
* Don’t assume the audience shares your experience or context. Avoid words like
  “basically”, “simply”, “clearly”, etc.
* Review is of the code, not people. Keep this in mind as a contributor too.

Remember: every person knows something you don’t yet know. It will help you treat
everyone with care, making them feel valuable to your project and inspiring
further contributions.


## Expectations and guilt

Maintaining an open source project can provoke some negative feelings that have
proven to be a weight on some maintainers' shoulders. This difficulty may lead
to burnout and ultimately the abandonment of the project. Some examples:

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
* [Babel.js author describes his
    burnout](https://medium.com/@sebmck/2015-in-review-51ac7035e272)
* [Basecamp blog post: Open Source Guilt and
    Passion](https://signalvnoise.com/posts/3349-open-source-guilt-passion)

Businesses rely on your project. Software projects rely on it. People rely on
it. They ultimately rely on you, the project owner. If you put in three more
hours of work you may save ten people three hours each today, compounding into
the future, and that potentially makes you feel responsible. An unintended
regression could directly affect tens of people (or hundreds, or thousands, or
millions). People can complain about errors or lack of features in a curt way.

In open source nobody owes anything to anyone. If anything, users owe
maintainers gratitude for publishing something that was and is useful to them.
Your code is being run in who-knows how many computers and servers. A mistake
today doesn’t undo your previous productivity gains, help, and successes. How to
control emotions is indeed not a topic for this book, but it is important to be
aware of the feelings that may sprout from leading an OSS project, as that in
itself should help.

People’s expectations and needs will be different than what you set for yourself
and your project. You can try to channel them, and they may intersect. Yet
sometimes it is best to accept differences. At the end of the day, we should try
not worry about things that are out of our control, while keeping in mind that
we contributed valuable work to fellow humans.
