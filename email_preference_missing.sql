#Find libraries from the 2016 circulation year that have no email address provided but have their notice preference set to email. In your solution, output their home library code.

select  home_library_code
from library_usage
where circulation_active_year = 2016
        AND notice_preference_definition = 'email'
        AND provided_email_address = FALSE