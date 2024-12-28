USE Online_EDU; 
CREATE TABLE Roles (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Name VARCHAR(255) NOT NULL,
    NormalizedName VARCHAR(255) NOT NULL
);

CREATE TABLE UserRoles (
    User_Id INT NOT NULL,
    Role_Id INT NOT NULL,
    FOREIGN KEY (User_Id) REFERENCES Users (id),
    FOREIGN KEY (Role_Id) REFERENCES Roles (Id)
);

CREATE TABLE Purchase (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    User_Id INT NOT NULL,
    Course_Id INT NOT NULL,
    Payment_Amount DECIMAL NOT NULL,
    Payment_Date SMALLDATETIME DEFAULT GETDATE(),
    FOREIGN KEY (User_Id) REFERENCES Users (id),
    FOREIGN KEY (Course_Id) REFERENCES Courses (id)
);

CREATE TABLE Certificate(
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    User_Id INT NOT NULL,
    Course_Id INT NOT NULL,
    Issue_Date SMALLDATETIME NOT NULL,
    Certificate_Code VARCHAR(50) NOT NULL UNIQUE,
    Status VARCHAR(50) NOT NULL,
    FOREIGN KEY (User_Id) REFERENCES Users (id),
    FOREIGN KEY (Course_Id) REFERENCES Courses (id)
);

CREATE TABLE Address (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    City VARCHAR(255) NOT NULL,
    District VARCHAR(255) NOT NULL,
    Address_Details VARCHAR(255) NOT NULL
);

CREATE TABLE UserAddresses (
    User_Id INT NOT NULL,
    Address_Id INT NOT NULL,
    FOREIGN KEY (User_Id) REFERENCES Users (id),
    FOREIGN KEY (Address_Id) REFERENCES Address (Id)
);

CREATE TABLE CourseContent (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Course_Id INT NOT NULL,
    Title VARCHAR(255) NOT NULL,
    File_Path VARCHAR(255) NOT NULL,
    Type VARCHAR(255) NOT NULL,
    FOREIGN KEY (Course_Id) REFERENCES Courses (id)
);

CREATE TABLE CourseReviews (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Course_Id INT NOT NULL,
    User_Id INT NOT NULL,
    Rating DECIMAL(3, 2) NULL,
    Review TEXT NULL,
    Review_Date SMALLDATETIME DEFAULT GETDATE(),
    FOREIGN KEY (User_Id) REFERENCES Users (id),
    FOREIGN KEY (Course_Id) REFERENCES Courses (id)
);

CREATE TABLE Enrollment (
    Id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    User_Id INT NOT NULL,
    Course_Id INT NOT NULL,
    Enrollment_Date SMALLDATETIME DEFAULT GETDATE(),
    FOREIGN KEY (User_Id) REFERENCES Users (id),
    FOREIGN KEY (Course_Id) REFERENCES Courses (id)
);
