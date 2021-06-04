package com.example.demo.services;

import com.example.demo.dto.VideoRequest;
import com.example.demo.dto.VideoResponse;

public interface VideoService {

	VideoResponse AddVideo(VideoRequest request, long idJoueur);
	String DeleteVideo(long idVideo);
}
