package daoImpl;

import util.DBConn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SvgDaoImpl {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void findAll(String flag){
        try {
            conn = DBConn.getConn();
            String sql = "";
            ps = conn.prepareStatement(sql);
            ps.setString(1,flag);
            rs = ps.executeQuery();
            while (rs.next()){
//                Kebiao k = new Kebiao();
//                k.setKid(rs.getInt("kid"));
//                k.setJieci(rs.getString("jieci"));
//                k.setSubject(rs.getString("subject"));
//                k.setJiaoshi(rs.getString("jiaoshi"));
//                k.setCno(rs.getInt("cno"));
//                ks.add(k);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            DBConn.release();
        }
//        return "";
    }

}
