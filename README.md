# Bartinderapp

Use Bartinderapp to create cocktail recipes, browse others' cocktails, like and comment on them.

## Prerequisites

Make sure you have installed:
  * Ruby, version 2.2.2 or newer
  * Postgres
  * Rails

You can check in the terminal:

```bash
ruby -v
rails -v
postgres -V
```

This should output some information on the installed versions.
If not, you can refer to the [Ruby](https://www.ruby-lang.org/en/documentation/installation/), [Postgres](https://www.postgresql.org/) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) documentation.
## Getting Started

Fork and clone this repository.

## Installation

On a terminal window, use the gem manager [bundler](https://bundler.io/) to install all dependencies. Create, migrate and seed the database. Start the Rails server. To do all this, run these commands, one at the time.

```bash
bundle install
rails db:create
rails db:migrate
rails db:seed
rails start
```

Visit localhost:3000.

### All good to go!
