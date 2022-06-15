import { RegistroComponent } from './components/registro/registro.component';
import { LoginComponent } from './components/login/login.component';
import { AppComponent } from './app.component';
import { AsistentesComponent } from './components/asistentes/asistentes.component';
import { ParticipantesComponent } from './components/participantes/participantes.component';
import { AdministradorComponent } from './components/administrador/administrador.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {path:'login',component:LoginComponent},
  {path:'administrador',component:AdministradorComponent},
  {path:'participantes',component:ParticipantesComponent},
  {path:'asistentes',component:AsistentesComponent},
  {path:'registro',component:RegistroComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
