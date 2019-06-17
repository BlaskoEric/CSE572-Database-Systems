
-- comment on table
COMMENT ON TABLE Contract IS 'table to contain info for business contracts';

-- comment on columns
COMMENT ON TABLE Contract.contractID IS 'primary key for the table, uniquely identifies contracts';
COMMENT ON TABLE Contract.clientID IS 'foreign key to BusinessClient table';
COMMENT ON TABLE Contract.officeID IS 'foreign key to Office table';
COMMENT ON TABLE Contract.startDate IS 'date the contract is effective';
COMMENT ON TABLE Contract.endDate IS 'date the contract expires';
COMMENT ON TABLE Contract.contractPrice IS 'price of the contract';
