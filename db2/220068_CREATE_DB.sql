CREATE TABLE CUSTOMER ( cAFM NUMBER NOT NULL,cAT VARCHAR2(15) NOT NULL,cLastName VARCHAR2(25) NOT NULL,cFirstName VARCHAR2(25) NOT NULL,cRegDate DATE  NOT NULL ,
                       PRIMARY KEY (cAFM) ,
                       UNIQUE  (cAT)) ;

CREATE TABLE BIKECAT (Name VARCHAR2(20) NOT NULL,BicycleCategoryPrice NUMBER(8,2) NOT NULL,BicycleCount NUMBER NOT NULL ,
                      PRIMARY KEY (Name));

CREATE TABLE BICYCLE (bPlateNumber VARCHAR2(12) NOT NULL,bColor VARCHAR2(15) NOT NULL,bWeight NUMBER NOT NULL ,bWheelDiameter NUMBER NOT NULL,bCost NUMBER NOT NULL,bBookTimes NUMBER NOT NULL,BikeCatName VARCHAR2(15) NOT NULL,
                     PRIMARY KEY (bPlateNumber),
                     FOREIGN KEY  (BikeCatName) REFERENCES  BIKECAT (Name)) ;

CREATE TABLE ACCESSORY (aNAME VARCHAR2(25) NOT NULL ,aPrice NUMBER(8,2) NOT NULL,
                      PRIMARY KEY (aName));

CREATE TABLE PHONE (cAFM NUMBER NOT NULL,cPHONE NUMBER NOT NULL,
                   PRIMARY KEY (cAFM,cPHONE),
                   FOREIGN KEY (cAFM) REFERENCES CUSTOMER (cAFM));

CREATE TABLE BOOKING (cAFM NUMBER NOT NULL,bPlateNumber VARCHAR2(12) NOT NULL,OutDate DATE NOT NULL,InDate DATE ,
                     PRIMARY KEY (cAFM,bPlateNumber,OutDate),
                     FOREIGN KEY (cAFM) REFERENCES CUSTOMER (cAFM),
		     FOREIGN KEY (bPlateNumber) REFERENCES BICYCLE(bPlateNumber));

CREATE TABLE BICYCLE_ACCESSORIES ( bPlateNumber  VARCHAR2(12) NOT NULL,aName VARCHAR2(25) NOT NULL,
                    PRIMARY KEY (bPlateNumber,aName),
                    FOREIGN KEY (bPlateNumber) REFERENCES BICYCLE(bPlateNumber),
                    FOREIGN KEY (aName) REFERENCES ACCESSORY(aName));                                     