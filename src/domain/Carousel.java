package domain;

/*******************************************************************************
 * 
 * @author 张不凡   轮播对象
 * 
 */
public class Carousel {

	// 编号
	private Integer id;
	// 标题
	private String title;
	// 图片路径
	private String imgpath;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

}
