/*
Find all posts which were reacted to with a heart. 
For such posts output all columns from facebook_posts table.
*/

select posts.*
FROM facebook_posts posts
JOIN facebook_reactions reactions
ON posts.post_id = reactions.post_id
where reactions.reaction = 'heart'