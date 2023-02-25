import { Component, OnInit ,NgZone} from '@angular/core';
import {Router} from '@angular/router';
import { CardService } from '../services/card.service';
import { FormGroup, FormBuilder } from '@angular/forms';

@Component({
  selector: 'app-card',
  templateUrl: './card.component.html',
  styleUrls: ['./card.component.scss']
})
export class CardComponent implements OnInit {


  cardForm: FormGroup;

  constructor(
    public formBiulder:FormBuilder,
    private router:Router,
    private ngZone:NgZone,
    private cardService: CardService
  ) {
     this.cardForm = this.formBiulder.group({
      acctID: [''],
      custName: [''],
      city: [''],
      state: [''],
      country: [''],
      acctStatus: [''],
      phoneNo: [''],
      password: [''],

     
     })
  }

  ngOnInit(): void {
  }


  onSubmit():any{
    this.cardService.addCard(this.cardForm.value)
    .subscribe(()=>{
      console.log('Data added successfully')
      this.ngZone.run(()=> this.router.navigateByUrl('/card'))
    },(err)=>{
      console.log(err)
    })
  }
}
