import express from 'express';
var router = express.Router();

import CompanyController from '../../controllers/company.controller';
console.log("result****fegfefgd***");

const company = new CompanyController();
//http://localhost:3000/api/v1/companies
router.get('/', company.getAll);
router.get('/:id/', company.getById);
router.post('/', company.create);
console.log("result*******", router);

export default router;