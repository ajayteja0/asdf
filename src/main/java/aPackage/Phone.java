package aPackage;

public class Phone {
	private String make;
	private int id;
	private String model;
	private int version;
	private int price;
	private int activation;
	private String modifiedDate;
	private String creationDate;
	
	
	public String getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}
	public void setId(int id) {
		this.id=id;
	}
	public String getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	public int getId() {
		return id;
	}
	public void setMake(String make) {
		this.make=make;
	}
	public String getMake() {
		return make;
	}
	public void setVersion(int version) {
		this.version=version;
	}
	public int getVersion() {
		return version;
	}
	public void setPrice(int price) {
		this.price=price;
	}
	public int getPrice() {
		return price;
	}
	public void setModel(String model) {
		this.model=model;
	}
	public String getModel() {
		return model;
	}
	public void setActivation(int activation) {
		this.activation=activation;
	}
	public int getActivation() {
		return activation;
	}
}
