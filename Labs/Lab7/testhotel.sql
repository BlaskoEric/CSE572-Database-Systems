
SET PAUSE OFF

spool testHotelOutput_Eric.txt

-- comments for tables in data dictionary

COMMENT ON TABLE Hotel IS 'Single hotel info'
COMMENT ON TABLE Room IS 'Individual room desc at hotel'
COMMENT ON TABLE Booking IS 'Data of rooms that have been booked'
COMMENT ON TABLE Guest IS 'Information on each guest'

-- comments for table columns in data dictionary

COMMENT ON COLUMN Hotel.roomNo IS 'Unique number for each hotel'
COMMENT ON COLUMN Hotel.hotelName IS 'Name of the given hotel'
COMMENT ON COLUMN Hotel.city IS 'Location of hotel'
COMMENT ON COLUMN Room.roomNo IS 'Unique room number to individual hotel'
COMMENT ON COLUMN Room.hotelNo Is 'Hotel that rooms are apart of'
COMMENT ON COLUMN Room.Rtype IS 'Type of room'
COMMENT ON COLUMN Room.price IS 'Price of room'
COMMENT ON COLUMN Booking.hotelNo IS 'Hotel room booked at'
COMMENT ON COLUMN Booking.guestNo IS 'unique number of guest staying'
COMMENT ON COLUMN Booking.dateFrom IS 'Start of stay date'
COMMENT ON COLUMN Booking.dateTo IS 'last day of stay'
COMMENT ON COLUMN Booking.roomNo IS 'Room guest is staying in'
COMMENT ON COLUMN Guest.guestNo IS 'Unique id of quest'
COMMENT ON COLUMN Guest.guestName IS 'Name of guest'
COMMENT ON COLUMN Guest.guestAddress IS 'Address of guest'

--Views and their queries

--1.View for hotel rooms
DROP VIEW HotelRooms;
CREATE VIEW HotelRooms AS
    SELECT h.hotelNo, h.HotelName, h.city, r.Rtype, r.price
    FROM Hotel h, Room r
    ORDER BY h.hotelNo;

DESC HotelRooms;
SELECT * FROM HotelRooms;
SELECT hotelNo, HotelName, city, Rtype AS "ROOM TYPE", price
    FROM HotelRooms
    WHERE Rtype = 'Suite';

--2.View to display guest info at hotels
DROP VIEW GuestLog;
CREATE VIEW GuestLog AS
    SELECT h.hotelNo, g.guestNo, g.guestName, b.dateFrom, b.dateTo, r.roomNo, r.Rtype
    FROM Hotel h, Guest g, Booking b, Room r
    WHERE h.hotelNo = b.hotelNo AND g.guestNo = b.guestNo AND r.roomNo = b.roomNo
        AND h.hotelNo = r.hotelNo;

DESC GuestLog;
SELECT * FROM GuestLog;
SELECT hotelNo, guestNo, guestName AS Name, dateFrom AS "FROM", dateTo AS "TO"
    FROM GuestLog
    ORDER BY guestName;

--3.View Listings
DROP VIEW Listings;
CREATE VIEW Listings AS
    SELECT h.hotelName, r.roomNo, r.Rtype, r.price
    FROM Hotel h, Room r
    WHERE h.hotelNo = r.hotelNo;

DESC Listings;
SELECT * FROM Listings;
SELECT hotelName, roomNo, Rtype, price
    FROM Listings
    WHERE hotelName = 'Valley Stay'
    ORDER BY hotelName;

--4.View GuestDurations
DROP VIEW GuestDurations;
CREATE VIEW GuestDurations AS
    SELECT g.guestNo, g.guestName, b.dateFrom, b.dateTo
    FROM Guest g, Booking b
    WHERE g.guestNo = b.guestNo;

DESC GuestDurations;
SELECT * FROM GuestDurations;
SELECT guestNo,guestName, dateTo-dateFrom AS DURATION
    FROM GuestDurations;

--5.View GuestInfo
DROP VIEW GuestInfo;
CREATE VIEW GuestInfo AS
    SELECT guestNo, guestName,guestAddress
    FROM Guest;

DESC GuestInfo;
SELECT * FROM GuestInfo;
SELECT guestNo, guestName, guestAddress
    FROM GuestInfo
    ORDER BY guestNo;

spool off













