-- users tablosu olusturma

CREATE TABLE users (
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
is_active BOOL	
);


-- posts tablosu olusturma

CREATE TABLE posts(
post_id SERIAL PRIMARY KEY,
user_id INT NOT NULL,
category_id INT NOT NULL,
title VARCHAR(50) NOT NULL,
content TEXT NOT NULL,
view_count INT DEFAULT 0,
creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
is_published BOOL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


-- categories tablosu olusturma

CREATE TABLE categories (
category_id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL UNIQUE,
creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0)
);


-- comments tablosu olusturma

CREATE TABLE comments(
comment_id SERIAL PRIMARY KEY,
post_id INT NOT NULL,
user_id INT,
comment TEXT NOT NULL,
creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
is_confirmed BOOL,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (post_id) REFERENCES posts(post_id)
);


-- users tablosuna veri ekleme (10)

insert into users (username, email, creation_date, is_active) values ('rpanketh0', 'awillishire0@sina.com.cn', '2022-04-29 01:53:09', true);
insert into users (username, email, creation_date, is_active) values ('jmciver1', 'scroyser1@mtv.com', '2020-02-22 07:34:38', true);
insert into users (username, email, creation_date, is_active) values ('ahedden2', 'arein2@pbs.org', '2021-10-04 02:08:28', false);
insert into users (username, email, creation_date, is_active) values ('ctregidga3', 'lgerardeaux3@networkadvertising.org', '2021-06-01 09:26:00', false);
insert into users (username, email, creation_date, is_active) values ('kcrickmore4', 'dortelt4@google.ca', '2023-01-28 06:10:19', false);
insert into users (username, email, creation_date, is_active) values ('mcajkler5', 'mratray5@acquirethisname.com', '2022-10-22 21:48:39', true);
insert into users (username, email, creation_date, is_active) values ('cmullins6', 'chull6@wikia.com', '2020-03-26 08:30:32', true);
insert into users (username, email, creation_date, is_active) values ('wswiffan7', 'cgrissett7@rambler.ru', '2020-07-07 23:12:44', true);
insert into users (username, email, creation_date, is_active) values ('cmacgillacolm8', 'mfreeth8@cpanel.net', '2020-04-22 10:33:14', false);
insert into users (username, email, creation_date, is_active) values ('btejada9', 'kdonaghie9@diigo.com', '2021-10-03 17:57:38', true);


-- categories tablosuna veri ekleme (3)

insert into categories (name, creation_date) values ('Fitness', '2019-04-29 01:53:09');
insert into categories (name, creation_date) values ('Tech', '2019-06-29 01:53:09');
insert into categories (name, creation_date) values ('Travel', '2019-09-29 01:53:09');


-- posts tablosuna veri ekleme (50)

insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 3, 'Graphic Interface', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 484, '2020-07-08 04:07:43', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 3, 'contingency', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 652, '2021-11-29 02:36:45', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 3, 'mission-critical', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 313, '2022-10-12 10:25:00', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 2, 'product', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 549, '2020-01-16 08:33:16', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 2, 'throughput', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 447, '2021-04-26 06:19:18', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 2, 'web-enabled', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 274, '2020-02-29 15:26:16', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 1, 'Object-based', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 329, '2020-08-15 23:03:03', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'Grass-roots', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 619, '2020-06-06 19:44:44', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 3, 'methodical', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.

Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.

Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', 585, '2020-09-19 06:24:49', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 3, 'model', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.

