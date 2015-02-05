using UnityEngine;
using System.Collections;

public class TowerPillar : MonoBehaviour {
	public Color teamColor, glowColor;
	
	// Use this for initialization
	void Start () {
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
					matt.SetColor  ("_TintColor", this.glowColor );
					temp = true;
				}
				if (matt.name == "Team (Instance)") {
					matt.color = this.teamColor;
					temp = true;
				}
				
				
			}
		}
	}
}
