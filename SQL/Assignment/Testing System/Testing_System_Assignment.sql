DROP	DATABASE	IF	EXISTS	TestingSytem;
CREATE	DATABASE	TestingSytem;
USE	Testingsytem;
CREATE	TABLE	Department	(
DepartmentID	INT,
DepartmentName	VARCHAR(50)
);

CREATE	TABLE	Postion	(
PostionID	INT,
PostionName	VARCHAR(50)
);

CREATE	TABLE	`Account`	(
AccountID	INT,
Email		VARCHAR(50),
Username	VARCHAR(50),
Fullname	VARCHAR(50),
DepartmentID	INT,
CreateDate		DATE
);
CREATE	TABLE	`Group`	(
GroupID	INT,
GroupName	VARCHAR(50),
CreatorID	INT,
CreateDate	DATE
);
CREATE	TABLE	GroupAccount	(
GroupID		INT,
AccountID	INT,
JoinDate	DATE
);

CREATE	TABLE	TypeQuestion	(
TypeID	INT
);

CREATE	TABLE	CategoryQuestion	(
CategoryID		INT,
CategoryName	VARCHAR(50)
);

CREATE	TABLE	Question	(
QuestionID	INT,
Content		VARCHAR(50),
CategoryID	INT,
TypeID		INT,
CreatorID	INT,
CreateDate	DATE
);

CREATE	TABLE	Answer	(
AnswerID	INT,
Content		VARCHAR(50),
QuestionID	INT,
Iscorrect	VARCHAR(50)
);

CREATE	TABLE	EXam	(
EXamID		INT,
`Code`		VARCHAR(50),
Title		VARCHAR(50),
CategoryID	INT,
Duration	INT,
CreatorID	INT,
CreateDate	DATE
);

CREATE	TABLE	ExamQuestion	(
EXamID		INT,
QuestionID	INT
);