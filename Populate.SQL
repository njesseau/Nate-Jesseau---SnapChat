INSERT INTO User (UserID, Email, Name, Phone_Number) VALUES
(1, 'alice@example.com', 'Alice Johnson', '123-456-7890'),
(2, 'bob@example.com', 'Bob Smith', '987-654-3210'),
(3, 'charlie@example.com', 'Charlie Brown', '555-789-1234');

-- Insert data into GroupTable
INSERT INTO GroupTable (Group_ID, Created_By_UserID, Group_Name) VALUES
(1, 1, 'Friends Group'),
(2, 2, 'Work Chat');

-- Insert data into Message table
INSERT INTO Message (Chat_ID, Sender_UserID, Group_ID, Timestamp) VALUES
(1, 1, 1, '2024-03-01'),
(2, 2, 1, '2024-03-02'),
(3, 3, 2, '2024-03-03');

-- Insert data into Snap table
INSERT INTO Snap (SnapID, Sender_UserID, Receiver_UserID, Image_Type) VALUES
(1, 1, 2, 'Photo'),
(2, 2, 3, 'Video'),
(3, 3, 1, 'Photo');

-- Insert data into Picture table
INSERT INTO Picture (Snap_ID, Image_Type, Timestamp, Location) VALUES
(1, 'Photo', '2024-03-01', 'New York'),
(2, 'Video', '2024-03-02', 'Los Angeles'),
(3, 'Photo', '2024-03-03', 'Toronto');

-- Insert data into Save table
INSERT INTO Save (Snap_ID, Saved_By_UserID, Image_Type, Timestamp) VALUES
(1, 2, 'Photo', '2024-03-04'),
(2, 3, 'Video', '2024-03-05');

-- Insert data into Friend table
INSERT INTO Friend (Request_ID, Sender_UserID, Receiver_UserID) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1);

-- Insert data into Memory table
INSERT INTO Memory (Snap_ID, Date ) VALUES
(1, '2024-03-06'),
(2, '2024-03-07');
