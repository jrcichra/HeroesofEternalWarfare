using UnityEngine;
using System.Collections;

public class Common : MonoBehaviour {
	protected Team team;

	public void SetTeam(){
		team = transform.root.GetComponentInChildren< Team >();
	}
	
	public void SetTeamColor() {
		TeamColor[] teamColors = GetComponentsInChildren< TeamColor >();
		foreach (TeamColor teamColor in teamColors) {
			foreach (Material matt in teamColor.renderer.materials) {
				if (matt.name == "Glow (Instance)") {
					matt.SetColor  ("_TintColor", team.glowColor );
				}
				if (matt.name == "Team (Instance)") {
					matt.color = team.teamColor;
				}
				if (matt.name == "Team_A (Instance)") {
					matt.color = team.teamColor;
				}
			}
		}
	}
}
