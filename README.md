# Blue Sky PathLMS Engineering Candidate Code Challenge

We're excited that you've applied to be an Engineer for our PathLMS product. Before we meet for the first time, we'd like to get an idea of how you think through some problems and how you'd solve them.

## Project Setup

Included in this ZIP file is a Rails 6 RESTful API application. It has been stripped down to remove authentication and extraneous code that you don't need to worry about. Getting up and running should be fairly easy (assuming you use a command line and have RVM or some Rubygem manager installed):

```
gem install bundler
bundle install
chmod 755 rundev
./rundev
```

The project uses sqlite and the database file is provided with migrations already performed and test data pre-loaded. You should be able to access the following URL's on your local system:

```
http://localhost:5000/
http://localhost:5000/reports/events/1/speakers
```

## Challenges

We received the following support tickets from our Customer Support team on behalf of a very important client. They have integrated our API into their own internal system and therefore access the API directly. Their contract with us states that we will provide any requested report end-points and data. Fix each issue and add the requested reports.

### Ticket 1

```
When accessing the attendee report (reports/conferences/1/attendees) it will often time-out when there are more than a few thousand attendees. When it doesn't time out, there is often too much data for our ancient app to ingest at once.
```

### Ticket 2

```
We would like to send an email to all of the speakers for an event and I found duplicates on the speakers report (reports/events/1/speakers). Can you ensure this report doesn't return any duplicate emails?
```

### Ticket 3

```
I'm able to get a report of all the speakers for an event, but not all of the attendees (for all conferences in the event). Can you add an end-point: reports/events/<<event id>>/attendees ? I'd also like to exclude duplicates (by email address).
```

### Ticket 4

```
I need a report that lists all of the conferences for any given event. I need to know how many attendees each conference had, how many the event had (excluding duplicates), and I need a list of speakers for each conference. End point: reports/events/<<event id>> -- should also include event data.
```

## Submission

When you're done, zip up the project and email it to dsloan@blueskyelearn.com
