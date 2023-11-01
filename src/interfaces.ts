import { Model } from 'sequelize';

export interface EmployeeAttributes {
  id: number;
  company_id: number;
  document_number: number;
  first_name: string;
  last_name: string;
  date_admission: Date;
}

export enum Country {
  'UY' = 'Uruguay',
  'BR' = 'Brasil',
  'AR' = 'Argentina'
}

export interface CompanyAttributes {
  id: number;
  name: string;
  country: Country;
  employees?: Array<SingleEmployeeAttributes>;
}

export interface CompanyInstance
  extends Model<CompanyAttributes>,
  CompanyAttributes { }
export interface EmployeeInstance
  extends Model<EmployeeAttributes>,
  EmployeeAttributes { }

export interface SingleEmployeeAttributes
  extends Omit<EmployeeAttributes, 'company_id'> { }
