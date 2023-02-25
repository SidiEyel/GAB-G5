import { NgModule } from '@angular/core';
import { CommonModule, } from '@angular/common';
import { BrowserModule  } from '@angular/platform-browser';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
import { LoginComponent } from './login/login.component';
import { DepotComponent } from '../app/operations/depot/depot.component';
import { RetraitComponent } from '../app/operations/retrait/retrait.component';
import { VirementComponent } from '../app/operations/virement/virement.component';
import { ChequierComponent } from '../app/operations/chequier/chequier.component';



const routes: Routes =[
  {
    path: '',
    redirectTo: 'login',
    pathMatch: 'full',


  }, {
    path: '',
    component: AdminLayoutComponent,
    children: [{
      path: '',
      loadChildren: () => import('./layouts/admin-layout/admin-layout.module').then(m => m.AdminLayoutModule)
    }
  
  ]
  },

  { path: 'home', component: HomeComponent },
  { path: 'login',        component: LoginComponent },
  { path: 'depot',        component: DepotComponent },
  { path: 'retrait',        component: RetraitComponent },
  { path: 'virement',        component: VirementComponent },
  { path: 'chequier',        component: ChequierComponent },

  

];

@NgModule({
  imports: [
    CommonModule,
    BrowserModule,
    RouterModule.forRoot(routes,{
       useHash: true
    })
  ],
  exports: [
  ],
})
export class AppRoutingModule { }
