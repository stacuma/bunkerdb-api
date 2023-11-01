const { DataTypes } = require('sequelize');

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  up: async (queryInterface) => {
        await queryInterface.addColumn('employees', 'company_id', {
          type: DataTypes.INTEGER,
          allowNull: false,
        })
        .then(() =>
          queryInterface.sequelize.query('UPDATE employees, company SET employees.company_id = company.id WHERE employees.company_name = company.name'));
        await queryInterface.removeColumn('employees', 'company_name');
    },
  down:async (queryInterface) => {
     await queryInterface.addColumn('employees', 'company_name', {
        type: DataTypes.STRING,
        allowNull: false,
      })
  }
};