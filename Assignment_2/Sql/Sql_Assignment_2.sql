
#did create the tables and insert the data using Mysql Workbench

ALTER TABLE movie_rating
ADD FOREIGN KEY (idrating) REFERENCES rating(idrating);

ALTER TABLE movie_rating
ADD FOREIGN KEY (idmovie) REFERENCES movie(idmovie);


ALTER TABLE rating
ADD FOREIGN KEY (idrating) REFERENCES movie_rating(idrating);

ALTER TABLE user
ADD FOREIGN KEY (iduser) REFERENCES rating(iduser);

select u.name,r.scale_rating,m.movie_name from user u
left join rating r
on u.iduser = r.iduser
left join movie_rating mr
on r.idrating = mr.idrating
left join movie m
on mr.idmovie = m.idmovie

