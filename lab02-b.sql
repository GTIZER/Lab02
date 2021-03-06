ALTER TABLE soft ADD CONSTRAINT program PRIMARY KEY (id);
ALTER TABLE pcs ADD CONSTRAINT peka PRIMARY KEY (id);
ALTER TABLE rooms ADD CONSTRAINT square PRIMARY KEY (id);
ALTER TABLE employees ADD CONSTRAINT emp PRIMARY KEY (id);
ALTER TABLE installs ADD CONSTRAINT inst PRIMARY KEY (pc_id);
ALTER TABLE installs ADD CONSTRAINT inst FOREIGN KEY (soft_id) REFERENCES soft (id);
ALTER TABLE installs ADD CONSTRAINT inst FOREIGN KEY (pc_id) REFERENCES pcs (id);
ALTER TABLE pcs ADD CONSTRAINT peka FOREIGN KEY (room_id) REFERENCES rooms (id);
ALTER TABLE rooms ADD CONSTRAINT square FOREIGN KEY (emp_id) REFERENCES employees (id);
