package com.jspshop.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.DBManager;

import com.jspshop.dto.CartVO;
import com.jspshop.dto.OrderVO;

public class OrderDAO {

	private OrderDAO() {
	}

	private static OrderDAO instance = new OrderDAO();

	public static OrderDAO getInstance() {
		return instance;
	}

	// ����ڰ� �ֹ�
	//cartList�� ��ٱ��Ͽ� ���� ��ǰ���� �ش� ���̵� ����Ʈ�� �����͵���  cartVO�� ���� �͵���.
	public int insertOrder(ArrayList<CartVO> cartList, String id) {
		int maxOseq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs;

		try {
			conn = DBManager.getConnection();
			
			//id�� ���ǿ��� ������ ���� ex) �̸��� sql���� insertOrder�� �ٲ��ذ���
			//�ֹ� ��ȣ������ �ֹ��� ����� ����
			String insertOrder = "insert into orders(oseq, id) values(orders_seq.nextval, ?)";
			pstmt = conn.prepareStatement(insertOrder);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			pstmt.close();
			
			//�ٷ� ������ INSERT�� ��Ʈ ������ ������.
			String selectMaxOseq = "select max(oseq) from orders";
			pstmt = conn.prepareStatement(selectMaxOseq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				maxOseq = rs.getInt(1);
				System.out.println("maxOseq == "+ maxOseq);
			}		
			
			//�������� cartVO ����Ʈ�� �ϳ����� ���ڵ�� �ɰ���
			for (CartVO cartVO : cartList) {
				insertOrderDetail(cartVO, maxOseq);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return maxOseq;
	}

	public void insertOrderDetail(CartVO cartVO, int maxOseq) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();

			String insertOrderDetail = "insert into order_detail(odseq, oseq, "
					+ "pseq, quantity) values(order_detail_seq.nextval, ?, ?, ?)";
			pstmt = conn.prepareStatement(insertOrderDetail);
			pstmt.setInt(1, maxOseq);//�ֹ��� �ֹ���ȣ
			pstmt.setInt(2, cartVO.getPseq());//��ǰ��ȣ
			pstmt.setInt(3, cartVO.getQuantity());//����
			pstmt.executeUpdate();
			pstmt.close();
			
			//��ٱ��� ���¸� �ֹ��Ѱ����� �ٲ�.
			String updateCartResult = "update cart set result=2 where cseq=?";
			pstmt = conn.prepareStatement(updateCartResult);
			pstmt.setInt(1, cartVO.getCseq());
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// ����ڰ� �ֹ� ���� �˻�
	//                                     ����� ���̵�         �ֹ�ó��                �ֹ���ȣ
	public ArrayList<OrderVO> listOrderById(String id, String result, int oseq) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		String sql = "select * from order_view where id=? and result like '%'||?||'%' and oseq=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, result);
			pstmt.setInt(3, oseq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO orderVO = new OrderVO();
				orderVO.setOdseq(rs.getInt("ODSEQ"));
				orderVO.setOseq(rs.getInt("OSEQ"));
				orderVO.setId(rs.getString("ID"));
				orderVO.setIndate(rs.getTimestamp("INDATE"));
				orderVO.setMname(rs.getString("MNAME"));
				orderVO.setZipNum(rs.getString("ZIP_NUM"));
				orderVO.setAddress(rs.getString("ADDRESS"));
				orderVO.setPhone(rs.getString("PHONE"));
				orderVO.setPseq(rs.getInt("PSEQ"));
				orderVO.setQuantity(rs.getInt("QUANTITY"));
				orderVO.setPname(rs.getString("PNAME"));
				orderVO.setPrice2(rs.getInt("PRICE2"));
				orderVO.setResult(rs.getString("RESULT"));
				orderList.add(orderVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return orderList;
	}

	// ���� ���� ���� �ֹ� ������ ��ȸ                                     String id�� ���ǿ��� ������.
	public ArrayList<Integer> selectSeqOrderIng(String id) {
		ArrayList<Integer> oseqList = new ArrayList<Integer>();
		
		//result=1�ΰ��� ���� �������Ա��� Ȯ�ε��� ���� ��ǰ���� �ǹ���.	
		//DISTINCT�� ����ϸ� �ߺ� ���� ���ŵǰ� ������ ��ǰ ID�� ��Ÿ���ϴ�.(sql���� Ȯ���ѹ� �غ���)
		String sql = "select distinct oseq from order_view where id=? and result='1' order by oseq desc";
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				oseqList.add(rs.getInt("oseq"));//�ֹ���ȣ���� �������.
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return oseqList;
	}

	/* *
	 * ������ ��忡�� ���Ǵ� �޼ҵ� * *
	 */
	//                                         �˻�â�� Ű���尪(�ֹ����̸�)
	public ArrayList<OrderVO> listOrder(String member_name) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		
		//                                           �ֹ����̸�
		String sql = "select * from order_view where mname like '%'||?||'%' " +
				"order by result, oseq desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			if (member_name == "") {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, member_name);
			}
			rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVO orderVO = new OrderVO();
				orderVO.setOdseq(rs.getInt("ODSEQ"));
				orderVO.setOseq(rs.getInt("OSEQ"));
				orderVO.setId(rs.getString("ID"));
				orderVO.setPseq(rs.getInt("PSEQ"));
				orderVO.setMname(rs.getString("MNAME"));
				orderVO.setPname(rs.getString("PNAME"));
				orderVO.setQuantity(rs.getInt("QUANTITY"));
				orderVO.setZipNum(rs.getString("ZIP_NUM"));
				orderVO.setAddress(rs.getString("ADDRESS"));
				orderVO.setPhone(rs.getString("PHONE"));
				orderVO.setIndate(rs.getTimestamp("INDATE"));
				orderVO.setPrice2(rs.getInt("PRICE2"));
				orderVO.setResult(rs.getString("RESULT"));//order_detail���̺��� �������
				orderList.add(orderVO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return orderList;
	}
	
	
	//                               �ֹ������� ������ ��ȣ
	public void updateOrderResult(String odseq) {
		String sql = "update order_detail set result='2' where odseq=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, odseq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
