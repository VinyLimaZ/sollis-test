Sollis Test
=======================

Semaphore: [![Build Status](https://semaphoreci.com/api/v1/vinylimaz/sollis-test/branches/master/badge.svg)](https://semaphoreci.com/vinylimaz/sollis-test)

## What are all this shit?

Hello guys, I'm Vinicius and this is my solution to the problem that you
brought to me :D

My solution consists in one endpoint: `POST /fibonacci`, to calculate the fibonacci sequence;
You need to pass `range: POSITIVE_INTEGER` param;

Because of convention, I didn't use the `quantidade`, like was on e-mail...

## Configuration

Ruby version: 2.4.3

Rails version: 5.2

## How to

First clone the project and run `rspec` to guarantee that all is fine;
Second you run: `rails s` (I didn't use any table);

## POST Problem

`GET` is cool, you can do anywhere, if you have internet, obvious.

But `POST` you need some tools to do the job
The most simple for doing this, in my opinion, it's `wget`

Doing:

`wget -qO- localhost:PORT/fibonacci --header='Content-Type: application/json' --method=POST --body-data '{"range": 45 }'`

_PORT default is 3000_

You will get the json on your screen, like a hacker!

Enjoy and hire me, please (͡ ° ͜ʖ ͡ °)

ps: I did the most simple solution for the fibonacci recursion, I will do a
refactor with a better algorithm today!
