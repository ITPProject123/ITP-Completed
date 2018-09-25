
package com.example.demo.dao.SalesManagement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.example.demo.model.SalesManagement.IsuDBCheck;



@Service
public class IsuDBCheckDAO {

	JdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource datasource) {
		template = new JdbcTemplate(datasource);
	}
	
	
	public void save(IsuDBCheck p) {
		String sql = "insert into mytable(myID,myAge) values("+p.getId()+","+p.getAge()+")";
		System.out.println(sql);
		template.update(sql);
	}

}
