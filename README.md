# Nate-Jesseau---SnapChat
CREATE TABLE Users
(
  UserID INT NOT NULL,
  Email VARCHAR(60) NOT NULL,
  Name VARCHAR(60) NOT NULL,
  Phone_Number VARCHAR(15),
  PRIMARY KEY (UserID)
);

CREATE TABLE Message
(
  Chat_ID INT NOT NULL,
  Sender_UserID INT NOT NULL,
  Group_ID INT,
  Timestamp DATE NOT NULL,
  PRIMARY KEY (Chat_ID),
  FOREIGN KEY (Sender_UserID) REFERENCES Users (UserID),
  FOREIGN KEY (Group_ID) REFERENCES Groups (Group_ID)
);

CREATE TABLE Snap
(
  SnapID INT NOT NULL,
  Sender_UserID INT NOT NULL,
  Receiver_UserID INT NOT NULL,
  Image_Type VARCHAR(6) NOT NULL,
  CONSTRAINT valid_Image_Type CHECK (Image_Type IN ('Photo', 'Video')),
  PRIMARY KEY (SnapID),
  FOREIGN KEY (Sender_UserID) REFERENCES Users (UserID),
  FOREIGN KEY (Receiver_UserID) REFERENCES Users (UserID)
);

CREATE TABLE Picture
(
  Snap_ID INT NOT NULL,
  Image_Type VARCHAR(6) NOT NULL,
  Timestamp DATE NOT NULL,
  Location VARCHAR(50) NOT NULL,
  CONSTRAINT valid_Image_Type CHECK (Image_Type IN ('Photo', 'Video')),
  PRIMARY KEY (Snap_ID),
  FOREIGN KEY (Snap_ID) REFERENCES Snap (SnapID)
);

CREATE TABLE Saves
(
  Snap_ID INT NOT NULL,
  Saved_By_UserID INT NOT NULL,
  Image_Type VARCHAR(6) NOT NULL,
  Timestamp DATE NOT NULL,
  CONSTRAINT valid_Image_Type CHECK (Image_Type IN ('Photo', 'Video')),
  PRIMARY KEY (Snap_ID),
  FOREIGN KEY (Snap_ID) REFERENCES Snap (SnapID),
  FOREIGN KEY (Saved_By_UserID) REFERENCES Users (UserID)
);

CREATE TABLE Friend
(
  Request_ID INT NOT NULL,
  Sender_UserID INT NOT NULL,
  Receiver_UserID INT NOT NULL,
  PRIMARY KEY (Request_ID),
  FOREIGN KEY (Sender_UserID) REFERENCES Users (UserID),
  FOREIGN KEY (Receiver_UserID) REFERENCES Users (UserID)
);

CREATE TABLE Memory
(
  Snap_ID INT NOT NULL,
  Date DATE NOT NULL,
  PRIMARY KEY (Snap_ID),
  FOREIGN KEY (Snap_ID) REFERENCES Snap (SnapID)
);

CREATE TABLE Groups
(
  Group_ID INT NOT NULL,
  Created_By_UserID INT NOT NULL,
  Group_Name VARCHAR(60) NOT NULL,
  PRIMARY KEY (Group_ID),
  FOREIGN KEY (Created_By_UserID) REFERENCES Users (UserID)
);
