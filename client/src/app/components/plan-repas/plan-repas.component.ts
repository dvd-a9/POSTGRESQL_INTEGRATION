import { Component, OnInit } from '@angular/core';
import { MatDialog, MatDialogConfig } from '@angular/material/dialog';
import { planRepas } from 'src/app/interfaces/plan-repas';
import { CommunicationService } from 'src/app/services/communication.service';
import { DialogComponent } from '../dialog/dialog.component';

@Component({
  selector: 'app-plan-repas',
  templateUrl: './plan-repas.component.html',
  styleUrls: ['./plan-repas.component.css']
})
export class PlanRepasComponent implements OnInit {
  planRepas: planRepas[] = [
    {numeroplan: 1,categorie: 'Végétarien',frequence: 1,nbpersonnes: 2,nbrcalories: 670,prix: 23,numerofournisseur: 12},
    {numeroplan: 2,categorie: 'Famille',frequence: 4,nbpersonnes: 4,nbrcalories: 1670,prix: 56,numerofournisseur: 10},
    {numeroplan: 3,categorie: 'Pescétarien',frequence: 2,nbpersonnes: 1,nbrcalories: 330,prix: 11,numerofournisseur: 11},
  ];
 
  displayedColumns: string[] = ['numeroplan','categorie','frequence','nbpersonnes','nbrcalories','prix','numerofournisseur'];

  constructor(public dialog: MatDialog, private readonly communicationService: CommunicationService) {}

  dataSource = this.planRepas;
  ngOnInit(): void {
    this.getAllPlanRepas();
  }

  openDialog( planRepas: planRepas) {
    const dialogConfig = new MatDialogConfig();
    dialogConfig.disableClose = false;
    dialogConfig.autoFocus = true;
    dialogConfig.minWidth = '650px';
    dialogConfig.data = {
      planRepas,
    };
    this.dialog.open(DialogComponent, dialogConfig);
  }


  private getAllPlanRepas(): void {
    this.communicationService.getAllPlanRepas().subscribe((planRepas: planRepas[]) => {
      this.planRepas = planRepas ? planRepas : [];
    });
  }

}
