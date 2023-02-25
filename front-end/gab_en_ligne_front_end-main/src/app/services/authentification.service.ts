import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { ILogin } from 'app/models/ILogin';
import { ILoginResp } from 'app/models/ilogin-resp';
import { Observable } from 'rxjs';
import { LocalDbService } from './local-db.service';
import { UtilService } from './util.service';

@Injectable({
  providedIn: 'root'
})
export class AuthentificationService {

  
  constructor(private httpClient: HttpClient,
    private utilService: UtilService,
    private localDbService: LocalDbService) { }

logIn(loginObj: ILogin): Observable<ILoginResp> {
return this.httpClient.post<ILoginResp>("http://localhost:9000/api/v1/auth/authenticate", loginObj);
}

logOut() {
this.localDbService.token = "";
this.utilService.navigateByUrl("login");
}
  

}
