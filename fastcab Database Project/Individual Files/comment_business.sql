
-- comment on table
COMMENT ON TABLE BusinessClient IS 'table to contain info for all business clients';

-- comment on columns
COMMENT ON TABLE BusinessClient.clientID IS 'unique ID for each business client';
COMMENT ON TABLE BusinessClient.officeID IS 'foreign key to Office table';
COMMENT ON TABLE BusinessClient.businessName IS 'name of the business';
COMMENT ON TABLE BusinessClient.businessAddress IS 'street address of the business';
COMMENT ON TABLE BusinessClient.businessCity IS 'city where the business is located';
