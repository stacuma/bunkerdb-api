import dotenv from 'dotenv';
import app from './app';
dotenv.config();
import { logger } from './utils/logger/Logger';


const port = process.env.SERVER_PORT || 3000;
try {
  app.listen(port, () => {
    logger.info(`Server started on port ${port}`);
  });
} catch (error) {
  logger.error('error', error);
  process.exit(1);
}
