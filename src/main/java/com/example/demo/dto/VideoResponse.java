package com.example.demo.dto;

import com.example.demo.models.Joueur;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class VideoResponse {


	private String name;
	 private String Source;
	 private String URL;
	private Joueur joueur;
	/* public VideoResponse(String name, String source, String uRL) {
		super();
		this.name = name;
		Source = source;
		URL = uRL;
	}
	public VideoResponse() {
		super();
	}*/
	 
	 
}
