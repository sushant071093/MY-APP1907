package com.example.demo;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
@Service
public class ReceipeService {
	private static List<Receipe> recipe=new ArrayList();
	private static List<Ingredient> ingredient =new ArrayList();
	private int idCounter=0;
	
	/*
	 * static { receipe.add(new
	 * Receipe("Chicken","Made Of Khara Chicken","xyz",ingredient)); }
	 */
	public Receipe save(Receipe receipe) {
		receipe.setId(++idCounter);
		recipe.add(receipe);
		return receipe;
	}
public Receipe getById(int id) {
	id=id-1;
	if(id>idCounter) {
		return null;
	}
	Receipe r=recipe.get(id);
	return r;
}
public List<Receipe> getAll(){
	return recipe;
}
}
