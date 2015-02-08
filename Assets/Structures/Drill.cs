using UnityEngine;
using System.Collections;

public class Drill : MonoBehaviour {
	protected Team team;
	
	// Use this for initialization
	void Start () {
		team = transform.root.GetComponentInChildren< Team >();
		SetTeamColor();
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	public void SetTeamColor() {
		bool temp;
		TeamColor[] teamColors = GetComponentsInChildren< TeamColor >();
		foreach (TeamColor teamColor in teamColors) {
			temp = false;
			foreach (Material matt in teamColor.renderer.materials) {
				
				print ("Mat Name: " + matt.name);
				if (matt.name == "Glow (Instance)") {
					matt.SetColor  ("_TintColor", team.glowColor );
					temp = true;
				}
				if (matt.name == "Team (Instance)") {
					matt.color = team.teamColor;
					temp = true;
				}
				
				
			}
		}
	}
}
