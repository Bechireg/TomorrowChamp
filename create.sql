create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double, precisio varchar(255) not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB;
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB;
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB;
create table partie (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB;
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB;
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id);
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id);
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references partie (id);
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id);
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
create table caracteristique (id integer not null auto_increment, attaque integer not null, defense integer not null, dribble integer not null, hauteur integer not null, pass integer not null, physique integer not null, piedfort varchar(255), poids double precision not null, position varchar(255), tir integer not null, vitesse integer not null, joueur_id integer, primary key (id)) engine=InnoDB
create table detailmatch (matches_id integer not null, joueurs_id integer not null) engine=InnoDB
create table joueur (id integer not null auto_increment, adresse varchar(255), disponibilite bit not null, nationalite varchar(255), nom varchar(255), password varchar(255), prenom varchar(255), primary key (id)) engine=InnoDB
create table match (id integer not null auto_increment, stade varchar(255), primary key (id)) engine=InnoDB
create table video (id integer not null auto_increment, format varchar(255), longeur varchar(255), name varchar(255), joueur_id integer, primary key (id)) engine=InnoDB
alter table caracteristique add constraint FKqq7qtyf4fh1kyr020mp8k1vbg foreign key (joueur_id) references joueur (id)
alter table detailmatch add constraint FKmicgm7fjltkhdjanc5hlcl5mv foreign key (joueurs_id) references joueur (id)
alter table detailmatch add constraint FK3w7dq0lcb8pjj6c9esmi4ogbs foreign key (matches_id) references match (id)
alter table video add constraint FKrx7bxugdg2h5o3nclu9yv2ibi foreign key (joueur_id) references joueur (id)
