# Postmortem

Learning how to write an Incident Report, also referred to as a Postmortem. This postmortem follows the guidelines used closely by Google engineers to file reports. The report is made up of five parts: an issue summary, a timeline, root cause analysis, resolution and recovery, and lastly, corrective and preventative measures. Let's review each of these parts in detail.

### Issue Summary

<<<<<<< HEAD
-   Our Flask web application experienced an outage that lasted for 2.5 hours. Users encountered "500 Internal Server Error" messages, particularly when trying to log in.
-   **Duration** July 25, 2024, 9:00 AM - 11:30 AM (EST)
-   **Impact**: Approximately 70% of users were affected, mostly unable to log in, with some experiencing slow loading times on other parts of the site.
-   The root cause was a bug in the recent deployment that failed to handle missing user data properly in the login function, leading to unhandled exceptions and application crashes.
=======
- Our Flask web application experienced an outage that lasted for 2.5 hours. Users encountered "500 Internal Server Error" messages, particularly when trying to log in.
- **Duration**: July 25, 2024, 9:00 AM - 11:30 AM (EST)
- **Impact**: Approximately 70% of users were affected, mostly unable to log in, with some experiencing slow loading times on other parts of the site.
- The root cause was a bug in the recent deployment that failed to handle missing user data properly in the login function, leading to unhandled exceptions and application crashes.
>>>>>>> df73fdd7f5e45071fa14b791d69986b6b4ae5349

### Timeline

-   **Timezone**: EST
-   **9:00 AM**: Outage began. First sign of issues reported by a user unable to log in.
-   **9:05 AM**: Monitoring tools triggered alerts for "500 Internal Server Error" spikes.
-   **9:10 AM**: Investigations began, focusing on the login system. Initially suspected a database issue.
-   **9:45 AM**: Escalated to lead developer for further review of the recent code deployment.
-   **10:15 AM**: Identified a bug in the login function related to missing user data.
-   **10:45 AM**: Decision made to roll back to the previous stable code version.
-   **11:00 AM**: The previous version was deployed, and the system began recovering.
-   **11:30 AM**: Full service restoration confirmed, and the application returned to normal operation.

### Root Cause

The issue was caused by a bug introduced in the latest code deployment. The login function did not handle cases of missing or corrupted user data correctly, which led to unhandled exceptions. As a result, when users attempted to log in, the Flask application crashed and returned "500 Internal Server Error" messages. The lack of error handling for this edge case led to the widespread impact of the outage.

### Resolution and Recovery

-   **9:10 AM**: Began investigating the login function and database performance, suspecting a potential data issue.
-   **9:45 AM**: After an initial review, escalated the issue to the lead developer, who helped trace the bug to the recent code deployment.
-   **10:15 AM**: Identified that the login function was crashing due to missing user data, causing unhandled exceptions.
-   **10:45 AM**: Decided to roll back the code to a previous version to restore functionality.
-   **11:00 AM**: Rolled back the deployment to the earlier stable release, and login functionality was restored.
-   **11:30 AM**: Confirmed full system recovery and verified that the issue was resolved.

### Corrective and Preventative Measures

-   Improve exception handling in the login and other critical areas of the Flask application.
-   Expand test coverage to include edge cases related to missing or corrupted user data.
-   Set up more granular monitoring to detect specific errors like "500 Internal Server Error" more effectively.
-   Document the rollback process to allow for quicker action in the event of a similar issue.

