package spring.petstore.core.dao.jdbc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.simple.ParameterizedRowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

import spring.petstore.core.dao.CategoryDAO;
import spring.petstore.core.model.Category;

public class JDBCCategoryDAOImpl implements CategoryDAO {

	private SimpleJdbcTemplate jdbcTemplate;

	public List<Category> getCategories() {
		
		ParameterizedRowMapper<Category> mapper = new ParameterizedRowMapper<Category>() {
	        public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
	    		Category category = new Category();
	    		category.setId(rs.getLong("ID"));
	    		category.setName(rs.getString("NAME"));
	    		return category;
	    	}
	    };

		String sql = "select * from category";
		List<Category> categories = this.jdbcTemplate.query(sql, mapper);
		System.out.println(categories.size());
		return categories;
	}

	public void setJdbcTemplate(SimpleJdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
}
