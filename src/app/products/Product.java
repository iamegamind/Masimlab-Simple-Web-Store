package app.products;

import java.io.Serializable;

public class Product implements Serializable{
	
	private static final long serialVersionUID = -3785963370018231044L;
	private String name;
	private String artist;
	private double price;
	private boolean available;
	private String imagePath;
	private int likes;
	
	public Product(String name, String artist, double price, boolean available,
			String imagePath, int likes) {
		super();
		this.name = name;
		this.artist = artist;
		this.price = price;
		this.available = available;
		this.imagePath = imagePath;
		this.likes = likes;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}

	public boolean equals(Object o) {
		  if (!(o instanceof Product)) {
		    return false;
		  }
		  Product other = (Product) o;
		  return name.equals(other.getName()) && artist.equals(other.getArtist()) && price == other.getPrice();
		}

		public int hashCode() {
		  return name.hashCode();
		}
	
	
}
