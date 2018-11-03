GRANT SELECT,INSERT,UPDATE,DELETE,CREATE TEMPORARY TABLES,EXECUTE ON *.* TO `app.user`@`%` identified BY 'Agenda_001';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE TEMPORARY TABLES,EXECUTE,DROP ON *.* to `app.poweruser`@`%` identified BY 'Agenda_001';
GRANT ALL ON *.* TO `app.migration`@`%` identified BY 'Agenda_001';
GRANT ALL ON *.* TO `root`@`%` identified BY 'Agenda_001' WITH GRANT OPTION;

FLUSH PRIVILEGES;