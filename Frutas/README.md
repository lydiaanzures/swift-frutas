#  Frutas App

#Implementation steps

## 1. Build the Card View for a Fruit
    - Create a VStack containing the info for the fruit we want, such as the fruit name, a description, the image, and a button
    - Contain the VStack in a ZStack container where we can add background and format it as a gradient, as well as adding animations
    
## 2. Format the Start Button as its own view, and just import it into the Card View
## 3. Create an Onboarding View, where for now, we hard-code in a for loop of 5 so that we can display the card five times
## 4. Import into the main FrutasApp file
## 5. Create Fruits Data Model
    - With blueprint for info we want to collect. Mostly as string information, but color will contain colors for light and dark which we can use in our color gradient. 
    
## 6. Fetch Data in onboarding screen
## 7. Defining connection between app storage, scenes and which views we will see based on a boolean conditional
## 8. Format a layout for a single row of a fruit
## 9. Create a detailed fruit view, and connect to list view!
    - Add a navigation link in the content view file, pointing to the detail view. Voila!
    - Automatic handling of back buttons! Nice. 
    - Add additional UI elements to this detailed view - like name, image, etc. 
    - Make a custom component for a link
    
## 10. Nutritional Value view
    - Create an info box that will contain our fruits nutrition data

