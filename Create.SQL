CREATE TABLE Users  
(
UserID INT Not Null,
Email VARCHAR (60) NOT NULL,
Name VARCHAR (60) NOT NULL,
Phone_Number VARCHAR (15),
PRIMARY KEY (UserID)
);

CREATE TABLE Message    
(
Chat_ID INT NOT NULL,
Sender_UserID INT NOT NULL,
Group_ID INT,
Timestamp DATE NOT NULL,
PRIMARY KEY (Chat_ID),
FOREIGN KEY (Sender_UserID) REFERENCES User (UserID),
FOREIGN KEY (Group_ID) References Group
);

CREATE TABLE Snap  
(
SnapID INT NOT NULL, 
Sender_UserID INT NOT NULL,
Receiver_UserID INT NOT NULL,
Image_Type VARCHAR (6) NOT NULL,
Constraint valid_Image_Type check (Image_Type in (`Photo`,’Video’)),
PRIMARY KEY (SnapID), 
FOREIGN KEY (Sender_UserID) REFERENCES User (UserID),
FOREIGN KEY (Receiver_UserID) REFERENCES User (UserID)
);

CREATE TABLE Picture    
(
Snap_ID INT NOT NULL,
Image_Type VARCHAR (6), NOT NULL,
Timestamp DATE NOT NULL,
Location VARCHAR (50) NOT NULL,
Constraint valid_Image_Type check (Image_Type in (‘Photo’,’Video’)),
PRIMARY KEY (Snap_ID),
FOREIGN KEY (Snap_ID) References Snap (Snap_ID)
);

CREATE TABLE Saves   
(
Snap_ID INT NOT NULL,
Saved_By_UserID INT NOT NULL
Image_Type VARCHAR (6), NOT NULL,
Timestamp DATE NOT NULL,
Constraint valid_Image_Type check (Image_Type in (‘Photo’,’Video’)),
PRIMARY KEY (Snap_ID)
FOREIGN KEY (Snap_ID) References Snap (Snap_ID)
FOREIGN KEY (UserID) References User (UserID)
);

CREATE TABLE Friend    
(
Request_ID INT NOT NULL,
Sender_UserID INT NOT NULL,
Receiver_UserID INT NOT NULL
PRIMARY KEY (Request_ID)
FOREIGN KEY (Sender_UserID) References User (UserID)
FOREIGN KEY (Receiver_UserID) References User (UserID)
);

CREATE TABLE Memory  
(
Snap_ID INT NOT NULL,
Date DATE NOT NULL,
PRIMARY KEY (Snap_ID)
FOREIGN KEY (Snap_ID) References Snap (Snap_ID)
);

CREATE TABLE Groups   
(
Group_ID INT NOT NULL,
Created_By_UserID INT NOT NULL,
Group_Name VARCHAR (60) NOT NULL,
PRIMARY KEY (Group_ID)
FOREIGN KEY (Created_By_UserID) References User (UserID)
);
