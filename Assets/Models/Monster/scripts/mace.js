#pragma strict
var impactPrefab : Transform;
var mask : LayerMask;
var damage : float = 25;
var force : float = 250;
var range : float = 4;
var shortrange : float = 1;
var shortradius: float = 1;
var shortdamage : float = 10;
var radius : float = 5.0;

var raystartpos : Transform;
function Start () {

}

function Update () {

}
function rayfire()
{
	var fwrd = raystartpos.transform.forward;
	var ray = new Ray (raystartpos.position, fwrd);
	var rayhit : RaycastHit = new RaycastHit();
	
	if (Physics.Raycast(ray,rayhit, range,mask))
      	{   
      		
      		var explosionPos : Vector3 = rayhit.point;
			var colliders : Collider[] = Physics.OverlapSphere (explosionPos, radius);
					
			for (var hit : Collider in colliders)
			{
				if (hit && hit.GetComponent.<Rigidbody>() && hit.tag != "Player")
	
		
		
				hit.GetComponent.<Rigidbody>().AddExplosionForce(force, explosionPos, radius, 3.0);
		
				hit.SendMessage ("Damage", damage,SendMessageOptions.DontRequireReceiver);
			}
      		var impact = Instantiate(impactPrefab, rayhit.point, Quaternion.FromToRotation(Vector3.up, rayhit.normal));
      		
      	}
	
}
function rayfireshort()
{
	var fwrd = raystartpos.transform.forward;
	var ray = new Ray (raystartpos.position, fwrd);
	var rayhit : RaycastHit = new RaycastHit();
	
	if (Physics.Raycast(ray,rayhit, shortrange,mask))
      	{   
      		
      		var explosionPos : Vector3 = rayhit.point;
			var colliders : Collider[] = Physics.OverlapSphere (explosionPos, shortradius);
					
			for (var hit : Collider in colliders)
			{
				if (hit && hit.GetComponent.<Rigidbody>() && hit.tag != "Player")
	
		
		
				hit.GetComponent.<Rigidbody>().AddExplosionForce(force, explosionPos, shortradius, 3.0);
		
				hit.SendMessage ("Damage", shortdamage,SendMessageOptions.DontRequireReceiver);
			}
      		var impact = Instantiate(impactPrefab, rayhit.point, Quaternion.FromToRotation(Vector3.up, rayhit.normal));
      		
      	}
	
}