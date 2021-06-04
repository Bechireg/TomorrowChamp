package com.example.demo.endpoints;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.dto.JoueurRequest;
import com.example.demo.dto.JoueurResponse;
import com.example.demo.dto.VideoRequest;
import com.example.demo.dto.VideoResponse;
import com.example.demo.services.JoueurService;
import com.example.demo.services.VideoService;

@RestController
@RequestMapping("/api/videos")
public class VideoRest {

	private VideoService service;
	
	
	@Autowired
	public VideoRest(VideoService service) {
		super();
		this.service = service;
	}
	
	@PostMapping("/{id}")
	public VideoResponse AjouterVideo(@Valid @RequestBody VideoRequest video,@PathVariable("id") long idJoueur){
		return service.AddVideo(video, idJoueur);
	}
	
	@DeleteMapping("/{id}")
	public String deleteVideo(@PathVariable("id") long id) {
		return service.DeleteVideo(id);
	}
}
