import { Client } from "pg";
import { config } from "dotenv";
import cors from "cors";
import express from "express";

config();

const herokuSSLSetting = { rejectUnauthorized: false };
const sslSetting = process.env.LOCAL ? false : herokuSSLSetting;
const db = {
  connectionString: process.env.DATABASE_URL,
  ssl: sslSetting,
};

const app = express();

app.use(express.json());
app.use(cors());

const client = new Client(db);
client.connect();

app.get<{ id: number }>("/wall/:id", async (req, res) => {
  try {
    const id = req.params.id;
    const dbResponse = await client.query("select * from wall where id = $1", [
      id,
    ]);
    res.status(200).json({ status: "success", data: dbResponse.rows });
  } catch (error) {
    console.error(error);
  }
});

app.post("/wall", async (req, res) => {
  const {
    user,
    clue11,
    clue12,
    clue13,
    clue14,
    connection1,
    explanation1,
    clue21,
    clue22,
    clue23,
    clue24,
    connection2,
    explanation2,
    clue31,
    clue32,
    clue33,
    clue34,
    connection3,
    explanation3,
    clue41,
    clue42,
    clue43,
    clue44,
    connection4,
    explanation4,
  } = req.body;
  const dbResponse = await client.query(
    "insert into wall (clue1, clue2, clue3, clue4, connection, explanation) values ($25, $1, $2, $3, $4, $5, $6), ($25, $7, $8, $9, $10, $11, $12), ($25, $13, $14, $15, $16, $17, $18), ($25, $19, $20, $21, $22, $23, $24)",
    [
      clue11,
      clue12,
      clue13,
      clue14,
      connection1,
      explanation1,
      clue21,
      clue22,
      clue23,
      clue24,
      connection2,
      explanation2,
      clue31,
      clue32,
      clue33,
      clue34,
      connection3,
      explanation3,
      clue41,
      clue42,
      clue43,
      clue44,
      connection4,
      explanation4,
      user,
    ]
  );
});

//Start the server on the given port
const port = process.env.PORT;
if (!port) {
  throw "Missing PORT environment variable.  Set it in .env file.";
}
app.listen(port, () => {
  console.log(`Server is up and running on port ${port}`);
});

export default app;
