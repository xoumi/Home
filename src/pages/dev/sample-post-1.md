---
title: Why we use Markdown at Ghost
summary: |
  Once you get the hang of Markdown, it’s an incredibly powerful writing tool which will allow you to write rich content for the web far faster than almost any other method. To get to that point, however, there’s a little bit of a learning curve. We thought we’d put together an all inclusive guide to make that curve a little bit shorter, and potentially teach you a few super-user tricks to Markdown that you might not have known
---

  It’s no secret that we’re big fans of *Markdown* at Ghost. We built our editor to work with Markdown directly!

Once you get the hang of Markdown, it’s an incredibly powerful writing tool which will allow you to write rich content for the web far faster than almost any other method. To get to that point, however, there’s a little bit of a learning curve. We thought we’d put together an all inclusive guide to make that curve a little bit shorter, and potentially teach you a few super-user tricks to Markdown that you might not have known.

## What is Markdown

*Markdown* is a plain text formatting syntax for writers. It allows you to quickly write structured content for the web, and have it seamlessly converted to clean, structured HTML.

Back in 2004, Apple pundit John Gruber came up with the idea after becoming frustrated by writing long, laborious HTML tags to properly format his content. He devised a simple writing system which would make web based documents both easier to write, and easier to read in their raw state.

Here’s a quick example of Markdown in action:

``` The *quick* brown fox, jumped **over** the lazy [dog](https://en.wikipedia.org/wiki/Dog). ```

becomes

The *quick* brown fox, jumped **over** the lazy dog.

With just a couple of extra characters, Markdown makes rich document formatting quick and beautiful.

## Why do Writers Love Markdown so Much?

“Is that it?” - I hear you ask - “I could just click on a few formatting buttons in most editors and achieve the same thing!”

Very true! But we’re only just getting started. The range of formatting tools has come a very long way since Markdown’s inception in 2004, so you’d be forgiven for wondering what advantages it holds over, say, the “Bold” button in Microsoft Word.

While most novice users do indeed find buttons a bit easier to use, advanced writers often swear by Markdown and nothing else. Why? The biggest reason is writing flow.

Using a traditional writing user interface you have to pause your writing every few minutes (or sometimes seconds) and reach for the mouse in order to click, highlight, click a formatting button, and then click back to where you left off in order to continue. This process creates a tiresome, disjointed experience when all you want to do is get the words out of your head and onto the screen.

Markdown allows you to keep your fingers firmly planted on the keyboard as you apply formatting on the fly. In short: You never have to stop typing or think about anything else in order to apply your styles.

It might seem like a small detail, but it can have a really big effect. Once you start writing in Markdown, it’s really hard to back to the click-fest of the past.

## Basic Markdown Formatting

Ok! You’re sold. So how does this work? Let’s dive in:

Markdown was designed with the explicit intention to be easily readable by humans. You should find that most of the syntax is pretty simple and intuitive.

Here are the elements you’ll use most often:
### Headings

``` md
# Heading 1
## Heading 2
### Heading 3
```

Headings in Markdown are any line which is prefixed with a # symbol. The number of hashes indicates the level of the heading. One hash is converted to an h1, two hashes to an h2 and so on. There are a total of 6 levels which you can make use of - but for most writing, you’ll rarely ever need more than 3.
Text

``` md
*italic*
**bold**
***bold-italic***
[link](https://example.com)
```

If you want to emphasise a word a little bit, wrap it in asterisks. For something that needs more emphasis: double asterisks. If you really want to drive the point home, use triple asterisks. If you prefer, you can also use underscores - they’re completely interchangeable.

To add a link: wrap the text which you want to be linked in square brackets, followed by the URL to be linked to in parenthesis. An easy way to remember this one is to think of it like turning a word into a button. [button] and (place to go when the button is clicked) combine to form a link.