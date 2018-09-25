package com.example.demo.dao.PaymentManagement;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Service;

import com.example.demo.model.PaymentManagement.Sales;

@Service
public class SalesDAO {

	
	JdbcTemplate template;
	
	@Autowired
	public void serDataSource(DataSource datasource) {
		
		template = new JdbcTemplate(datasource);
		
		
	}
	
	
	public Sales getSalesById(int id) {
		//select * from employee inner join system_user on employee.empID=system_user.empSUId
		return template.query("select salesId,date,totalAmount,paymentMethod from sales where salesID="+id,new ResultSetExtractor<Sales>() {
			
			public Sales extractData(ResultSet rs) throws SQLException {
				
				
				 Sales s = new Sales();
				while(rs.next()) {
					
					
					
					s.setSalesId(rs.getInt(1));
					s.setDate(rs.getString(2));
					s.setTotalAmount(rs.getDouble(3));
					s.setPaymentMethod(rs.getString(4));
					
			
				}
				return s;
		}
				
			
		});
		
	}
	
	
	
}
