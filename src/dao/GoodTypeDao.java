package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import domain.GoodType;
import util.DBHelper;

/*******************************************************************************
 * 
 * @author 张不凡  商品类型数据库操作对象
 * 
 */
public class GoodTypeDao extends BaseDao {

	// 加载所有商品类型
	public List<GoodType> loadAllGoodTypes() {

		List<GoodType> list = new ArrayList<GoodType>();
		// 获得数据库连接
		this.conn = DBHelper.getConn();
		// 执行sql语句
		String sql = "select * from good_type";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				GoodType type = new GoodType();
				type.setId(rs.getInt("ID"));
				type.setTypeName(rs.getString("TYPENAME"));
				// 添加List集合中
				list.add(type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBHelper.closeResouce(conn, ps, rs);
		}

		return list;
	}

}
