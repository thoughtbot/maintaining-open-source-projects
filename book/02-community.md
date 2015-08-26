# Community

An active community is the most valuable asset for an open source project, but
like code itself, it can also be its biggest liability. A community that grows
quickly can get out of hand, making it harder for you to keep organized and keep
up with. Questions and feature requests may begin queueing up. While you
participate in one thread, you might lose track of what is being discussed in
another.  You may soon find it difficult to determine where you should be
focusing your attention.

In this chapter we describe practices that will help maintain a healthy
signal-to-noise ratio, keeping everyone’s expectations in check.


## Communication channels

Imagine an open source project where the most recent question remains unanswered
for weeks in the issue tracker. You think of how else to contact people, but even
a search for the maintainer’s public profiles finds no activity.
You find yourself on a dead-end street: nothing is happening,
and there is no indication that anything will happen soon. You would leave this
place in search of greener pastures, trying to find another project that, even
if not as useful for you as this one looks like, has an active community sustaining it.

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
  usage of the project.
* **Mailing lists and chat rooms** for general talk.

If any of these channels present little activity, they can seem like half empty
restaurants, exposing a negative image. The project will be better off not
having them when that is the case.


## Answering questions

Any participation is useful to a nascent project. Through users' questions you can see where
people struggle, why they struggle, and how the software or documentation could
improve to make the onboarding process smoother. In the early stages you should
celebrate each interaction: the project is getting validated.

To foster participation acknowledge contributors routinely. Thank them for the time they
spend providing feedback and code. Thank them publicly and be explicit about
how their contributions are useful to you, the project and the community. People
like being appreciated, and are more likely to continue contributing if you show
appreciation for their work.

When the project gets popular, participation starts to be more of a liability.
Feature requests, help requests, bug reports, and patches all land in your
email, and it gets tougher to manage. You might even feel guilty about not
responding as timely as you used to. How do we respond
when there is more input than we can go through in a timely fashion?

One of the first causes of a quickly growing inbox is people using the issue
tracker for questions around implementation details in their software or
issues that don’t cut it as software bugs. You can avoid this by politely asking
users to move their messages where they belong, for example to Q&A websites or
mailing lists.

It is not always better to move discussions out of the issue tracker though.
StackOverflow won’t be helpful when you have a small audience. In that case, the
issue tracker is the right place to ask. A good sign that the project is ready to grow onto
other platforms is when members of your community organically start responding to issues.
There’s a better chance that questions in other channels will get
responses as well.

By always interacting politely communication flows smoothly, and you increase the
chance they follow your suggestions. Otherwise, users might feel you didn’t solve
a problem you could have solved, and may insist you act. Arguing where a
question belongs is not productive, and being friendly helps avoid it.


## Issue tracker gardening

