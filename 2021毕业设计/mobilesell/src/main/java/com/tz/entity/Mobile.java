package com.tz.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "MOBILE")
public class Mobile {
    private Long id;
    
    private String model;
    private double price;
    private String categoryname;
    private int hotsell;
    private int lowprice;
    
    private Category category;
    private Cart cart;

	public Mobile() {
		super();
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
    @Column
	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
	@Column
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
	@Column
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	@ManyToOne
	@JoinColumn(name="categoryid")
	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	@OneToOne
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	@Column
	public int getHotsell() {
		return hotsell;
	}
	public void setHotsell(int hotsell) {
		this.hotsell = hotsell;
	}
	@Column
	public int getLowprice() {
		return lowprice;
	}
	public void setLowprice(int lowprice) {
		this.lowprice = lowprice;
	}
    
	
}
