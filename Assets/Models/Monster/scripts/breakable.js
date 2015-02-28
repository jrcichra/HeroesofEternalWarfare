#pragma strict
var hitpoints: float = 100;
var spawnobject : Transform;
function Start () {

}

function Update () 
{
	if (hitpoints <= 0)
	{
		Instantiate(spawnobject, transform.position, transform.rotation);
		Destroy (gameObject);
	}
	
}
function Damage (damage : float) 
{
	
	yield WaitForSeconds (0.1);
	hitpoints = hitpoints - damage;
}