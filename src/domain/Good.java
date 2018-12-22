package domain;

/*******************************************************************************
 * 
 * @author 张不凡  商品对象
 * 
 */
public class Good {

	// 编号
	private Integer id;
	// 商品名称
	private String name;
	// 商品类型
	private GoodType goodType = new GoodType();;
	// 商品图片
	private String imgpath;
	// 价格
	private Double price;
	// 描述
	private String describe;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public GoodType getGoodType() {
		return goodType;
	}

	public void setGoodType(GoodType goodType) {
		this.goodType = goodType;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

}
