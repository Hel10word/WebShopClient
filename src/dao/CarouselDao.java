package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.Carousel;
import util.DBHelper;

/*******************************************************************************
 * 
 * @author 张不凡   轮播管理数据库操作对象
 * 
 */
public class CarouselDao extends BaseDao {

	// 查询最新的广告轮播
	public List<Carousel> findNewCar(int order) {

		List<Carousel> list = new ArrayList<Carousel>();
		conn = DBHelper.getConn();
		String sqlString = "select * from Carousel ";
		try {
			ps = conn.prepareStatement(sqlString);
			// 设置参数
			//ps.setInt(1, order);
			rs = ps.executeQuery();
			while (rs.next()) {
				Carousel carousel = new Carousel();
				carousel.setId(rs.getInt("ID"));
				carousel.setTitle(rs.getString("title"));
				carousel.setImgpath(rs.getString("imgpath"));
				list.add(carousel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelper.closeResouce(conn, ps, rs);
		}

		return list;

	}

}
