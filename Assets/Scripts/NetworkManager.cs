using UnityEngine;
using System.Collections;

public class NetworkManager : MonoBehaviour {

	public Camera MenuCam;
	Nexus[] spawnSpots;
	public float x_Offset;
	public float y_Offset; 
	public float z_Offset; 

	// Use this for initialization
	void Start () {
		spawnSpots = GameObject.FindObjectsOfType<Nexus>();
		Connect ();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void Connect() {
		PhotonNetwork.ConnectUsingSettings ("HoEW v0.01");
	}

	void OnGUI() {
		GUILayout.Label( PhotonNetwork.connectionStateDetailed.ToString() );
	}

	void OnJoinedLobby() {
		Debug.Log ("OnJoinedLobby");
		PhotonNetwork.JoinRandomRoom();
	}
	
	void OnPhotonRandomJoinFailed() {
		Debug.Log ("OnPhotonRandomJoinFailed");
		PhotonNetwork.CreateRoom( null );
	}
	
	void OnJoinedRoom() {
		Debug.Log ("OnJoinedRoom");
		
		SpawnMyPlayer();
	}
	void SpawnMyPlayer(){
		if(spawnSpots == null) {
			Debug.LogError ("No Nexus's?");
			return;
		}

		Nexus mySpawnSpot = spawnSpots[ Random.Range (0, spawnSpots.Length) ];
		GameObject myPlayerGO = (GameObject)PhotonNetwork.Instantiate("Player",mySpawnSpot.transform.position + new Vector3 (x_Offset, y_Offset, z_Offset) , mySpawnSpot.transform.rotation, 0);
		((MonoBehaviour)myPlayerGO.GetComponent("FPSInputController")).enabled = true;
		MenuCam.enabled = false;

		((MonoBehaviour)myPlayerGO.GetComponent("MouseLook")).enabled = true;
		myPlayerGO.transform.FindChild("Main Camera").gameObject.SetActive(true);
	}
}
