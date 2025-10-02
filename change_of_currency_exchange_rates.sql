/*
You are given a list of exchange rates from various currencies to US Dollars (USD) in different months. 
Show how the exchange rate of all the currencies changed in the first half of 2020. 
Output the currency code and the difference between values of the exchange rate between July 1, 2020 and January 1, 2020.
*/

SELECT
    a.source_currency,
    (a.exchange_rate - b.exchange_rate) AS difference_rate
FROM
    sf_exchange_rate a
JOIN (
    SELECT
        source_currency,
        exchange_rate
    FROM
        sf_exchange_rate
    WHERE
        date = '2020-01-01' -- Standard YYYY-MM-DD format
) AS b
ON
    a.source_currency = b.source_currency
WHERE
    a.date = '2020-07-01'

    /*
SELECT
    jan.source_currency,
    (jul.exchange_rate - jan.exchange_rate) AS rate_difference
FROM
    sf_exchange_rate AS jan
JOIN
    sf_exchange_rate AS jul
ON
    jan.source_currency = jul.source_currency
WHERE
    jan.date = '2020-01-01' AND jul.date = '2020-07-01'
    */
