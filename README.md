# Bookmark Manager

Primary goal.

By the end of the week, the goal is to be able to answer "yes" to the week's primary question:

**Can you build a web app that uses a database?**

By the end of the project, you can:

Build a simple web app with a database (this pirmary goal breaks down into the two sub-goals below)
Follow an effective debugging process for database applications
Explain the basics of how databases work (e.g. tables, SQL, basic relationships)

## Main focuses for this week
- Agile and TDD
- Engineering and 'Dev Recipes'
- Databases
- Tooling
- As well as these things, you'll deepen your understanding of many of the skills and concepts from week 3.


### The project
You're going to build a bookmark manager. A bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## To start

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Install [TablePlus](https://tableplus.com/)
6. Create Database for bookmark_manager_test & CREATE TABLE bookmarks;



_User story_
1. Stakeholder
2. Motivation
3. Task

As a user, <br>
So I can identify the bookmarks made, <br>
I would like to view a list bookmarks created. <br>

As a user,  <br>
So I can save some useful links, <br>
I would like to add new bookmarks <br>

MVC diagram
[![Image from Gyazo](https://i.gyazo.com/6c6affc703c7cca802c1f9b86d28994d.png)](https://gyazo.com/6c6affc703c7cca802c1f9b86d28994d)