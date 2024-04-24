CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    password VARCHAR(60) NOT NULL
);


CREATE TABLE stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    overall_feeling INT NOT NULL,
    time_slept FLOAT NOT NULL,
    worked_out BOOLEAN NOT NULL,
    ate_healthy VARCHAR(100) NOT NULL,
    time_worked_out INT NOT NULL,
    workout_type VARCHAR(100) NOT NULL,
    unhealthy_food VARCHAR(500) NOT NULL,
    proud_achievement VARCHAR(2000) NOT NULL,
    date_logged DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
);
