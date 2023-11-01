const { DataTypes } = require('sequelize')

/** @type {import('sequelize-cli').Migration} */
module.exports ={
  up: async (queryInterface) => {
    await queryInterface.removeColumn('company', 'cant_employees');
  },

  down: async(queryInterface) => {
    await queryInterface.addColumn('company', 'cant_employees', {
      type: DataTypes.INTEGER,
      allowNull: false,
      defaultValue: 0,
    });
  }
};
