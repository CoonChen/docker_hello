package com.coon.docker.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author chenjl
 */
@RestController
@RequestMapping("/app")
public class HelloWorldController {
    @RequestMapping("/test")
    public String helloWorld(){
        return "This is first docker spring boot.";
    }

    @RequestMapping(value = "/demo")
    public void test(){
    }
}
