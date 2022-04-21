CREATE TABLE music_album (
  id INT PRIMARY KEY REFERENCES item(id),
  on_spotify BOOLEAN NOT NULL,
  FOREIGN KEY (id) REFERENCES item (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE genre (
  id INT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);