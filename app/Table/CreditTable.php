<?php 
namespace App\Table;
use Core\Table\Table;


/**
* 
*/
class CreditTable extends Table
{
      
      public function findCredit($id)
      {
            $ $this->query("SELECT clients.name,
            clients.lastName,
            clients.birthDate,
            clients.phoneNumber,
            clients.zipCode,
            clients.adress,
            credits.montant,
            credits.organisme
            FROM clients 
            LEFT JOIN credits
            ON clients.id = credits.client_id");
      }

          public function allClients()
    {
        return $this->query("SELECT 
            clients.id,
            clients.name,
            clients.lastName,
            clients.birthDate,
            clients.phoneNumber,
            clients.zipCode,
            clients.adress,
            statusmaritals.status
            FROM clients 
            LEFT JOIN statusmaritals
            ON clients.maritalSituation = statusmaritals.id");
    }

}