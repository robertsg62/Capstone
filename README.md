### Coursera Data Science Capstone Project

This application is the capstone project for the Coursera Data Science specialization held by professors of the Johns Hopkins University and in cooperation with SwiftKey.


*****

#### The Objective

The objective is to build an application in shiny that will predict the next word.

The tasks to accomplish this include data cleansing, explorarory analysis, predictive modeling and more.

A frequency dictionary is created from text data, which is used to predict the next word(s) from a corpus.


*****

#### The Applied Methods & Models

The corpus sample was cleansed by converting to lower case, removing punctuation, numbers, links, white, space, special characters, etc.

The sample was then tokenized into n-grams.

* Tokenization is a breaking up a list into tokens . https://en.wikipedia.org/wiki/Tokenization_(lexical_analysis)

* An "n-gram"" is a sequence of n itmes from a given sequence. http://en.wikipedia.org/wiki/N-gram

These n-grams are combined into frequency dictionaries, which are aggregates to the bi, tri, and quadgram term frequencies.

These are then used to predict the next word in connection with the text input in the described application and the frequencies of the underlying dictionaries.


*****

#### The Usage Of The Application

The interface has 3 sections. 

The user interface of the application was designed to predict English words from English text. The App has an interactive interface that refreshes the predicted word as text is being enterd.

To use the application, simply type in a word, phrase, or sentence. The app will show the next top predicted word. The user can enter additional words, or change their entry, and the app will respond to the new input.


*****

#### Additional Information

* The next word prediction app is hosted on shinyapps.io: [https://robertsg62.shinyapps.io/Capstone/](https://robertsg62.shinyapps.io/Capstone/)

* GitHub repo: [https://github.com/robertsg62/Capstone](https://github.com/robertsg62/Capstone)

* This pitch deck is located here: [http://rpubs.com/robertsg62/Capstone](http://rpubs.com/robertsg62/Capstone)


![SwiftKey, Bloomberg & Coursera Logo](logos.png)
