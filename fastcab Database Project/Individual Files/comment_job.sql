
-- comment on table
COMMENT ON TABLE Job IS 'table for storing info on private and business client jobs';

-- comment on coulumn
COMMENT ON TABLE Job.jobID IS 'primary key for the table';
COMMENT ON TABLE Job.contractID IS 'foreign key to reference BusinessClient table';
COMMENT ON TABLE Job.clientID IS 'foreign key to reference PrivateClient table';
COMMENT ON TABLE Job.driverID IS 'foreign key used with licensePlateNo to reference Drivers table';
COMMENT ON TABLE Job.licensePlateNo IS 'foreign key used to reference Taxi table';
COMMENT ON TABLE Job.jobPrice IS 'used for private clients outside a contract';
COMMENT ON TABLE Job.jobDate IS 'date when the job was done, applies to both private and business clients';

