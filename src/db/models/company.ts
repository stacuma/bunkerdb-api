import { DataTypes } from 'sequelize';
import { sequelize } from '.';
import { CompanyInstance } from '../../interfaces';

const Company = sequelize.define<CompanyInstance>(
  'Company',
  {
    id: {
      type: DataTypes.NUMBER,
      autoIncrement: true,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    country: {
      type: DataTypes.ENUM('UY', 'BR', 'AR'),
      defaultValue: 'UY'
    }
  },
  {
    tableName: 'company',
    timestamps: false // true if  createdAt and updatedAt fields exist.
  }
);

export default Company;

//connection();
