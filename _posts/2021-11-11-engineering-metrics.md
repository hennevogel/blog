---
image: shandell-venegas-pFqOn1gfSe8-unsplash.jpg
image_license: Photo by Shandell Venegas on <a href="https://unsplash.com/photos/pFqOn1gfSe8">Unsplash</a>
title: Five Reasonable Product Engineering Metrics
description: A blog post about measuring engineering teams with metrics
---

How to measure team success? This is a topic I'm torn about. I am a humanist, I
emphasize the individual, it's social potential and capacity. Same rules apply
to (small) teams as well in my book.

However, potential is not so easy to implement. Just because you have it,
doesn't mean you can carry it out. I potentially send my workreport every
Friday. Mood, realization, situation, drive. To realize potential, the
circumstances have to be right too.

The thought of abstracting humans into numbers is appalling to me. Yet seeing
metrics encourages doubt and self-reflection for teams. And that is the best way
to become a better version!

So here I am, trying to convince myself, maybe I can pull you with me?

<div id="more"></div>

## Ground Rules

Let's start with some ground rules for product engineering metrics.

### Be Gentle

Goodhart's Law

<blockquote>
Any observed statistical regularity will tend to collapse once pressure is
placed upon it for control purposes.
</blockquote>

The more you try to control people with metrics the more resentful they will
become towards them. Sometimes resentful enough to start to game the metrics.
Twisting what you set out to do to the opposite.

Rule #1: Tread careful with engineering metrics!

### Adequate Level of Abstraction

If you measure at the individual level, you don’t get the signal of the process.
You get the signal of the person. A person might be coding today, tomorrow they
think most of the day about a complicated design, and the next day they have
three meetings to run. But they have friends covering for them, individuals in
a team take care of the teams output...

Rule #2: Engineering metrics *have* to be about the team not the individuals!

## Accountability

Lack of control is especially evoking grudge because it makes people helpless
about a metric. Examples: Number of commits to a code base shared with other
teams or outside contributors. Server Room Energy Consumption for a team
operating three of hundreds of servers. Company wide attrition rate for a
single department.

Rule #3: Engineering metrics are *only* influenced by the team and no one else!

### Alignment to Impact

If you can't explain the impact of a metric on a team/company goal it will be
subject to question. Example: Number of Pull Requests. It's an arbitrary
number. You *can* create a pull request for every key press if you want to. But
the number of pull requests has no correlation whatsoever with the company’s
success (a.k.a. impact on the customers). Other examples: number of commits or
lines of code.

Rule #4: Engineering metrics need to have impact!

## Good Metrics

Alright there are a lot of bad metrics. But what is a set of metrics that
reasonably works? I think it's important to find a balance between speed *and*
quality. Those five metrics cover this balance nicely.

### Change Throughput

Real change happens on production. Measure deployment frequency. The shorter the
better.

The optimum is *continuous* deployment and feature toggles. Whatever change the
team does, it does for production. Fixes, features, (re-)designs and
documentation are pushed directly to customers. Experiments or refactoring are
pushed to production to encourage features and fixes for customers.

Because customers want to see changes that make the teams product better!

### Change Performance (a.k.a. Cycle Time)

It takes a team to raise a change. Measure the time between pull request ready
to pull-request deployed. The shorter the better.

The optimum is a well discussed (planed), narrowly scoped pull request of
commits that contain a single logical change. Commit messages that explain what
was done and why. A pull request description that explains the steps the reviewer
can follow to verify the change set.

Plus a well oiled continuous integration cycle consisting of linters, static
code analysis, automated tests and measuring coverage.

Verified by engineers that share the context and style about architecture, code
and review practices.

Because customers wait for the team to verify changes that make the teams
product better!

### Change Size

Each change potentially brings uncertainty to production. Was the change
(deployment) cause of the effect (issue)? Measure deployment size. The smaller
the changeset the easier it will be to debug the causality of an issue.

Because customers wait for the team to discover the root cause of a problem!

### Change Failure Rate

Shit is bound to happen. If it doesn't happen, you are not bold enough. If it
happens to frequently your people will go elsewhere. Measure downtimes and
serious service degradations divided by deployments. That of course assumes you
track priority of your teams issues. A <=15% change failure rate is decent.

Because customers expect the product to move fast *and* steady!

### Mean Time To Recovery

We have established: I you are doing product engineering the right way shit is
going to happen, no matter what. So the most important question about shit
becomes: How well prepared are you to deal with it? Measure how long it takes
the recover from downtime or serious service degradation. That of course assumes
the team practices fault tolerant design and serious incident management.

The optimum is *instant* detection and failover/rollback. Prepare your product
and your team for the worst, so in a time of crisis the best will happen.

Because customers expect the product to be operational!

## Fast but Steady

If you measure those five metrics, and set reasonable goals for them, they will
balance out and produce team success. By providing frequent impact in good
quality to your customers.

Of course those aren't the sole factors for success. Back to the humans behind
the numbers! Improving their conditions in the spirit of reason. Their freedom,
safety and dignity. Increase their autonomy, happiness and self-fulfillment.
Give your best for them to have a self-defined, meaningful, and happy work life.

## Further reading

https://www.managersclub.com/kan-yilmaz-metrics-for-engineering-teams/
https://www.amazon.com/Accelerate-Software-Performing-Technology-Organizations/dp/1942788339/
