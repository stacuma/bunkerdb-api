import { Request, Response } from 'express';
import { CompanyAttributes, CompanyInstance } from '../interfaces';
import { CompanyService } from '../services/company.service';
import { logger } from '../utils/logger/Logger';

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