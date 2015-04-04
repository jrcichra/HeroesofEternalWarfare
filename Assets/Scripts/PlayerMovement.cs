using UnityEngine;
using System.Collections;

public class PlayerMovement : Photon.MonoBehaviour {
	/*
	 * This component is only enabled for "my player" (i.e the local machine char)
	 * 
	 * 
	 */ 

	public float speed;
	public float jumpSpeed = 9f;
	public float gravityModifier = 1;
	Vector3 direction = Vector3.zero;
	float verticalVelocity = 0;

	CharacterController cc; 
	Animator anim;
	// Use this for initialization
	void Start () {
		cc = GetComponent<CharacterController> ();
		anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (speed);
		if(gameObject.name == ("Player_1")){
		//WASD forward/back/left/rigth movement is stored in 'direction'
		direction = transform.rotation * new Vector3 (Input.GetAxis ("Horizontal"), 0, Input.GetAxis ("Vertical"));		//normalized fixes strafing being faster than single button movements

		if (direction.magnitude > 1f) {
			direction = direction.normalized;
		}
		anim.SetFloat ("Speed", direction.magnitude);
			Debug.Log(direction.magnitude);
		//handle jumping
		if (cc.isGrounded && Input.GetButton ("Jump")) { //Hold space for jump
			verticalVelocity = jumpSpeed;
			}


		//Check if the player wants to quit the game
			if(Input.GetKeyDown (KeyCode.Escape)){
				Application.Quit ();
			}
		AdjustAimAngle();
	}
}

	void AdjustAimAngle(){
		Camera myCamera = this.GetComponentInChildren<Camera> ();

		if (myCamera==null){
			Debug.Log ("Why doesn't my character have a camera?");
			return;
		}
		//float AimAngle = 0;

		/*if(myCamera.transform.rotation.eulerAngles.x <= 90f){
			//We are looking down
			AimAngle = -myCamera.transform.rotation.eulerAngles.x;
		}else{
			AimAngle=360 - myCamera.transform.rotation.eulerAngles.x;
		}*/

		//transform.rotation.x = AimAngle;
		//anim.SetFloat ("AimAngle", AimAngle);
	}
	// FixedUpdate is called once per physics loop (Do all movement/physics here)
	void FixedUpdate(){
		Vector3 dist = direction * speed * Time.deltaTime;
		if(gameObject.name == ("Player_1")){
		if (cc.isGrounded && verticalVelocity < 0) {
			//anim.SetBool ("Jumping",false);	
			verticalVelocity = Physics.gravity.y * Time.deltaTime ;//* gravityModifier;
		} else{
			if(Mathf.Abs (verticalVelocity) > jumpSpeed*.75f){
				//anim.SAimetBool ("Jumping",true);
			}
			verticalVelocity += Physics.gravity.y * Time.deltaTime * gravityModifier;
		}

		//Debug.Log (verticalVelocity);
		//Debug.Log (transform.position);
		dist.y = verticalVelocity * Time.deltaTime;
		cc.Move(dist);
		}
	}
}
