# Hora do Treino Test

This repository was intended to be used on hiring process for Hora do Treino.
It's a simple project started with Rails as an api and VueJS as frontend framework.

The task it is to build a prototype to our search page. https://app.horadotreino.com.br/busca/

## Time

The whole task should not take more than 4h and you can use the last hour to focus in building
the PR and writing down your process to think the solution. Also explaining what you want to do
if there was more time. The idea is not to finish everything but instead design a architecture and
code something in that time.

You can spend more time if you want to but please explain it why. Just please, don't spend more than a day on it.

## What we will evaluate?

We want to evaluate these knowledges:

1. Communication
2. Solution Thinking
3. Code Proficiency

As Communication, we will check how good you understand the problem and also how good you explain
your solution in the PR. You can use all the
[Github Markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
features to format your PR description to help us understand it better.
You can write in English or Portuguese.

The PR could have the following sections:
- "Process of thinking in a solution and how do you planned to execute" (how do you approach the solution, and how do you split the different steps of the coding process),
- "Architecture" (what is the resulting architecture, how each different part of the system integrate),
- "How to test" (what should we do to load locally and test ourselves?),
- "Future improvements" (what you thought of doing but didn't had time to do),
Any other sections that you feel necessary to explain your test.

As Solution Thinking, we will check what you wrote and on the call after we will talk more about it.

As Code Proficiency, it's about the solution itself, is it simple? is there any vicious in your code?
But especially, can you work using Rails and some of the VueJS?

The idea behind the test is to emulate a normal day of work here.

## Technical requirement

You don't need to worry on creating something pixel perfect, just focus on the main functionality.

The API that brings the results is `https://horadotreino-staging-api.herokuapp.com/api/v1/pages/search.json`
It accepts two parameters: `name` and `price`. `name` is a plain string that searchs for personals with that string in the name.
`price` accepts a string with this format `0-999` where the first number is the minimun price and the last one is the maximum price.

You should focus on building the main screen with showing the results first and then focus on filters.

Ignore the rest of the filters, and the inputs don't need to follow the same design or usability, you can just put a regular input on the screen to set minimun and maximun values on price for example.

You should use Rails as a proxy to the API as if the API above was your connection to database. Feel free to use any gem or just the standard lib to consume the API.