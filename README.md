# iOS App: Femhoot
## _Nuwe Femhack Group Challenge_

¡Hola mundo!

As a part of the International Nuwe Femhack we were asked to create a Femhoot. A Kahoot inspired app that allows the user to know some random facts about women in STEM but that also test their knowledge  🧠

The app has two  views:
- A log in view: Here the user can identify itself with a name
- The Femhoot view: This view is divided in three areas:

		📲 User area: Where they can see their name, questions already answered and remaining and their total score

		👩🏽‍💻 Facts area: A space with random facts to learn more about women in tech 

		🎮 Game area: In which the user will have to answer different questions in order to win 10 points for each hit
		
<img src="https://user-images.githubusercontent.com/81619759/150690631-45734eac-d6ef-4172-ab73-332cbe63f49b.png" alt="User login page" width="300"/>  <img src="https://user-images.githubusercontent.com/81619759/150692999-f3d22288-ae0c-492a-9aab-028ae263eb7d.png" alt="Game view" width="300"/>  <img src="https://user-images.githubusercontent.com/81619759/150692836-556d6811-3bc6-4384-82bf-b3630c5508b5.png" alt="Final view with results" width="300"/> 

## Initial Requirements 📋

✅ **Task 1** → Randomly know fun facts about women in tech (generated by a button)  
  
✅ **Task 2** → Answer random questions about women in tech or facts and get 10 points per correct answer  
  
✅ **Task 3** → See a profile that displays the name and the total score accumulated by the user
    
## Extra features of our own🚀 

- Question counter to allow the user to check how many questions are left
- Customized color palette
- Dynamic render of buttons to prevent user to skip questions
- Avoid multiple answers in the same question
- Change the view when the user finishes the experience

## Built with 🔨
- XCode
- SwiftUI
Dependencies: 
- Lottie

## Development ⌨️

As there were not any visual requirement we started creating a mock up of how we imagined the app and setting a color palette, this way we could focus on developing with an unified idea of what we wanted to achieve. We also prepared a kanban board to manage the tasks. 

<img src="https://user-images.githubusercontent.com/81619759/150690787-c23232e9-c223-4ec6-8456-43280f7a3ae3.png" alt="App mock up" width="600"/> 

To develop the app we builded small components that were later unified in generic views. Working on this way  allowed us to work on several tasks in parallel, in order to be able to advance development quickly. 
The views methods were done in viewModels, this files manage all the logic of the app that is later used to make the game work as expected.

The app uses two json files in where all the content is hosted. One of them contains a serie of facts of women in tech, the second one, that is also more complex, contains the questions the user must answer, with three possible answers and a boolean that identifies which answer is correct and which is not.

We decoded each JSON using Jsondecoder in the correspondent ViewModel. The decoded data is later rendered in the views to user to interact.

## Want to clone this repo? 🐑

If you want to clone this repo please feel free to! 
