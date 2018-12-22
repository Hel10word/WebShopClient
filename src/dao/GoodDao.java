package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.Good;
import util.DBHelper;

/*******************************************************************************
 * 
 * @author 张不凡  商品数据库操作对象
 * 
 */
public class GoodDao extends BaseDao {

	// 查询所有商品列表
	public List<Good> queryGoods() {
		List<Good> list = new ArrayList<Good>();
		String sql = "select id,name,typeid,imgpath,price,describe from good order by createTime desc";
		conn = DBHelper.getConn();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Good good = new Good();
				good.setId(rs.getInt("id"));
				good.setName(rs.getString("name"));
				good.setPrice(rs.getDouble("price"));
				good.setDescribe(rs.getString("describe"));
				good.setImgpath(rs.getString("imgpath"));
				good.getGoodType().setId(rs.getInt("typeid"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelper.closeResouce(conn, ps, rs);
		}
		return list;
	}

	// 根据类型编号查询对应商品列表
	public List<Good> queryGoodByType(Integer typeid) {

		List<Good> list = new ArrayList<Good>();
		String sql = "select id,name,typeid,imgpath,price,describe from good where typeid=? order by createTime desc";
		conn = DBHelper.getConn();
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, typeid);
			ps.setInt(2, typeid);
			rs = ps.executeQuery();
			while (rs.next()) {
				Good good = new Good();
				good.setId(rs.getInt("id"));
				good.setName(rs.getString("name"));
				good.setPrice(rs.getDouble("price"));
				good.setDescribe(rs.getString("describe"));
				good.setImgpath(rs.getString("imgpath"));
				good.getGoodType().setId(rs.getInt("typeid"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelper.closeResouce(conn, ps, rs);
		}
		return list;

	}

}
