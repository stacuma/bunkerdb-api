import { Request, Response } from 'express';
import { CompanyAttributes, CompanyInstance } from '../interfaces';
import Employee from '../db/models/employee';
import { CompanyService } from '../services/company.service';
import Company from '../db/models/company';
import { INTEGER } from 'sequelize';

export default class CompanyController {

  getAll = async (req: Request, res: Response): Promise<Response> => {
    const service = new CompanyService();
    await service
      .getAll()
      .then((company: CompanyInstance[]) => {
        res.status(200).json({
          ok: true,
          status: 200,
          data: company
        });
      })
      .catch((error: Error) => {
        res.status(409).send(error);
      });

    return res;
  };

  getById = async (req: Request, res: Response): Promise<Response> => {
    const service = new CompanyService();
    await service
      .getOne(Number(req.params.id))
      .then((company: CompanyInstance[]) => {
        res.status(200).json({
          ok: true,
          status: 200,
          data: company
        });
      })
      .catch((error: Error) => {
        res.status(409).send(error);
      });

    return res;
  };


  create = async (req: Request, res: Response): Promise<Response> => {
    const service = new CompanyService();
    service
      .createCompany(req.body as CompanyAttributes)
      .then((company: CompanyInstance) => {
        res.status(201).send(company);
      })
      .catch((error: Error) => {
        res.status(409).send(error);
      });
    return res;
  };
}
/*router.get('/company/:id', async (req: Request, res: Response) => {
  await Company.findOne({
    where: { id: req.params.id },
    include: [
      {
        model: Employee,
        as: 'employees',
        attributes: { exclude: ['company_id'] }
      }
    ]
  }).then((result) => {
    console.log(result);
    res.status(200).json({
      ok: true,
      status: 200,
      body: result
    });
  });
});

router.post('/companies', async (req: Request, res: Response) => {
  const service = new CompanyService();
  service
    .createCompany(req.body as CompanyAttributes)
    .then((company: CompanyInstance) => {
      return res.status(201).send(company);
    })
    .catch((error: Error) => {
      return res.status(409).send(error);
    });
});
export default router;*/
