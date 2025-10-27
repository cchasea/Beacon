## Dez:
### Generic vs Role-Based Onboarding
  - **User Story Number:** US 6 - Metrics
  - **Metrics:** Net Promoter Score, Retention Rate, Daily Active Users
  - **Hypothesis:** Users that are given an interface tailored to their role are more likely to adopt features quicker and continue using the app compared to those with a generic page.
  - **What problem are we trying to solve and its impact:** We believe that many users may be inclined to stop using our app if their front page is generic and contains input fields not tailored to their role regardless of said role. Instead, users can be met with an onboarding page that includes "courses you teach" for educators or "courses you attend" for students, for just some simple ideas. This will in turn result in more users staying with our app.
  - **Experiment:** We will utilize Firebase Remote Config to randomly assign 50% of our users a version with a generic onboarding screen and the other 50% with a tailored one. Then, we will observe the Firebase Analytics to see how our metrics change between the two versions.
  - **Variations:** For version A, users will be placed in a generic dashboard screen with no prompts tailored to their role and no guidance. For version B, users instead will see prompts based on their roles on the onboarding screen. For example, students will see a prompt to add enrolled courses and assignment deadlines, educators will be prompted to added the courses they teach and when to schedule assignments for, and general users will be prompted to add work or personal events.

## Cameron:
### Light vs Dark Mode
  - **Goal:** Determine which theme increases user satisfaction and engagement.  
  - **Variant A:** Dark Mode (default). 
  - **Variant B:** Light Mode (alternative). 
  - **Metrics:** Session duration, user retention, satisfaction rating.  
  - **Tool:** Firebase Analytics with Remote Config 50/50 user split.  
  - **Success Criteria:** Dark Mode shows ≥10% increase in session duration or ≥5% improvement in retention.

## Asher:
  - ### Combined vs seperate calendar screens
  - **User Story Number:** US 6 - Metrics
  - **Goal:** Determine which screen organization enables users to miss less assignments and deadlines, and feel more comfortable knowing what their future events are. We will track the number of events that are still marked undone after the due date has passed.
  - **Variant A:** Two screens (current version). Home page lists things due today, due next week, and overdue. Second page is the calendar with all the colored events like google calendar. Here is where you would add new events. 
  - **Variant B:** One screen that shows the calendar and the events listed beneath in chronological order.
  - **Hypothesis:** Two screens would lead to decreased missed assignments because it creates a clear and updated display showing what is due the soonest. 
  - **Metrics:** Assignments that are not checked as completed after the due date.
  - **Tool:** Firebase Analytics with Remote Config 50/50 user split.

## Ryan:
### Generic vs. Personalized Reminder Notifications
- **Goal:** Increase user retention and re-engagement through more relevant reminders.
- **Variant A:** Generic push notification — “Don’t forget to study today!”
- **Variant B:** Personalized push notification — “You have 2 assignments due tomorrow. Let’s plan your study session now!”
- **Metrics:** Notification open rate, 7-day and 30-day retention, re-engagement sessions.
- **Tool:** Firebase A/B Testing + Remote Config (50/50 user split).
- **Hypothesis:** Personalized notifications will drive higher open rates and retention because they feel more relevant and actionable to students.
- **Success Criteria:** Variant B shows ≥10% higher open rate or ≥5% improvement in 7-day retention compared to Variant A.
