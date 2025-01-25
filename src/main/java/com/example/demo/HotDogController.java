package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HotDogController {
  @GetMapping("/hotdog")
  public String hotdog() {
    return "Hot Dog";
  }
}
