# ChampionLore 📖
iOS app to display all League of Legends Champions Lores.

I'm a long time player of league of legends, what must 10 years now. An still I don't know the stories behind it all. Riot games has a full website with even more information but for the small few like myself who don't mind an app just to read this is for them.
</br>
</br>
</br>
# Challenges ⚔️

This app is about reading. And some of the texts has a lot of paragraphs. So my **roadblock was how will I get and store the data**.
</br></br>

# Possilble solutions and issues?

## The Storing of the Data
### 1
- 🧐 Create pdf files of the stories and load those in with Apple PDFKit framework.
- 😞 Configuring this method to look close to the design seems combersome and not neccessary for the over requirement of the app.

### 2 
- 🧐 Add long strings of data into json data, and insert special codes where there needs to be line-breaks. Then later it can be filtered using an algorithm.
- 😞 Not too bad but inserting the special characters in all of the breakpoint, for every 163 champion is way too much work.

### 3
- 🧐 Create a single array of each "paragraphs / breakpoints"
- 🤩 This method was recommended by a Mentor, and it made the most sense.



## Getting the Data
### 1
- 🧐 Manually copying an pasting the data, and formatting it into an json array.
- 😞 Too much work, and theres no way this is what professional devs do.

### 2
- 🧐 After usings available tools like ChatGPT, I learnt about Beautiful soup. A python app that can web scrap information from a webpage.
- 😞 This could work, but the data I need is very simple. And the setup process for Beautiful soup is too much for this project even though I think its a good tool to hold on to.

### 3 
- 🧐 Use Google extension "Easy Web Scrapper"
- 🤩 This so far is the best solution. It automatically and accurately fnds the data I want. And converts the texts into good CSV's. Which I can then use convertcsv.com to create a JSON Array.
