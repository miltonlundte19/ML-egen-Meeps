const express = require('express');
const router = express.Router();
const pool = require('../database');

/* GET home page. */
router.get('/', async (req, res, next) => {
    // await pool.promise().query('SELECT * FROM meepsdata ORDER BY updated_at DESC')

    const data = {
        message: 'Hello world!',
        layout: 'layout.njk',
        title: 'Nunjucks example'
    };

    res.render('index.njk', data);
});

module.exports = router;
