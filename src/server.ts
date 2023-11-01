import dotenv from 'dotenv';
import app from './app';
dotenv.config();


const port = process.env.SERVER_PORT || 3000;
try {
  app.listen(port, () => {
    console.log(`Server started on port ${port}`);
  });
} catch (error) {
  console.error('error', error);
  process.exit(1);
}
