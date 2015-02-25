#pragma strict
var footsounds : AudioClip[];
var footsource : AudioSource;
function Start () {

}

function Update () 
{
	

}
function OnTriggerEnter (other : Collider) 
{
	if (!footsource.isPlaying)
	{
	
		footsource.clip = footsounds[Random.Range(0,footsounds.Length)];
		footsource.loop = false;
		footsource.pitch = 0.9 + 0.2*Random.value;
		footsource.Play();
	}
}