#pragma strict
var myaudiosource : AudioSource;
var clips : AudioClip[];


var soundInterval : float = 4;
private var nextsound : float = 20;


function Start()
{
	
}
function Update()
{
	if (Time.time > nextsound)
	{
		nextsound = Time.time + soundInterval;
		
		
		myaudiosource.clip = clips[Random.Range(0,clips.Length)];
		myaudiosource.Play();;						
	}
	
		
	
}
