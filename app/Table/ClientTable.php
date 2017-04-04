<?php 
namespace App\Table;
use Core\Table\Table;


/**
* 
*/
class ClientTable extends Table
{
          public function findClient($id)
    {
        return $this->query("SELECT clients.id,
            clients.name,
            clients.lastName,
            clients.birthDate,
            clients.phoneNumber,
            clients.zipCode,
            clients.adress,
            statusmaritals.status
            FROM clients 
            LEFT JOIN statusmaritals
            ON clients.maritalSituation = statusmaritals.id
            WHERE clients.id = ?" ,[$id], true);
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