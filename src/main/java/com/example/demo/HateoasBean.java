package com.example.demo;

import java.util.Arrays;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.hateoas.client.LinkDiscoverers;
import org.springframework.hateoas.mediatype.collectionjson.CollectionJsonLinkDiscoverer;
import org.springframework.plugin.core.SimplePluginRegistry;
@SpringBootApplication
public class HateoasBean {
	@Bean
	public LinkDiscoverers discoverers() {
		return new LinkDiscoverers(SimplePluginRegistry.create(Arrays.asList(new CollectionJsonLinkDiscoverer())));
	}

}
