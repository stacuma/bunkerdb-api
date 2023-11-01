import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';
import dotenvExpand from 'dotenv-expand';

dotenvExpand.expand(dotenv.config());

const sequelize = new Sequelize(process.env.DATABASE_URL, { logging: false });

/*const  sequelize = config.url
  ? new Sequelize(config.url, config)
  : new Sequelize(config.database, config.username, config.password, config);*/
export { Sequelize, sequelize };
