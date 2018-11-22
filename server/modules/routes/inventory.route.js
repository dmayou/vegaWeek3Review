const express = require( 'express' );
const router = express.Router();
const inventory = require( '../inventory.module' );
const pg = require('pg');

const Pool = pg.Pool;
const config = {
    database: 'inventory_review',
    host: 'localhost',
    port: 5432,
    max: 10,
    idleTimeOutMillis: 10000
};
const pool = new Pool(config);

pool.on('connect', () => {
    console.log('connected to postgres');
});
pool.on('error', () => {
    console.log('error connecting to db');
});

router.get( '/', ( req, res )=>{
    res.send( inventory.list )
}); //end GET

router.post( '/', ( req, res )=>{
    console.log( 'POST hit:', req.body )
    if( inventory.addItem( req.body ) ){
        res.sendStatus( 200 );
    } //end item added successfully
    else{
        res.sendStatus( 500 );
    } // end problem adding item
}); //end GET

module.exports = router;