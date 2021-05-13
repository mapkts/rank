CREATE TABLE users (
    id INTEGER AUTO_INCREMENT,
    username TEXT NOT NULL UNIQUE
);

CREATE TABLE items (
    id INTEGER AUTO_INCREMENT,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
);

CREATE TABLE votes (
    user_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    oridinal INTEGER NOT NULL,

    CONSTRAINT INDEX ON (user_id, item_id)
    FOREIGN KEY(user_id) REFERENCES users(id)
    FOREIGN KEY(item_id) REFERENCES users(id)
);
