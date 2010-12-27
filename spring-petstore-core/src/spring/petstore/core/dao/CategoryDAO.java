package spring.petstore.core.dao;

import java.util.List;

import spring.petstore.core.model.Category;

/**
 * @author wakao.in
 *
 */
public interface CategoryDAO {

	public List<Category> getCategories();
}
