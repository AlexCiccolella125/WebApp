package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import edu.fau.group3.model.BillTo;

public class BillToMapper implements RowMapper<BillTo>{

	public BillTo mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillTo BillTo = new BillTo();
		BillTo.setBillToID(rs.getInt("BillToID"));
		BillTo.setBillToStreet(rs.getString("BillToStreet"));
		BillTo.setBillToCity(rs.getString("BillToCity"));
		BillTo.setBillToState(rs.getString("BillToState"));
		BillTo.setBillToZip(rs.getInt("BillToZip"));
		BillTo.setBillToContact(rs.getString("BillToContact"));
		BillTo.setBillToPhone(rs.getInt("BillToPhone"));
		return BillTo;
	}
}