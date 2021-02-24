package com.emergencyaid.prototype;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;



public class DatabaseInfo {
	
	
	
	
	private JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int insertUser(User u) {
		String insertData="INSERT INTO `users`(`username`, `password`, `fname`, `lname`, `sex`, `bdate`, `city`) VALUES('"+u.getUsername()+"', '"+u.getPassword()+"','"+u.getFname()+"', '"+u.getLname()+"', '"+u.getSex()+"', '"+u.getBdate()+"', '"+u.getCity()+"'); ";
		
	return template.update(insertData);	
	}
	
	public int updateUser(User u,String oldusername) {
		System.out.println("User [username=" + u.getUsername() + ", password=" + u.getPassword() + ", firstName=" + u.getFname() + ", lastName="
				+ u.getLname() + ", sex=" + u.getSex() + ", date=" + u.getBdate() + ", city=" + u.getCity() + "]");
		
		String updateData="UPDATE `users` SET `username`='"+u.getUsername()+"', `fname`= '"+u.getFname()+"', `lname`= '"+u.getLname()+"', `sex`= '"+u.getSex()+"',`bdate`='"+ u.getBdate()+"', `city`='"+u.getCity()+ "' where username= '"+oldusername+"' ;"; 
	return template.update(updateData);	
	}
	
	
	public int deleteUser(User u) {
		String deleteData="DELETE FROM `users` where username= '"+u.getUsername()+"' ;"; 
		
	return template.update(deleteData);	
	}
	
	public List<User> viewAll(){
		return template.query("select * from users where users.role!=1" ,new RowMapper<User>(){  
			@Override
		    public User mapRow(ResultSet rs, int rownumber) throws SQLException {  
		        User u =new User();  
		        u.setUsername(rs.getString(1));
		        u.setFname(rs.getString(3));
		        u.setLname(rs.getString(4));	
		        u.setSex(rs.getString(5));
		        u.setBdate(rs.getString(6));
		        u.setCity(rs.getString(7));
		        
		        return u;  
		    }  
		    });  
	}
	
	
	public List<User> viewByName(String name){
		return template.query("select * from users where users.fname like '"+name+"%';", new RowMapper<User>() {
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		        User u =new User();  
		        u.setUsername(rs.getString(1));
		        u.setFname(rs.getString(3));
		        u.setLname(rs.getString(4));	
		        u.setSex(rs.getString(5));
		        u.setBdate(rs.getString(6));
		        u.setCity(rs.getString(7));      
		        return u;  
			}
						
				
		});
	}
	
	
	
	public User userByUsername(String username) {
        String sql = "SELECT `username`, `password`, `fname`, `lname`, `sex`, `bdate`, `city` FROM `users` WHERE username = ?";

        return (User)template.queryForObject(sql, new Object[]{username},new BeanPropertyRowMapper(User.class));
				
	}

	

	
}
