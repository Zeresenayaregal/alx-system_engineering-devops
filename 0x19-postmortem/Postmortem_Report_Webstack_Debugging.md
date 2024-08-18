# Postmortem Report

## Flask Application Outage for Collaborative Project

<p align="center">
<img src="https://github.com/Zeresenayaregal/alx-system_engineering-devops/blob/8bb8c5b3f162ccfd35d70fab5c0f26ca8d828470/0x19-postmortem/img.png" width="100%"/>
</p>

### Incident report for [Flask Application Outage](#)

#### Summary

On July 25, 2024, our Flask application experienced an outage that lasted for 2.5 hours. Users encountered "500 Internal Server Error" messages, particularly when trying to log in. Approximately 70% of users were affected, with others experiencing slower loading times across the app. The root cause was a bug in the login function caused by missing user data, which resulted in unhandled exceptions and application crashes.

#### Timeline

-   **9:00 AM EST** - Outage began, and the first user reported login issues.
-   **9:05 AM EST** - Monitoring tools alerted us to a spike in "500 Internal Server Error" responses.
-   **9:10 AM EST** - Initial investigation of the login function and database revealed no database issues.
-   **9:45 AM EST** - Issue escalated to the lead developer after realizing it wasn't a database issue.
-   **10:15 AM EST** - Bug identified in the login function related to missing user data causing unhandled exceptions.
-   **10:45 AM EST** - Decided to roll back to a previous stable version of the code.
-   **11:00 AM EST** - Rollback completed, and the login functionality was restored.
-   **11:30 AM EST** - Full functionality confirmed; the application returned to normal operation.

#### Root Cause and Resolution

The issue stemmed from a bug introduced in the latest code deployment. The login function failed to handle missing user data properly, leading to unhandled exceptions that caused the application to crash. This resulted in widespread "500 Internal Server Error" messages for users trying to log in. The issue was resolved by rolling back the code to the previous stable version, fixing the login function, and redeploying the updated code.

#### Corrective and Preventive Measures

-   Improve exception handling in the login and other critical areas of the Flask application.
-   Expand test coverage to include edge cases related to missing or corrupted user data.
-   Set up more granular monitoring to detect specific errors like "500 Internal Server Error" earlier.
-   Document the rollback process to allow quicker action in the event of similar issues.

