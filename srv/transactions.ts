import cds from "@sap/cds";
import { Request } from "@sap/cds";

class TransactionsService extends cds.ApplicationService {
  async init() {
    // const Arrival = cds.entities["Arrival"];
    const ctx = cds.context;
    // const usr = ctx?.user;
    // Before CREATE: Validate quantity > 0
    this.before("CREATE", "Arrival", async (req: Request) => {
      const data = Array.isArray(req.data) ? req.data : [req.data];
      for (const item of data) {
        if (item.quantity <= 0) {
          req.reject(400, "Quantity must be greater than zero.");
        }
      }
    });

    this.before("READ", "Arrival", async function name(req: Request) {
      const usr = req.data;
    });
    // Call the parent class's init
    await super.init();
  }
}
export default TransactionsService;
