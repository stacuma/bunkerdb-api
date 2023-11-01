
import express, { Request, Response } from 'express';
import CompanyRouter from './router/v1/company.router';
import helmet from "helmet";

const app = express();

app.use(express.json());
app.use(helmet());

app.get('/', (req: Request, res: Response): Response => {
  return res.json({ message: 'Server working...  🤟' });
});

app.use('/api/v1/companies', CompanyRouter);

export default app;

