package spring.petstore.core.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import spring.petstore.core.dao.CategoryDAO;
import spring.petstore.core.dao.ItemDAO;
import spring.petstore.core.model.Category;
import spring.petstore.core.model.Item;

@Transactional
public class SpringPetsServiceImpl implements SpringPetsService {
	
	private CategoryDAO categoryDAO;
	private ItemDAO itemDAO;

	/* (non-Javadoc)
	 * @see spring.petstore.core.service.SpringPetsService#getCategories()
	 */
	@Transactional(readOnly=true)
	public List<Category> getCategories() {
		List<Category> categories = categoryDAO.getCategories();
		return categories;
	}
	
	/* (non-Javadoc)
	 * @see spring.petstore.core.service.SpringPetsService#getItem(long)
	 */
	@Transactional(readOnly=true)
	public Item getItem(long itemId)
	{
		Item item = itemDAO.getItem(itemId);
		return item;
	}
	
	/* (non-Javadoc)
	 * @see spring.petstore.core.service.SpringPetsService#getItems(long)
	 */
	@Transactional(readOnly=true)
	public List<Item> getItems(long categoryId)
	{
		List<Item> items = itemDAO.getItems(categoryId);
		return items;
	}

	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}

	public void setItemDAO(ItemDAO itemDAO) {
		this.itemDAO = itemDAO;
	}
}