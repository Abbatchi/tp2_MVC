<?php 
	//var_dump($_POST);
	if (isset($_POST['name'])) {
		App::getInstance()->getTable('client')->create($_POST);
		header('location: index.php?p=clients');
		exit();
	}
 ?>


<h2>Ajouter un client</h2>
<p><a href="index.php?p=clients">Retourner sur liste des clients</a></p>


<form action="" method="post">
	<input type="hidden" placeholder="id" name="id" value="">
	<input type="text" placeholder="Nom" name="name" value="" required>
	<input type="text" placeholder="Prenom" name="lastName" value="" required>
	<input type="date" placeholder="Date de naissanse" name="birthDate" value="" required>
	<input type="text" placeholder="Adresse" name="adress" value="" required>
	<input type="number" placeholder="Code Postal" name="zipCode" value="" required>
	<input type="number" placeholder="Numero de telephone" name="phoneNumber" value="" required>
	<select name="maritalSituation" required>
		<option value="">Choisir une option</option>
			<?php foreach (App::getInstance()->getTable('statusMarital')->all() as $status): ?>
				<option value="<?=$status->id?>" name="status"><?=$status->status?></option>
			<?php endforeach ?>
	</select>
	<input type="submit" class="btn btn-success" value="Ajouter">



</form>




