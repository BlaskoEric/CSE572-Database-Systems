

-- comment on table
COMMENT ON TABLE PrivateClient IS 'table to contain info for private clients';

-- comment on columns
COMMENT ON TABLE PrivateClient.clientID IS 'private key to uniquely identify a private client';
COMMENT ON TABLE PrivateClient.officeID IS 'foreign key to relate to Office table';
COMMENT ON TABLE PrivateClient.fName IS 'client first name';
COMMENT ON TABLE PrivateClient.lName IS 'client last name';
COMMENT ON TABLE PrivateClient.clientGender IS 'client gender';
COMMENT ON TABLE PrivateClient.clientAddress IS 'client street address';
COMMENT ON TABLE PrivateClient.clientAge IS 'client age. This should have been DOB, may need to be updated later';
COMMENT ON TABLE PrivateClient.clientCity IS 'city client lives in';
