SELECT
event_name,
COUNT(DISTINCT user_id) AS users
FROM dbo.user_event
GROUP BY event_name
ORDER BY users DESC;

WITH funnel AS (
    SELECT 
        user_id,
        MAX(CASE WHEN event_name = 'visit' THEN 1 ELSE 0 END) AS visit,
        MAX(CASE WHEN event_name = 'signup' THEN 1 ELSE 0 END) AS signup,
        MAX(CASE WHEN event_name = 'profile_completed' THEN 1 ELSE 0 END) AS profile_completed,
        MAX(CASE WHEN event_name = 'application_submitted' THEN 1 ELSE 0 END) AS application_submitted
    FROM dbo.user_event
    GROUP BY user_id 
)

SELECT
    SUM(visit) AS step1_visits,
    SUM(signup) AS step2_signups,
    SUM(profile_completed) AS step3_profiles,
    SUM(application_submitted) AS step4_applications,
    ROUND(100.0 * SUM(signup)/SUM(visit), 2) AS visit_to_signup_pct,
    ROUND(100.0 * SUM(profile_completed)/SUM(signup), 2) AS signup_to_profile_pct,
    ROUND(100.0 * SUM(application_submitted)/SUM(profile_completed), 2) AS profile_to_application_pct
FROM funnel;
