const express = require('express');
const router = express.Router();
const pool = require('../database');

/* GET home page. */
router.get('/', async (req, res, next) => {
    await pool
        .promise()
        .query(
            'SELECT * FROM meepsdata WHERE privet = 0 ORDER BY updated_at DESC'
        )
        .then(([rows]) =>
            res.render('index.njk', {
                meeps: rows,
                title: 'Test-meeps'
            })
        );
});

module.exports = router;
