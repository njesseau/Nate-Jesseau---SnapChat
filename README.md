
# SnapChat Database Overview


This database is designed to support the management of user interactions on a social media platform similar to Snapchat by organizing data related to users, messages, snaps, friend requests, and groups. The Users table stores details about individuals, identified by their unique user ID, with additional information such as email, name, and phone number. Each user can send messages or snaps, which are recorded in the Message and Snap tables, respectively. The Message table tracks communication between users within specific group chats, while the Snap table records the sharing of photos or videos between users, storing metadata such as image type and sender/receiver information.

The Friend table manages the relationships between users, tracking incoming and outgoing friend requests. When users save snaps, this action is recorded in the Saves table, providing insight into user engagement with the shared content. The Picture table stores additional metadata for snaps, such as location and timestamp.

The Groups table organizes users into groups for group chats, and the Memory table stores a history of saved snaps, allowing users to revisit past shared moments. This database ensures that interactions such as messaging, snapping, and friend requests are efficiently managed and retrievable, enabling platform administrators to monitor user behavior, track engagement, and maintain a smooth user experience.

## Entity Relational Model


## Relational Model 

## Source Code

* [Create Script (DDL](create.sql)













