import { Injectable } from '@angular/core';
import { Card } from '../models/Card';
import { catchError,map } from 'rxjs/operators';
import { Observable, throwError } from 'rxjs';
import { HttpClient,HttpHeaders, HttpErrorResponse } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class CardService {

  REST_API: string = 'http://localhost:8080/customer';

  httpHeaders = new HttpHeaders().set('Content-Type','application/json');

  constructor(private httpClient: HttpClient) { }

  addCard(data:Card): Observable<any>{
    let API_URL =  `${this.REST_API}`;
    return this.httpClient.post(API_URL,data).pipe(catchError(this.handleError))
  }
  
  
  getCards(){
    return this.httpClient.get(`${this.REST_API}`);
  }
  
  getCard(id: any): Observable<any> {
    let API_URL = `${this.REST_API}/${id}`;
  return this.httpClient.get(API_URL, { headers: this.httpHeaders})
  .pipe(map((res:any)=>{
    return res || {}
  }),
    catchError(this.handleError))
  }
  
  
    updateCard(id: any, data: Card): Observable<any> {
      let API_URL = `${this.REST_API}/${id}`;
      return this.httpClient.put(API_URL, data, { headers: this.httpHeaders })
        .pipe(catchError(this.handleError))
    }
  
    deleteCard(id: any ): Observable<any> {
      let API_URL = `${this.REST_API}/${id}`;
      return this.httpClient.delete(API_URL,  { headers: this.httpHeaders })
        .pipe(catchError(this.handleError))
    }
  
    handleError(error:HttpErrorResponse){
      let errorMessage = '';
      if(error.error instanceof ErrorEvent){
        errorMessage = error.error.message;
      }else{
        errorMessage = `Error Code: ${error.status}\n Message: ${error.message}`
      }
      console.log(errorMessage);
      return throwError(errorMessage);
    }
}
