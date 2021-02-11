# FlyNow

## Description

A flight booking web application, reads airports and flights from database and creates mock bookings and tickets.

## Requirements

FlyNow is built using `Ruby v2.6.3` on `Rails 6.1.1`

## Gems

Database uses `pg` gem, styled with `bulma-rails` gem

## Setup

After `git clone` run `bundle install` to install needed gems and dependencies.

Run `rails db:create`, `rails db:migrate`, `rails db:seed` to create database and seed with my pre-written data for
testing.

If you run into any trouble at the above step, you probably need to install `Postgresql` via `Homebrew` and start the
service on your machine.

## Deployed at

* https://flynow-preview.herokuapp.com/

---------------------------------------------------
All code is written from scratch by Kostas. Assignment for [The Odin Project](https://www.theodinproject.com/).

2021 - MIT License