A problem that results in clutter in the issue tracker is
irreproducibility. Users may be trying to show a legit issue with your project,
but with not enough information to reproduce it, or to even decide if it is
indeed a problem with your project. In this case, ask them to provide more
information. You might link to
[yourbugreportneedsmore.info](http://yourbugreportneedsmore.info) for a better
explanation than what fits in a typical comment.

Steve Klabnik, who helps tend to the Ruby on Rails issue tracker, [refers to this
type of work as “gardening”]: you regularly pull out the weeds to keep it clean.

[refers to this type of work as “gardening”]: http://words.steveklabnik.com/how-to-be-an-open-source-gardener

Precooked responses for everyday interactions is a time saver. Copy & paste a
paragraph of text, press a button, and you took good care of an issue. Some
examples we use:

> This question doesn’t belong in this issue tracker, as this is not a problem
> with factory_girl itself. Please post it in
> stackoverflow.com/questions/tagged/factory-girl. Closing this issue for now.

> This issue seems specific to your application rather than with
> factory_girl itself. I suggest you ask about it in:
>
> stackoverflow.com/questions/tagged/factory-girl
>
> It will get attention from more people than in this issue tracker. Thanks!

Some issues get stale, with not even the requester chiming in it anymore. It’s
impossible to solve a bug report when there is not enough information, or when there's nobody
who has seen the problem to answer any question. An example response we use for these cases
follows:

> Since it’s been two months, I hope things are working well now for you. I’ll
> close the issue until we can confirm it’s still happening. Happy to continue
> further discussion.

Many people submit very detailed issues. They need only a little encouragement
to convert their work into a patch.

> Thanks for reporting. That would be a useful addition to the docs indeed. Can
> you please send a pull request with your proposed changes? Thanks!

José Valim, maintainer of Devise and Elixir among other successful open source
projects, uses a browser extension to post pre-cooked answers into issues
with the single press of a button. You can find the code in [GitHub: Jose vs.
OSS](https://github.com/nashby/jose-vs-oss).

To an issue with an unclear description you can ask for a spike. If the
requester implements even part of the needed feature you can now discuss over a
concrete implementation, description couldn’t get more precise, and you can even
start working together. Another possibility is that while working on it the
contributor might find that it’s not a great idea after all and close the issue
as invalid.

If you believe the issue doesn’t describe something good for the project, ask
further questions and take the time to learn what is being proposed before
asking for sample code. Otherwise, you run the risk of having to say “no” to
work you have asked for, potentially wasting time for both parties.

Some questions appear over and over again in the issue tracker. That’s a good sign
that there is something in your project that should be simpler. Better error
messages could help, documentation might need more attention, code might need
some refactoring. Before disregarding repeated questions with variations of RTFM
(“read the fucking manual”), ask someone you trust for feedback. Try to take a
step back and see the project with the eyes of a newcomer. Do you see anything
that is not clear enough? What could change to lower the odds of a given problem
from reappearing? Meanwhile, adding the question to an FAQ section you can link
to later is a good band-aid.


## How much communication is enough?

There are two rules to keep in mind during any discussion:

**The bike shed effect** (also called “Parkinson’s law of triviality”) states
that groups give disproportionate weight to trivial issues. For example, a
committee whose job is to approve plans for a nuclear power plant spends the
majority of its time on relatively unimportant but easy-to-grasp issues, such as
what materials to use for the staff bike shed, while neglecting the less trivial
proposed design of the nuclear power plant itself, which is far more important
but also a far more difficult and involved task to criticize constructively.

When you see more activity than usual in a discussion over a superficial matter
(according to a threshold you define), take one decision (even if arbitrary) and
call it resolved. You will be saving everyone’s time. Everyone’s time but the
trolls’, that is.

**Godwin’s law** states that as an online discussion grows longer (regardless
of topic or scope), sooner or later someone will compare someone or something to
Hitler or Nazism. You may find yourself in the unhappy need to quote it.

When it happens, it’s a reliable red flag of a low signal-to-noise ratio. Such an out of the blue comparison
is the miner’s canary of a conversation that went too far, a good moment to jump
out. Call the thread finished and whoever mentioned the Nazis automatically
loses the debate. Link to [the Wikipedia
article](https://en.wikipedia.org/wiki/Godwin%27s_law) for extra fun!


## On effective feedback

Awareness of cognitive biases to be most useful while giving and
receiving feedback in a productive manner, for both the reviewer and the
reviewed. A [cognitive bias] is a pattern of deviation in judgment from which
inferences about other people and situations may be drawn in an illogical way.
Some examples follow:

[Fairness bias] describes our tendency to seek balance. If a
supplier keeps an open line of communication with an unhappy customer about a
faulty product, the customer will respond more favorably regardless of the
outcome. The need to be heard takes precedence over the need for the product
working correctly.

Fairness bias can be applied to code revision. Framing an idea as a question instead of
as an assertion makes the contributor feel heard and valued. If we are the
authors of the code being reviewed, we can harness this effect even before
conversation starts, by explaining the rationale behind our work beforehand.

[Loss aversion] describes people’s tendency to strongly prefer avoiding losses
to acquiring gains. More concretely, giving you 5 dollars won’t make you extra
happy but if I take $5 from you, you will get upset. Loss aversion relates with saying
“no” on a patch. As a reviewer, giving a clear explanation of the reasons
for your rejection helps avoiding a longer discussion on
whether the patch should or should not be merged, helping authors see more
objectively the value of their contributions. As a contributor, remember
that if you were the reviewer or another external party, you would probably be a
bit more skeptic than you currently are about the value of your patch.

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

Raymond’s lesson illustrates the “[Chameleon Effect]” cognitive bias, also called
“unintentional mirroring”, which describes our tendency to take on
characteristics that have been arbitrarily assigned to us.

[cognitive bias]: https://en.wikipedia.org/wiki/Cognitive_bias
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
* Ask, don’t tell. Phrase ideas as questions when you are not sure that your
  feedback shows a step in the right direction.
* Be explicit. Discussions over the wire have less bandwidth than in person and
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
* [Basecamp blog post: Open Source Guilt and
    Passion](https://signalvnoise.com/posts/3349-open-source-guilt-passion)

Businesses rely on your project. Software projects rely on it. People rely on
it. They ultimately rely on you, the project owner. If you put in three more
hours of work you may save ten people three hours each today, compounding into
the future, and that potentially makes you feel responsible. An unintended
regression could directly affect tens of people (or hundreds, or thousands, or
millions!). People can complain about errors or lack of features in a curt way.

In the open source world, nobody owes anything to anyone. If anything, users owe
maintainers gratitude for publishing something that was and is useful to them.
Your code is being run in who-knows how many computers and servers, more
companies are using your software than you can even think of. A mistake today
doesn’t undo your previous productivity gains, help, and successes. How to manage
your emotions is indeed not a topic for this book, but it is important to be
aware of the feelings that may sprout from leading an OSS project, as that in
itself should help.

People’s expectations and needs will be different than what you set for yourself
and your project. You can try to channel them, and they may intersect. Yet
sometimes it is best to accept differences, and agree to disagree. At the end of
the day, we should not worry about things that are out of our control. And
instead feel good about having contributed valuable software to the world.
