

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('4d2dab7a-7d68-4d67-a120-cf9722f617eb', '100 days of coding', 'Every day coding for 100 days', '2021-02-03 13:29:55.845832+06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('06401c3b-1c36-43fd-b633-24c53f21e768', 'Authentication in IHP', '# Title
## subtitle
- do that
- __do this__', '2021-02-03 13:59:13.119369+06');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('c962dd06-8afa-423f-a602-69da2c255e95', 'Course prepearetion', '!-!Let us prepare the course material', '2021-02-03 13:29:55.855063+06');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('925eccc3-2912-400e-bad6-fbace4e0df3a', '06401c3b-1c36-43fd-b633-24c53f21e768', 'Mirlan', 'some comment', '2021-02-03 15:19:52.806174+06');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('df36f3fc-1f92-4d22-94dc-7769d1e08b27', '06401c3b-1c36-43fd-b633-24c53f21e768', 'Mirlan ', 'some antother comment', '2021-02-03 15:19:52.807716+06');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('af44d364-db9e-463b-b38b-c79fe373ce16', '06401c3b-1c36-43fd-b633-24c53f21e768', 'Mirlan', 'other other comment', '2021-02-03 15:22:43.473685+06');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


ALTER TABLE public.users DISABLE TRIGGER ALL;



ALTER TABLE public.users ENABLE TRIGGER ALL;


