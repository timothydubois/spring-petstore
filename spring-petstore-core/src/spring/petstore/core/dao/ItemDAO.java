package spring.petstore.core.dao;

import java.util.List;

import spring.petstore.core.model.Item;

public interface ItemDAO {

	public List<Item> getItems(long categoryId);

	public Item getItem(long itemId);
}
