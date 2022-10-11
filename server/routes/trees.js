// Instantiate router - DO NOT MODIFY
const express = require("express");
const router = express.Router();
const sqlite3 = require("sqlite3");
const db = new sqlite3.Database(process.env.DB, sqlite3.OPEN_READWRITE);
router.get("/", (req, res, next) => {
	const sql = `SELECT id,tree FROM trees;`;
	const params = [];
	db.all(sql, params, (err, rows) => {
		if (err) {
			next(err);
		}
		// console.log(rows);
		res.json(rows);
	});
});

router.post("/", (req, res, next) => {
	const { name, location, height, size } = req.body;
	if (name && location && height && size) {
		const sql = `INSERT INTO trees (tree,location,height_ft,ground_circumference) values (?,?,?,?);`;
		db.all(sql, [name, location, height, size], (err) => {
			if (err) {
				next(err);
			}
			res.json({ status: "Success" });
		});
	} else {
		res.send("Data Is messing ....");
	}
});

router.put("/:id", (req, res, next) => {
	const reqId = +req.params.id;
	const { name, height, size, id: bodyId, location } = req.body;

	if (1 * bodyId !== 1 * reqId) {
		res.json({ error: "ids do not match" });
	}
	const sql = `UPDATE trees SET tree=?,location=?,height_ft=?,ground_circumference=? WHERE id=? `;
	const param = [name, location, height, size, +reqId];
	db.all(sql, param, (err) => {
		if (err) next(err);
		res.json({ status: "Success" });
	});
});

router.delete("/:id", (req, res, next) => {
	const id = req.params.id;
	const sql = `DELETE FROM trees WHERE id=?;`;
	db.all(sql, [id], (err) => {
		if (err) next(err);
		res.json({ status: "Success" });
	});
});
router.get("/:id", (req, res, next) => {
	const id = +req.params.id;
	if (Number.isInteger(id)) {
		const sql = `SELECT * FROM trees WHERE id=? limit 1`;
		db.all(sql, [id], (err, rows) => {
			if (err) next(err);
			if (rows[0]) {
				res.json(rows);
			} else {
				res.json({ status: "Error", message: "Un valid id" });
			}
		});
	}
});
/**
 * BASIC PHASE 2, Step A - Instantiate SQLite and database
 *   - Database file: "data_source" environment variable
 *   - Database permissions: read/write records in tables
 */
// Your code here

/**
 * BASIC PHASE 2, Step B - List of all trees in the database
 *
 * Protocol: GET
 * Path: /
 * Parameters: None
 * Response: JSON array of objects
 *   - Object properties: height-ft, tree, id
 *   - Ordered by the height_ft from tallest to shortest
 */
// Your code here

/**
 * BASIC PHASE 3 - Retrieve one tree with the matching id
 *
 * Path: /:id
 * Protocol: GET
 * Parameter: id
 * Response: JSON Object
 *   - Properties: id, tree, location, height_ft, ground_circumference_ft
 */
// Your code here

/**
 * INTERMEDIATE PHASE 4 - INSERT tree row into the database
 *
 * Path: /trees
 * Protocol: POST
 * Parameters: None
 * Response: JSON Object
 *   - Property: message
 *   - Value: success
 */
// Your code here

/**
 * INTERMEDIATE PHASE 5 - DELETE a tree row from the database
 *
 * Path: /trees/:id
 * Protocol: DELETE
 * Parameter: id
 * Response: JSON Object
 *   - Property: message
 *   - Value: success
 */
// Your code here

/**
 * INTERMEDIATE PHASE 6 - UPDATE a tree row in the database
 *
 * Path: /trees/:id
 * Protocol: PUT
 * Parameter: id
 * Response: JSON Object
 *   - Property: message
 *   - Value: success
 */
// Your code here

// Export class - DO NOT MODIFY
module.exports = router;
