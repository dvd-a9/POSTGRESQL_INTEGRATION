
import { planRepas } from "src/app/interfaces/plan-repas";

export interface DialogData {
  planRepas: planRepas
  pending: boolean;
  success: boolean;
  update: boolean;
  delete: boolean;
  prodInsertError: boolean;
  adaptInsertError: boolean;
}
