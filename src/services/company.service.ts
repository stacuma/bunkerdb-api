import Company from '../db/models/company';
import { sequelize } from '../db/models/index';
import { Transaction } from 'sequelize';
import { logger } from '../utils/logger/Logger';

import {
  CompanyAttributes,
  CompanyInstance,
} from '../interfaces';
import Employee from '../db/models/employee';

export class CompanyService {
  createCompany = (CompanyData: CompanyAttributes): Promise<CompanyInstance> => {
    const promise = new Promise<CompanyInstance>(
      (resolve, reject) => {
        sequelize.transaction((t: Transaction) => {
          const result = Company.create(CompanyData, {
            include: [{ model: Employee, as: 'employees' }]
          })
            .then((company: CompanyInstance) => {
              logger.info("Created product");
              resolve(company);
            })
            .catch((error: Error) => {
              logger.error(error.message);
              reject(error);
            });
          return result;
        });
      }
    );
    return promise;
  }

  getAll = (): Promise<CompanyInstance[]> => {
    const promise = new Promise<CompanyInstance[]>(
      (resolve, reject) => {
        const result = Company.findAll({
          include: [
            {
              model: Employee,
              as: 'employees',
              attributes: { exclude: ['company_id'] }
            }
          ]
        }).then((companies: CompanyInstance[]) => {
          resolve(companies);
        })
          .catch((error: Error) => {
            logger.error(error.message);
            reject(error);
          });
        return result;
      }
    );
    return promise;
  }


  getOne = (id: number): Promise<CompanyInstance[]> => {
    const promise = new Promise<CompanyInstance[]>(
      (resolve, reject) => {
        const result = Company.findAll({
          where: { id: id },
          include: [
            {
              model: Employee,
              as: 'employees',
              attributes: { exclude: ['company_id'] }
            }
          ]
        }).then((companies: CompanyInstance[]) => {
          resolve(companies);
        })
          .catch((error: Error) => {
            logger.error(error.message);
            reject(error);
          });
        return result;
      }
    );
    return promise;
  }
}

