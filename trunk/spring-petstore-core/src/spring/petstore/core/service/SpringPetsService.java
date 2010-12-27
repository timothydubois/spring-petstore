package spring.petstore.core.service;

import java.util.List;

import spring.petstore.core.model.Category;
import spring.petstore.core.model.Item;

public interface SpringPetsService {

	public abstract List<Category> getCategories();

	public abstract Item getItem(long itemId);

	public abstract List<Item> getItems(long categoryId);

}