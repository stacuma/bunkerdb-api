import { DataTypes } from 'sequelize';
import { sequelize } from '.';
import Company from './company';
import { EmployeeInstance } from '../../interfaces';

const Employee = sequelize.define<EmployeeInstance>(
  'Employee',
  {
    id: {
      type: DataTypes.NUMBER,
      autoIncrement: true,
      primaryKey: true
    },
    company_id: {
      type: DataTypes.NUMBER
    },
    document_number: {
      type: DataTypes.INTEGER
    },
    first_name: {
      type: DataTypes.STRING
    },
    last_name: {
      type: DataTypes.STRING
    },
    date_admission: {
      type: DataTypes.DATE
    }
  },
  {
    tableName: 'employees',
    timestamps: false // true if  createdAt and updatedAt fields exist.
  }
);

Employee.belongsTo(Company, {
  foreignKey: 'id',
  as: 'company'
});
Company.hasMany(Employee, {
  foreignKey: 'company_id',
  as: 'employees'
});

export default Employee;
