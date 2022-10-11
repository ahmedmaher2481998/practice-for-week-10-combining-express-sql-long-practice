-- BASIC PHASE 1A - DROP and CREATE table
-- Your code here
DROP TABLE if EXISTS trees;

CREATE TABLE trees(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  tree varchar(32) NOT NULL,
  location varchar(64) NOT NULL,
  height_ft NUMERIC(3, 1),
  ground_circumference NUMERIC(3, 1)
);

-- BASIC PHASE 1B - INSERT seed data
-- Your code here
INSERT INTO
  trees (tree, location, height_ft, ground_circumference)
VALUES
  (
    "General Sherman",
    "Sequoia National Park",
    274.9,
    102.6
  ),
  (
    "General Grant",
    "Kings Canyon National Park",
    268.1,
    107.5
  ),
  (
    "President",
    "Sequoia National Park",
    240.9,
    93.0
  ),
  ("Lincoln", "Sequoia National Park", 255.8, 98.3),
  ("Stagg", "Private Land", 243.0, 109.0),
  (
    "Boole	Converse Basin	Giant ",
    "Sequoia National Monument",
    268.8,
    113
  ),
  (
    "Genesis	Mountain Home",
    "Mountain Home State Forest",
    253,
    85.3
  ),
  (
    "Franklin	Giant Forest",
    "Sequoia National Park",
    223.8,
    94.8
  ),
  (
    "King Arthur	Garfield",
    "Sequoia National Park",
    270.3,
    104.2
  ),
  (
    "Monroe	Giant Forest",
    "Sequoia National Park",
    247.8,
    91.3
  ),
  (
    "Robert E. Lee	Grant Grove",
    "	Kings Canyon National Park",
    254.7,
    88.3
  ),
  (
    "unnamed	Garfield Grove",
    "Sequoia National Park",
    273.1,
    99.5
  ),
  (
    "Adams	Giant Forest",
    "Sequoia National Park",
    250.6,
    83.3
  ),
  (
    "Ishi Giant	Kennedy Grove	Giant ",
    "Sequoia National Monument",
    255,
    105.1
  ),
  (
    "Column	Giant Forest",
    "Sequoia National Park",
    243.8,
    93
  ),
  (
    "Summit Road	Mountain Home",
    "Mountain Home State Forest",
    244,
    82.2
  ),
  (
    "Euclid	Mountain Home",
    "Mountain Home State Forest",
    272.7,
    83.4
  ),
  (
    "Washington	Mariposa Grove",
    "Yosemite National Park",
    236,
    95.7
  ),
  (
    "Pershing	Giant Forest",
    "Sequoia National Park",
    246,
    91.2
  ),
  (
    "Diamond	Atwell Grove",
    "Sequoia National Park",
    286,
    95.3
  ),
  (
    "Adams	Mountain Home",
    "Mountain Home State Forest",
    247.4,
    94.2
  ),
  (
    "Roosevelt/False Heart	Redwood",
    "Mountain Grove	Kings Canyon National Park",
    260,
    80
  ),
  (
    "Nelder	nelder Grove",
    "	Sierra National Forest",
    266.2,
    90
  ),
  (
    "AD	Atwell Grove",
    "Sequoia National Park",
    242.4,
    99
  ),
  (
    "Hart	Redwood Mountain Grove",
    "Kings Canyon National Park",
    277.9,
    75.3
  ),
  (
    "Grizzly Giant	Mariposa Grove",
    "Yosemite National Park",
    209,
    92.5
  ),
  (
    "Chief Sequoyah	Giant Forest",
    "Sequoia National Park",
    228.2,
    90.4
  ),
  (
    "Methuselah	Mountain Home",
    "Mountain Home State Forest",
    207.8,
    95.8
  ),
  (
    "Great Goshawk	Freeman Creek	Giant",
    " Sequoia National Monument",
    255.2,
    90.2
  ),
  (
    "Hamilton	Giant Forest",
    "Sequoia National Park",
    238.5,
    82.6
  );