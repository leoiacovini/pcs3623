
INSERT INTO rooms (name, building, department, size) VALUES ('sala1', 'Eletrica', 'PSI', 10);
INSERT INTO rooms (name, building, department, size) VALUES ('auditorio', 'Eletrica', 'PSI', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala2', 'Eletrica', 'PCS', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala3', 'Eletrica', 'PCS', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('laboratorio', 'Eletrica', 'PCS', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('sala1', 'Civil', 'PCC', 10);
INSERT INTO rooms (name, building, department, size) VALUES ('auditorio', 'Civil', 'PCC', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala2', 'Civil', 'PCC', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala3', 'Civil', 'PCC', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('laboratorio', 'Civil', 'PCC', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('sala1', 'Bienio', 'MAC', 10);
INSERT INTO rooms (name, building, department, size) VALUES ('auditorio', 'Bienio', 'MAC', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala2', 'Bienio', 'MAC', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala3', 'Bienio', 'MAC', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('laboratorio', 'Bienio', 'MAC', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('sala1', 'Mecanica', 'PME', 10);
INSERT INTO rooms (name, building, department, size) VALUES ('auditorio', 'Mecanica', 'PME', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala2', 'Mecanica', 'PME', 20);
INSERT INTO rooms (name, building, department, size) VALUES ('sala3', 'Mecanica', 'PME', 30);
INSERT INTO rooms (name, building, department, size) VALUES ('laboratorio', 'Mecanica', 'PME', 30);
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('teste@mail.com', '1234', 'teste', 'aluno');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('aluno@gmail.com', 'senha', 'aluno', 'aluno');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('aluno2@mail.com', '12342', 'aluno2', 'aluno');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('aluno3@mail.com', '12343', 'aluno3', 'aluno');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('aluno4@mail.com', '12344', 'aluno4', 'aluno');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('aluno5@mail.com', '12345', 'toledo', 'professor');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('prof1@mail.com', '1234', 'prof1', 'professor');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('prof2@mail.com', '1234', 'prof2', 'professor');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ('prof3@mail.com', '1234', 'prof3', 'professor');
INSERT INTO users (email, encrypted_password, name, user_type) VALUES ( 'prof4@mail.com', '1234', 'prof4', 'professor');
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-11-30 13:36:12.000000', '2016-11-30 14:36:15.721000', 'Evento 1', 'Um evento qualquer', 1, 'weekly', 1);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-02 15:36:12.000000', '2016-12-02 16:36:15.721000', 'Evento 2', 'Outro evento qualquer', 1, 'single', 2);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-02 15:36:12.000000', '2016-12-02 16:36:15.721000', 'Evento 3', 'Outro evento qualquer 1', 2, 'single', 3);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-03 14:36:12.000000', '2016-12-03 15:36:15.721000', 'Evento 4', 'Outro evento qualquer 2', 2, 'monthly', 1);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-04 13:36:12.000000', '2016-12-04 14:36:15.721000', 'Evento 5', 'Outro evento qualquer 3', 1, 'monthly', 2);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-05 19:36:12.000000', '2016-12-05 20:36:15.721000', 'Evento 6', 'Outro evento qualquer 4', 3, 'single', 3);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-06 11:36:12.000000', '2016-12-06 12:36:15.721000', 'Evento 7', 'Outro evento qualquer 5', 1, 'daily', 2);
INSERT INTO events (start_time, end_time, name, description, scheduled_by, recurrence, room_id) VALUES ('2016-12-07 10:36:12.000000', '2016-12-07 11:36:15.721000', 'Evento 8', 'Outro evento qualquer 6', 2, 'weekly', 4);
INSERT INTO features (name, description, quantity, img) VALUES ('quadro branco', 'desc', 1, 'whiteboard.png');
INSERT INTO features (name, description, quantity, img) VALUES ('quadro negro', 'desc', 1, 'blackboard.png');
INSERT INTO features (name, description, quantity, img) VALUES ('ar condicionado', 'desc', 1, 'ac.png');
INSERT INTO features (name, description, quantity, img) VALUES ('ventilador', 'desc', 1, 'ventilador.png');
INSERT INTO features (name, description, quantity, img) VALUES ('projetor', 'desc', 1, 'projetor.png');
INSERT INTO features (name, description, quantity, img) VALUES ('caixa de som', 'desc', 1, 'sound.png');
INSERT INTO features (name, description, quantity, img) VALUES ('luz', 'desc', 1, 'luz.png');
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Lousa Manchada', 'Lousa está manchada com a cor azul', 1, '2016-12-02 01:24:43.530000', 1, 1);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Ar quebrado', 'Ar condicionado está com defeito', 2, '2016-12-02 01:25:20.329000', 3, 2);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Sem giz', 'Sala está sem nenhum giz de louse', 1, '2016-12-02 01:26:46.117000', NULL, 3);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Faltando cadeiras', 'Faltam cadeiras na sala', 3, '2016-12-02 01:27:02.927000', NULL, 2);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Mesas quebradas', 'Muitas das mesas estão quebradas', 2, '2016-12-02 01:27:20.798000', NULL, 1);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Projeto quebrado', 'A lampada do projetor está queimada', 3, '2016-12-02 01:27:46.066000', 5, 2);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Problemas na caixa de som', 'Caixa de som não estão funcionando', 2, '2016-12-02 01:28:19.937000', 6, 3);
INSERT INTO problems (name, description, reported_by, reported_at, feature_id, room_id) VALUES ('Luzes queimadas', 'Varias das luzes estão queimadas', 1, '2016-12-02 01:28:44.403000', 7, 2);
INSERT INTO rooms_features (room_id, features_id) VALUES (1, 1);
INSERT INTO rooms_features (room_id, features_id) VALUES (1, 2);
INSERT INTO rooms_features (room_id, features_id) VALUES (1, 3);
INSERT INTO rooms_features (room_id, features_id) VALUES (2, 1);
INSERT INTO rooms_features (room_id, features_id) VALUES (2, 4);
INSERT INTO rooms_features (room_id, features_id) VALUES (2, 5);
INSERT INTO rooms_features (room_id, features_id) VALUES (3, 6);
INSERT INTO rooms_features (room_id, features_id) VALUES (3, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (4, 1);
INSERT INTO rooms_features (room_id, features_id) VALUES (4, 2);
INSERT INTO rooms_features (room_id, features_id) VALUES (4, 3);
INSERT INTO rooms_features (room_id, features_id) VALUES (5, 1);
INSERT INTO rooms_features (room_id, features_id) VALUES (5, 4);
INSERT INTO rooms_features (room_id, features_id) VALUES (5, 5);
INSERT INTO rooms_features (room_id, features_id) VALUES (6, 6);
INSERT INTO rooms_features (room_id, features_id) VALUES (6, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (7, 1);
INSERT INTO rooms_features (room_id, features_id) VALUES (7, 2);
INSERT INTO rooms_features (room_id, features_id) VALUES (7, 3);
INSERT INTO rooms_features (room_id, features_id) VALUES (8, 1);
INSERT INTO rooms_features (room_id, features_id) VALUES (8, 4);
INSERT INTO rooms_features (room_id, features_id) VALUES (8, 5);
INSERT INTO rooms_features (room_id, features_id) VALUES (9, 6);
INSERT INTO rooms_features (room_id, features_id) VALUES (10, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (11, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (12, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (13, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (14, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (15, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (16, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (17, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (18, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (19, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (20, 7);
INSERT INTO rooms_features (room_id, features_id) VALUES (1, 6)
