#pragma strict
var attacksource : AudioSource;
var attackclips : AudioClip[];
function Start () {

}

function Update () {

}
function attacksound()
{
	attacksource.clip = attackclips[Random.Range(0,attackclips.Length)];
	attacksource.loop = false;
	attacksource.pitch = 0.9 + 0.2*Random.value;
	attacksource.Play();
}