import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ILogin } from 'app/models/ILogin';
import { AuthentificationService } from 'app/services/authentification.service';
import { LocalDbService } from 'app/services/local-db.service';
import { UtilService } from 'app/services/util.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

  formLogin: FormGroup = <FormGroup>{};
  showError = false;

  constructor(private utilService: UtilService,
              private formBuilder: FormBuilder,
              private localDbService: LocalDbService,
              private authentificationService: AuthentificationService,
              ) {
  }

  ngOnInit(): void {
    this.formLogin = this.formBuilder.group({
      login : ['', Validators.required],
      password : ['', Validators.required]
    })
  }

  loginIn() {
    const loginObj: ILogin = {
      email: this.formLogin.value.login,
      password: this.formLogin.value.password
    }

    this.authentificationService.logIn(loginObj).subscribe(loginResp => {
      if(loginResp) {
        this.utilService.navigateByUrl('apropos');
        this.localDbService.token = "BEARER " + loginResp.token;
      } else {
        this.showError = true;
      }
    });
  }
}
