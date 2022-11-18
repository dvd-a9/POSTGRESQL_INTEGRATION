import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

import { AppComponent } from "../app.component";
import { PlanRepasComponent } from "../components/plan-repas/plan-repas.component";

const routes: Routes = [
  { path: "app", component: AppComponent },
  { path: "planRepas", component: PlanRepasComponent },
];

@NgModule({
  imports: [ RouterModule.forRoot(routes) ],
  exports: [ RouterModule ]
})
export class AppRoutingModule { }
