import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { AppRoutingModule } from './app.routing';
import { ComponentsModule } from './components/components.module';
import { AppComponent } from './app.component';
import { AdminLayoutComponent } from './layouts/admin-layout/admin-layout.component';
// import { CardComponent } from './card/card.component';


import { CompteComponent } from './compte/compte.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatCardModule } from '@angular/material/card';
import { DepotComponent } from './operations/depot/depot.component';
import { RetraitComponent } from './operations/retrait/retrait.component';
import { VirementComponent } from './operations/virement/virement.component';
import { ChequierComponent } from './operations/chequier/chequier.component';

import {MatButtonModule} from '@angular/material/button';
import {MatInputModule} from '@angular/material/input';
import {MatRippleModule} from '@angular/material/core';
import {MatTooltipModule} from '@angular/material/tooltip';
import {MatSelectModule} from '@angular/material/select';
import { SoldeComponent } from './operations/solde/solde.component';


@NgModule({
  imports: [
    MatButtonModule,
    MatTooltipModule,
    MatSelectModule,
    MatRippleModule,
    MatInputModule,
    BrowserAnimationsModule,
    FormsModule,
    MatFormFieldModule,
    ReactiveFormsModule,
    HttpClientModule,
    ComponentsModule,
    RouterModule,
    AppRoutingModule,
    MatCardModule
  ],
  declarations: [
    AppComponent,
    AdminLayoutComponent,
    CompteComponent,
    HomeComponent,
    LoginComponent,
    DepotComponent,
    RetraitComponent,
    VirementComponent,
    ChequierComponent,
    SoldeComponent,
    
    

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
