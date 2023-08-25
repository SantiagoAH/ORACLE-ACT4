--Alter tabla Revision
ALTER TABLE REVISION
ADD CONSTRAINT revision_usuario_fk
FOREIGN KEY (usuario_id)
REFERENCES Usuario(id);

ALTER TABLE REVISION
ADD CONSTRAINT revision_lugar_fk 
FOREIGN KEY (lugar_id)
REFERENCES Lugar(id);

--Alter tabla Lugar
ALTER TABLE LUGAR
ADD CONSTRAINT  lugar_usuario_fk
FOREIGN KEY (usuario_id)
REFERENCES Usuario(id);

ALTER TABLE LUGAR
ADD CONSTRAINT lugar_ciudad_fk
FOREIGN KEY (ciudad_id)
REFERENCES Ciudad(id);

--Alter tabla Ciudad
ALTER TABLE CIUDAD
ADD CONSTRAINT ciudad_estado_fk 
FOREIGN KEY (estado_id)
REFERENCES Estado(id);

--Alter tabla AmenidadDeLugar
ALTER TABLE AMENIDADDELUGAR
ADD CONSTRAINT amenidaddelugar_amenidad_fk
FOREIGN KEY (amenidad_id)
REFERENCES Amenidad(id);

ALTER TABLE AMENIDADDELUGAR
ADD CONSTRAINT amenidaddelugar_lugar_fk 
FOREIGN KEY (lugar_id) 
REFERENCES Lugar(id);


