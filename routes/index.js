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

router.post('/', async (req, res, next) => {
    //console.log(req);
    console.log(req.body);
    const body = req.body.body;

    if (body.length < 3) {
        return res.status(400).json({
            error: 'Invalde length'
        });
    }
    await pool
        .promise()
        .query('INSERT INTO meepsdata (body) VALUES (?)', [body])
        .then((respons) => {
            console.log(respons);
        });
});

module.exports = router;