Fusce consequat. Nulla nisl. Nunc nisl.', 350, '2022-06-27 02:55:15', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 3, 'multi-state', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 623, '2022-08-22 19:21:58', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'multi-tasking', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 804, '2023-02-05 17:33:54', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'service-desk', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 52, '2021-05-28 07:05:41', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 1, 'upward-trending', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 227, '2020-05-29 03:39:40', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 1, 'middleware', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 599, '2020-03-08 19:45:05', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'Triple-buffered', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 724, '2021-03-29 02:39:31', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'mission-critical', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 851, '2020-04-12 23:27:57', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 2, 'solution', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 496, '2022-11-16 06:09:06', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'Compatible', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 109, '2020-10-21 10:07:54', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'budgetary management', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 378, '2023-02-18 12:07:04', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 3, 'Intuitive', 'Fusce consequat. Nulla nisl. Nunc nisl.', 928, '2022-07-26 01:51:36', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 3, 'knowledge base', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.

Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 366, '2021-11-13 21:39:18', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 3, 'human-resource', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 666, '2020-08-05 13:39:21', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 1, 'secondary', 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.

In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 828, '2022-01-03 07:42:20', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 3, 'encoding', 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 455, '2020-09-06 05:43:34', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 2, 'Re-engineered', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 657, '2021-12-24 20:05:48', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 3, 'Graphical User Interface', 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 826, '2021-11-08 00:10:10', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (1, 1, 'attitude-oriented', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 252, '2020-04-19 07:46:00', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (8, 3, 'challenge', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 822, '2020-11-13 09:18:43', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (2, 1, 'next generation', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 610, '2022-08-14 18:48:29', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'Upgradable', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 602, '2020-07-13 01:21:35', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 1, 'secondary', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 317, '2021-05-25 14:58:15', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 3, 'Phased', 'In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 285, '2022-01-26 09:43:35', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 3, 'reciprocal', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 557, '2021-11-03 15:56:19', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 1, 'Reactive', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 198, '2022-01-03 16:06:32', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 3, 'Public-key', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.

Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 783, '2022-12-06 07:17:01', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (9, 2, 'groupware', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 285, '2022-12-21 16:28:10', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (10, 2, 'dynamic', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1000, '2020-03-18 10:03:32', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 2, 'Focused', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.

Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', 274, '2020-07-12 07:24:04', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 2, 'Expanded', 'Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 360, '2022-12-21 12:50:00', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'parallelism', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 317, '2022-12-22 04:30:26', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 1, 'project', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 104, '2021-11-15 03:25:17', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 3, 'firmware', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 52, '2021-10-05 20:35:53', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 3, 'Programmable', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.

Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 533, '2022-07-03 11:48:17', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (6, 3, 'encryption', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 660, '2020-01-14 18:17:23', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (7, 2, 'Right-sized', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 366, '2021-12-16 01:53:26', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 1, 'circuit', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 907, '2021-05-03 03:15:26', false);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (5, 3, 'access', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.', 186, '2021-10-01 16:59:33', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (3, 2, 'application', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 225, '2022-02-07 07:27:40', true);
insert into posts (user_id, category_id, title, content, view_count, creation_date, is_published) values (4, 1, 'fresh-thinking', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 778, '2021-06-24 10:31:49', false);



insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 2, 'augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', '2021-06-21 01:42:27', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 9, 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis', '2022-03-12 06:32:20', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 5, 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', '2021-02-27 07:14:05', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 1, 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', '2022-11-14 18:16:56', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 9, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2021-12-19 14:33:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 4, 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', '2020-09-14 04:32:41', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 5, 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', '2021-12-19 04:06:58', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 5, 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', '2020-01-28 19:09:29', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 4, 'elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', '2023-04-07 22:36:00', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 8, 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla', '2021-05-26 17:49:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 6, 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2023-03-17 04:30:27', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 3, 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', '2023-06-16 04:14:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 9, 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', '2020-06-17 13:08:59', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 6, 'duis ac nibh fusce lacus purus aliquet at feugiat non', '2020-11-29 23:17:47', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (1, 7, 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', '2022-07-16 12:47:20', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 9, 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', '2022-09-22 07:04:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 7, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', '2023-06-14 17:12:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 6, 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', '2023-02-28 21:32:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 4, 'est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', '2020-03-24 11:03:42', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 8, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', '2022-05-28 07:33:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 4, 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in', '2023-01-20 01:50:16', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 7, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien', '2020-12-30 09:15:31', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 1, 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', '2021-06-30 23:41:46', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 10, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', '2020-06-09 07:24:17', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 7, 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', '2020-04-23 04:11:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 6, 'quam nec dui luctus rutrum nulla tellus in sagittis dui vel', '2022-02-11 20:43:49', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 1, 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', '2022-01-13 09:23:42', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 3, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', '2021-11-17 06:38:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 1, 'purus phasellus in felis donec semper sapien a libero nam dui', '2021-06-03 03:55:12', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 6, 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', '2021-01-06 12:24:08', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 6, 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', '2020-03-31 10:13:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (21, 3, 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', '2020-10-06 03:04:18', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 10, 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', '2021-04-22 14:05:45', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 2, 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas', '2021-08-03 10:00:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 3, 'est et tempus semper est quam pharetra magna ac consequat metus sapien', '2022-10-03 21:57:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 6, 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', '2022-06-13 17:26:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 9, 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', '2023-05-24 09:07:46', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 1, 'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', '2021-01-15 07:55:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 8, 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', '2020-11-06 06:56:35', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (47, 9, 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', '2020-11-17 16:57:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (19, 1, 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non', '2022-02-14 20:42:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 1, 'elit ac nulla sed vel enim sit amet nunc viverra', '2020-12-06 16:02:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 8, 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', '2023-06-12 02:33:38', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (19, 10, 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', '2022-11-25 00:18:02', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 2, 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', '2021-09-13 00:40:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (47, 9, 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '2022-10-28 00:49:02', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 7, 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', '2021-08-02 22:14:20', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 6, 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', '2022-12-01 06:06:22', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 7, 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2020-04-10 08:42:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 8, 'tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', '2020-10-10 16:14:24', true);


-- comments tablosune veri ekleme (250)

insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 6, 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', '2021-09-27 01:24:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (21, 6, 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi', '2021-07-26 01:57:10', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 8, 'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', '2021-01-14 10:48:16', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 8, 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis', '2022-06-28 18:07:12', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (32, 'orci eget orci vehicula condimentum curabitur in libero ut massa', '2022-04-12 00:06:49', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 3, 'enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', '2022-08-15 11:43:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 2, 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', '2022-10-23 11:23:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 5, 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis', '2021-10-27 19:45:48', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 6, 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', '2020-11-18 12:56:22', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (26, 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et', '2021-08-03 19:07:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 7, 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', '2023-04-16 03:58:16', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 10, 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', '2022-08-28 12:09:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 9, 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '2020-10-24 00:03:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 4, 'duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', '2022-09-03 12:27:08', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 1, 'nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', '2021-03-31 23:02:14', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (14, 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', '2021-10-18 09:01:46', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 4, 'nunc proin at turpis a pede posuere nonummy integer non', '2020-06-07 15:13:48', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 7, 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', '2022-10-12 02:15:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 7, 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', '2022-05-02 08:04:58', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 4, 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst', '2022-03-25 07:27:28', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 1, 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '2021-10-06 15:32:12', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 10, 'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', '2023-01-27 01:15:22', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (18, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', '2022-08-17 16:57:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 8, 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', '2022-09-13 04:54:39', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 8, 'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec', '2021-05-06 14:52:24', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 9, 'donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2020-07-20 09:10:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 3, 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', '2021-04-16 19:41:56', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 1, 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla', '2021-01-25 08:23:55', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 2, 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', '2022-01-12 16:27:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 4, 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', '2021-05-05 09:46:35', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 1, 'consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', '2021-01-03 05:27:37', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 1, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo', '2023-03-25 03:32:22', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 5, 'phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque', '2021-06-17 13:02:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 2, 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', '2022-08-30 19:36:28', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 10, 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '2022-03-19 04:29:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 1, 'nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', '2021-06-23 05:12:48', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 2, 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', '2021-05-19 00:29:33', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 5, 'phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut', '2021-02-23 04:22:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 5, 'habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '2020-07-12 20:43:56', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 5, 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', '2022-11-12 13:06:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 2, 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', '2020-11-25 09:46:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 10, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', '2022-12-03 19:54:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 1, 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '2021-06-20 05:05:31', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 2, 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue', '2022-01-15 17:35:14', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 9, 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', '2022-12-06 13:52:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 6, 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', '2021-07-22 15:13:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 1, 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', '2022-04-25 07:50:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 6, 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', '2020-09-03 18:00:24', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (23, 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', '2022-09-30 15:09:42', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 8, 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam', '2023-05-10 20:27:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 6, 'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', '2020-12-30 10:15:47', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (19, 1, 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', '2023-04-23 13:38:25', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 4, 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', '2021-11-06 05:42:40', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (42, 9, 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '2021-07-11 20:12:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 6, 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', '2021-05-01 22:34:42', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (30, 3, 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non', '2021-12-02 08:29:49', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 2, 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', '2020-08-20 18:35:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 10, 'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', '2021-10-10 00:57:12', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 9, 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', '2021-05-28 07:47:52', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 5, 'primis in faucibus orci luctus et ultrices posuere cubilia curae', '2021-07-17 04:29:17', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 9, 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan', '2020-08-22 03:45:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 8, 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', '2020-11-26 13:14:58', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (16, 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2021-05-20 02:24:30', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 5, 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', '2021-09-26 14:57:25', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 9, 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', '2022-02-15 22:01:36', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 7, 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', '2022-10-20 00:58:26', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 7, 'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', '2022-01-19 20:09:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 3, 'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', '2021-04-02 06:47:46', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 9, 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', '2020-09-17 09:23:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 3, 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', '2021-04-19 18:11:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 8, 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor', '2020-02-28 20:34:54', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 3, 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', '2022-11-02 22:56:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 7, 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', '2020-02-05 12:04:05', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 8, 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', '2021-11-12 13:30:16', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (36, 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', '2020-09-19 18:51:01', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 5, 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', '2021-03-18 02:27:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 8, 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus', '2022-11-17 05:55:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 8, 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '2021-02-23 14:05:51', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 8, 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', '2022-02-03 07:37:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 7, 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', '2020-10-15 01:56:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 9, 'sem sed sagittis nam congue risus semper porta volutpat quam pede', '2022-11-23 08:43:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 7, 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', '2022-03-29 11:02:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 9, 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum', '2022-04-09 19:55:25', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 8, 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', '2020-01-12 08:41:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 10, 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', '2022-11-15 23:54:45', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 5, 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi', '2022-01-09 09:25:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 3, 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti', '2020-08-29 08:44:42', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 5, 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2022-01-22 16:06:30', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 5, 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', '2022-07-19 16:01:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 4, 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', '2022-03-04 05:02:06', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 3, 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', '2022-04-08 03:40:45', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 3, 'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', '2021-11-15 14:26:14', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 7, 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', '2021-05-14 14:40:36', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (8, 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', '2021-07-28 02:51:53', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 1, 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui', '2022-05-16 13:54:46', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 6, 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', '2022-03-11 15:39:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 6, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', '2020-03-04 22:07:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 2, 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus', '2021-05-01 19:12:26', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 1, 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', '2021-06-09 12:50:17', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (2, 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', '2022-06-17 05:10:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 9, 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '2021-09-15 02:44:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 3, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', '2020-09-28 01:44:05', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 6, 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', '2021-02-26 16:41:32', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 1, 'nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa', '2020-10-06 02:34:27', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 10, 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', '2020-08-15 14:36:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 7, 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', '2022-08-03 09:50:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 1, 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', '2021-12-03 14:11:20', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 4, 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', '2020-03-18 10:20:00', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 6, 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', '2022-04-12 12:04:07', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 2, 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', '2022-10-24 10:25:54', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 2, 'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', '2023-02-23 14:47:32', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (34, 'proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in', '2020-01-11 14:49:26', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 1, 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', '2020-07-05 07:47:46', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 8, 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus', '2022-12-19 21:33:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 9, 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue', '2020-08-27 03:52:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 4, 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '2021-12-11 11:00:50', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 4, 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', '2023-02-05 00:44:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 8, 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', '2022-07-25 02:44:20', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 10, 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', '2023-04-16 14:09:56', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 9, 'ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', '2022-01-15 12:10:20', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 8, 'est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', '2020-08-20 06:40:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 8, 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', '2022-09-15 16:15:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (27, 7, 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', '2021-08-18 23:16:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (25, 4, 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', '2022-08-12 04:58:47', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 8, 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', '2020-05-03 02:49:11', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 1, 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', '2022-08-19 23:27:03', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 2, 'at feugiat non pretium quis lectus suspendisse potenti in eleifend', '2023-04-05 09:41:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 10, 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien', '2020-08-05 16:26:15', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 7, 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue', '2022-03-19 12:10:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 4, 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', '2020-05-30 15:10:34', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 4, 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in', '2022-10-24 16:37:39', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (47, 'proin at turpis a pede posuere nonummy integer non velit', '2020-10-11 00:26:53', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 9, 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', '2020-01-15 17:18:50', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 7, 'neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', '2020-08-29 08:06:42', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 7, 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', '2023-06-03 01:30:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 5, 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', '2022-01-19 08:41:45', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 6, 'proin at turpis a pede posuere nonummy integer non velit donec diam', '2021-11-25 23:34:02', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 2, 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', '2021-08-19 14:07:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 3, 'sed magna at nunc commodo placerat praesent blandit nam nulla', '2020-04-20 08:47:09', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (11, 5, 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit', '2023-01-08 17:45:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 5, 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', '2020-11-02 01:30:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (7, 6, 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', '2021-10-12 12:05:35', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (9, 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', '2021-11-17 19:40:13', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (44, 1, 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris', '2021-01-08 11:25:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 4, 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', '2021-04-10 20:49:10', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 8, 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut', '2023-05-19 10:07:35', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 7, 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna', '2022-10-16 22:18:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 2, 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', '2020-09-12 20:46:06', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 3, 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus', '2021-05-24 08:02:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 10, 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut', '2022-04-21 04:16:35', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 9, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo', '2022-07-26 22:14:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 8, 'at dolor quis odio consequat varius integer ac leo pellentesque ultrices', '2022-04-16 22:30:01', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (22, 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', '2022-03-09 20:34:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 3, 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus', '2022-04-29 00:24:52', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 10, 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', '2021-02-08 20:05:22', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (29, 3, 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', '2022-03-13 03:36:04', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 10, 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', '2022-11-18 15:51:44', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 5, 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', '2023-01-15 06:12:55', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 1, 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', '2020-11-09 02:25:23', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 8, 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', '2022-12-01 20:09:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 10, 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', '2020-07-19 07:16:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 3, 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', '2021-02-25 19:48:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 7, 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien', '2020-07-23 05:32:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 5, 'mollis molestie lorem quisque ut erat curabitur gravida nisi at', '2022-01-26 19:30:28', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 3, 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien', '2022-06-27 03:14:23', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 7, 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', '2021-12-22 17:34:07', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (23, 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', '2022-09-03 08:07:49', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (43, 7, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', '2022-06-16 22:31:17', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (12, 1, 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', '2022-12-28 00:03:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 2, 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', '2021-10-21 13:14:40', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 8, 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non', '2020-12-20 02:04:18', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 8, 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', '2020-03-24 20:42:21', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (50, 6, 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', '2022-11-04 08:30:15', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 6, 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', '2021-11-18 11:31:54', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 2, 'mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', '2020-04-16 02:57:13', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (35, 'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', '2021-06-19 08:55:17', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 2, 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', '2021-01-21 14:36:29', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 1, 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', '2020-03-01 14:09:37', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 1, 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', '2020-10-28 11:16:45', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 4, 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', '2022-05-17 13:05:07', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 1, 'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim', '2021-11-12 20:39:46', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 4, 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', '2022-06-29 01:32:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (13, 3, 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '2020-08-30 10:56:09', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 9, 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', '2020-04-05 04:49:56', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (41, 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', '2021-04-04 15:46:47', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 8, 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '2021-10-02 07:37:10', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 5, 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', '2022-11-18 18:26:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (40, 10, 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus', '2022-01-10 21:23:41', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 2, 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', '2022-08-25 09:17:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 1, 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', '2022-06-22 15:15:12', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (19, 3, 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', '2023-03-17 06:53:36', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 6, 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', '2021-12-24 02:57:50', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 3, 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', '2021-03-08 05:17:38', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 2, 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2023-01-12 01:27:53', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (41, 10, 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', '2021-11-30 22:05:47', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (3, 6, 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', '2021-09-01 04:58:38', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (2, 3, 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', '2023-04-19 01:07:59', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 4, 'ante ipsum primis in faucibus orci luctus et ultrices posuere', '2023-05-07 11:26:51', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 4, 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', '2020-12-21 23:49:47', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 1, 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', '2021-12-09 11:54:24', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (47, 8, 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem', '2021-02-22 08:12:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 4, 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', '2021-05-14 00:33:49', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (38, 3, 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', '2021-04-02 22:09:40', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 7, 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', '2021-05-20 08:31:19', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 2, 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', '2022-03-19 23:21:00', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 9, 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam', '2021-09-28 14:48:08', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (43, 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '2022-12-27 08:17:52', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (1, 6, 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla', '2020-10-29 11:32:32', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (16, 9, 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', '2020-01-25 17:58:29', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (34, 6, 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', '2020-01-08 14:34:01', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 4, 'nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', '2022-02-20 20:58:53', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (36, 3, 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', '2021-04-28 13:46:40', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (47, 1, 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', '2022-06-05 18:24:51', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (2, 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede', '2022-01-09 18:45:49', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (31, 6, 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', '2020-06-30 23:42:07', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (39, 8, 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', '2020-08-26 09:58:07', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 4, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus', '2021-02-28 21:21:11', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 3, 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', '2021-05-09 01:02:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (14, 10, 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla', '2021-09-06 19:46:30', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 4, 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis', '2021-03-01 16:16:28', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (48, 10, 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit', '2022-06-25 22:26:05', false);
insert into comments (post_id, comment, creation_date, is_confirmed) values (21, 'sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo', '2020-12-12 11:33:03', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (46, 3, 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', '2023-03-15 13:58:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 1, 'platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum', '2021-08-02 22:30:57', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (32, 9, 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '2020-09-28 22:01:35', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (6, 4, 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu', '2020-01-28 08:00:52', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (23, 6, 'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', '2022-07-16 18:11:13', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (18, 4, 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', '2021-10-01 17:29:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (37, 7, 'erat quisque erat eros viverra eget congue eget semper rutrum nulla', '2020-03-29 15:12:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 9, 'pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', '2021-05-30 10:51:14', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (49, 2, 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', '2023-05-10 21:30:40', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (4, 9, 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', '2020-07-07 07:53:44', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (35, 4, 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', '2021-02-18 07:03:21', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (22, 5, 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', '2022-04-13 22:54:20', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 10, 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam', '2021-06-20 09:59:05', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (33, 3, 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', '2023-03-27 08:14:24', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (8, 4, 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', '2023-04-18 23:18:08', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (20, 6, 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy', '2022-12-07 17:18:19', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (15, 9, 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', '2020-10-17 10:55:15', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (24, 1, 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea', '2020-06-16 02:39:43', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (1, 2, 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices', '2021-10-20 14:59:03', true);
insert into comments (post_id, comment, creation_date, is_confirmed) values (28, 'varius ut blandit non interdum in ante vestibulum ante ipsum', '2021-08-28 19:40:51', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 1, 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', '2022-05-12 15:56:27', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (28, 7, 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer', '2022-01-24 00:15:07', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (9, 1, 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', '2022-11-05 00:58:26', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (45, 7, 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia', '2020-03-01 16:03:00', true);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (10, 4, 'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla', '2022-07-02 23:19:07', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (17, 6, 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', '2020-10-14 20:40:41', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (5, 7, 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '2023-06-16 10:44:53', false);
insert into comments (post_id, user_id, comment, creation_date, is_confirmed) values (26, 9, 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', '2020-05-02 23:15:34', true);


-- 1. Tüm blog yazılarını başlıkları, yazarları ve kategorileriyle birlikte getirin.

SELECT posts.content AS blog_content, posts.title, users.username AS writer_username, categories.name AS category FROM posts
INNER JOIN users ON users.user_id = posts.user_id
INNER JOIN categories ON categories.category_id = posts.category_id;

-- 2. En son yayınlanan 5 blog yazısını başlıkları, yazarları ve yayın tarihleriyle birlikte alın.

SELECT posts.content AS blog_content, posts.title, users.username AS writer_username, posts.creation_date FROM posts
INNER JOIN users ON users.user_id = posts.user_id
ORDER BY posts.creation_date DESC
LIMIT 5;

-- 3. Her blog yazısı için yorum sayısını gösterin.

SELECT posts.content as blog_content, COUNT(comments) AS comment_count FROM posts
INNER JOIN comments ON comments.post_id = posts.post_id
GROUP BY posts.content;

-- 4. Tüm kayıtlı kullanıcıların kullanıcı adlarını ve e-posta adreslerini gösterin.

SELECT username, email FROM users;

-- 5. En son 10 yorumu, ilgili gönderi başlıklarıyla birlikte alın.

SELECT comments.comment, posts.title AS blog_title FROM posts
INNER JOIN comments ON comments.post_id = posts.post_id
ORDER BY comments.creation_date DESC
LIMIT 10;

-- 6. Belirli bir kullanıcı tarafından yazılan tüm blog yazılarını bulun.

SELECT content AS blog_content FROM posts
INNER JOIN users ON users.user_id = posts.user_id
WHERE users.username = 'cmacgillacolm8';

-- 7. Her kullanıcının yazdığı toplam gönderi sayısını alın.

SELECT users.username AS writer_username, COUNT(posts) AS blog_count FROM users
INNER JOIN posts ON users.user_id = posts.user_id
GROUP BY users.username;

-- 8. Her kategoriyi, kategorideki gönderi sayısıyla birlikte gösterin.

SELECT categories.name AS category, COUNT(posts) AS blog_count FROM categories
INNER JOIN posts ON categories.category_id = posts.category_id
GROUP BY categories.name;

-- 9. Gönderi sayısına göre en popüler kategoriyi bulun.

SELECT categories.name AS category, COUNT(posts) AS blog_count FROM categories
INNER JOIN posts ON categories.category_id = posts.category_id
GROUP BY categories.name
ORDER BY blog_count DESC
LIMIT 1;

-- 10. Gönderilerindeki toplam görüntülenme sayısına göre en popüler kategoriyi bulun.

SELECT categories.name AS category, SUM(view_count) AS view_count FROM categories
INNER JOIN posts ON categories.category_id = posts.category_id
GROUP BY categories.name
ORDER BY view_count DESC
LIMIT 1;

-- 11. En fazla yoruma sahip gönderiyi alın.

SELECT posts.content AS blog_content FROM posts
INNER JOIN comments ON comments.post_id = posts.post_id
GROUP BY posts.content
ORDER BY COUNT(comments) DESC
LIMIT 1;

-- 12. Belirli bir gönderinin yazarının kullanıcı adını ve e-posta adresini gösterin.

SELECT users.username AS writer_username, users.email writer_email FROM users
INNER JOIN posts ON users.user_id = posts.user_id
WHERE post_id = 15;

-- 13. Başlık veya içeriklerinde belirli bir anahtar kelime bulunan tüm gönderileri bulun.

SELECT * FROM posts
WHERE title LIKE '%ar%' OR content LIKE '%ar%';

-- 14. Belirli bir kullanıcının en son yorumunu gösterin.

SELECT comment FROM comments
INNER JOIN users ON users.user_id = comments.user_id
WHERE username = 'kcrickmore4'
ORDER BY comments.creation_date DESC
LIMIT 1;

-- 15. Gönderi başına ortalama yorum sayısını bulun.

SELECT AVG(comment_count) FROM (
SELECT post_id, COUNT(*) AS comment_count FROM comments
GROUP BY post_id) AS counts;

-- 16.  Son 30 günde yayınlanan gönderileri gösterin.

SELECT content as blog_content, creation_date FROM posts
WHERE creation_date >= CURRENT_DATE - INTERVAL '30 days';

-- 17. Belirli bir kullanıcının yaptığı yorumları alın.

SELECT comment FROM comments
INNER JOIN users ON users.user_id = comments.user_id
WHERE users.username = 'btejada9';

-- 18. Belirli bir kategoriye ait tüm gönderileri bulun.

SELECT content AS blog_content FROM posts
INNER JOIN categories ON posts.category_id = categories.category_id
WHERE categories.name = 'Tech';

-- 19. 5'ten az yazıya sahip kategorileri bulun.

SELECT categories.name, COUNT(posts) FROM posts
INNER JOIN categories ON posts.category_id = categories.category_id
GROUP BY categories.name
HAVING posts.count < 5;

-- 20. Hem bir yazı hem de bir yoruma sahip olan kullanıcıları gösterin.

SELECT DISTINCT(users.username) FROM users
INNER JOIN posts ON posts.user_id = users.user_id
INNER JOIN comments ON posts.user_id = comments.user_id;

-- 21. En az 2 farklı yazıya yorum yapmış kullanıcıları alın.

SELECT user_id, COUNT(post_id) FROM comments
WHERE user_id IS NOT NULL
GROUP BY user_id
HAVING COUNT(post_id) >= 2;

-- 22. En az 3 yazıya sahip kategorileri görüntüleyin.

SELECT categories.name, COUNT(posts) FROM posts
INNER JOIN categories ON posts.category_id = categories.category_id
GROUP BY categories.name
HAVING posts.count >= 3;

-- 23.  5'ten fazla blog yazısı yazan yazarları bulun.

SELECT users.username AS writer_username, COUNT(posts.post_id) AS blog_count FROM posts
INNER JOIN users ON users.user_id = posts.user_id
GROUP BY users.username
HAVING COUNT(posts.post_id) > 5;

-- 24. Bir blog yazısı yazmış veya bir yorum yapmış kullanıcıların e-posta adreslerini
görüntüleyin. (UNION kullanarak)
SELECT users.email FROM 
(SELECT DISTINCT(user_id) FROM posts
UNION
SELECT DISTINCT(user_id) FROM comments WHERE user_id IS NOT NULL) AS writer
INNER JOIN users on users.user_id = writer.user_id;

-- 25. Bir blog yazısı yazmış ancak hiç yorum yapmamış yazarları bulun

SELECT users.username FROM 
(SELECT DISTINCT(user_id) FROM posts
EXCEPT
SELECT DISTINCT(user_id) FROM comments) AS writer
INNER JOIN users on users.user_id = writer.user_id;
