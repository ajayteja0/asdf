package aPackage;
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;  

@SuppressWarnings("unused")
public class PhoneDao {
	JdbcTemplate template;
	public void setTemplate(JdbcTemplate template) {  
	    this.template = template;  
	}
	public String savePhone(Phone phoneObject) {
		String sql="insert into phone(make,model,version,price,activation,creationDate,modifiedDate) values ('"+phoneObject.getMake() +"', '"+phoneObject.getModel() +"', "+phoneObject.getVersion()+","+phoneObject.getPrice()+" ,1,'"+phoneObject.getCreationDate()+"','"+phoneObject.getCreationDate()+ "')";
		template.update(sql);
		return "viewPhones";
	}
	public int updatePhone(Phone phoneObject) {
		String sql="update phone set make = ?,model = ?,version = ? , price = ?,modifiedDate=? where id=?";
		return template.update(sql,phoneObject.getMake(),phoneObject.getModel(),phoneObject.getVersion(),phoneObject.getPrice(),phoneObject.getModifiedDate(),phoneObject.getId());
	
	}
	public int deactivate(int id) {
		String sql="update phone set activation = ? where id= ?";
		return template.update(sql,0,id);
	}
	public int activate(int id) {
		String sql="update phone set activation = ? where id= ?";
		return template.update(sql,1,id);
	}
	public Phone getPhoneById(int id) {
		String sql="select * from phone where id= ?";
		return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Phone>(Phone.class) );
	}
	
	public List<Phone> getActivatedPhones(){
	List<Phone>  phone=template.query("select * from phone where activation = 1", new BeanPropertyRowMapper<Phone>(Phone.class) );
	return phone;
	}
	
	public List<Phone> getAllPhones(){
		List<Phone>  phone=template.query("select * from phone", new BeanPropertyRowMapper<Phone>(Phone.class) );
		return phone;
		}
	/*public List<Phone> getPhones(){
		return template.query("select * from phone", new RowMapper<Phone>(){
			public Phone mapRow(ResultSet rs, int row) throws SQLException{
				Phone phoneObject=new Phone();
				phoneObject.setId(rs.getInt(1)); 
				phoneObject.setMake(rs.getString(2));
				phoneObject.setModel(rs.getString(3));
				phoneObject.setVersion(rs.getInt(4));
				phoneObject.setPrice(rs.getInt(5));
				return phoneObject;
			}		
		});
}*/
	

	
	
	
	
}