# RETRIEVING, EDITING AND USING DATA FROM E-COMMERCE SITE WITH UIPATH 


## ENTRANCE

### What is RPA ?
Robotic Process Automation (RPA) is a business process automation technology that utilizes virtual software robots—also known as digital robots or bots—to perform manual, repetitive, and time-consuming tasks.

### What does RPA do?

Robotic Process Automation technology manages a range of activities, including:

Manual and Repetitive Tasks: Interactions with data from various sources, such as Microsoft Excel, vendor portals, and other platforms.

High-Volume Tasks: Process steps that need to be executed over time, such as data migrations and approval workflows.

Multiple System Tasks: Accessing and interacting with different applications, including web applications, RPA solutions, third-party software, and others.

### What does our project do?

Comments made about products on e-commerce sites provide an important preliminary impression of the product's introduction to the consumer. The aim of this project is to save the comment on a specified product, the person who commented, the score given to the product, and the date of the comment in a file with the ".xlsx" extension. Subsequently, the data will be made more usable by utilizing both VisualBasic commands in UiPath and macros in Excel. Finally, the goal is to automatically send this file to the desired user via email.

## MATERIALS AND METHODS

The project was developed using UiPath Studio. An ".xlsx" file was employed to store the captured data, utilizing Microsoft Excel for this purpose. Additionally, Microsoft Outlook was required to be open for the activity designated for the automatic sending of emails.

The project was executed in two stages.

In the first stage, all operations were written in separate workflows and then integrated into the main workflow. The Config structure was utilized, with the website address for data capture, the file path for creating the ".xlsx" file, and the file paths for the macros to be executed in the Excel file being sourced from the "Config.xlsx" file.

![1](https://github.com/user-attachments/assets/458e512c-192e-46c5-b1b6-794610003afa)


The second project was developed using a ReFramework structure. As with the previous project, the Config structure was employed. In the "Init" stage, the Config file was read, and the data was assigned to a variable with a dictionary data structure. This data was then passed as an argument to the "Process Transaction" stage where the operations were carried out.

Both projects perform the same operation. The objective was to create a project using two different structures and to explore the UiPath working logic.

![image](https://github.com/user-attachments/assets/21c00fe4-eacb-4963-b11d-9a6d03251a80)

## RESULT

This project demonstrates how to make specialized data readily available in a straightforward manner using UiPath. It showcases how to perform operations on Excel files with UiPath, work with data tables, utilize the Config structure, and manage variable and argument data structures. Additionally, the project illustrates the efficient use of the ReFramework structure.


