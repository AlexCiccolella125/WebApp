package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import edu.fau.group3.model.ShipTo;

public class ShipToMapper implements RowMapper<ShipTo>{

	public ShipTo mapRow(ResultSet rs, int rowNum) throws SQLException {
		ShipTo shipTo = new ShipTo();
		shipTo.setShipToID(rs.getInt("ShipToID"));
		shipTo.setShipToStreet(rs.getString("ShipToStreet"));
		shipTo.setShipToCity(rs.getString("ShipToCity"));
		shipTo.setShipToState(rs.getString("ShipToState"));
		shipTo.setShipToZip(rs.getInt("ShipToZip"));
		shipTo.setShipToContact(rs.getString("ShipToContact"));
		shipTo.setShipToPhone(rs.getInt("ShipToPhone"));
		return shipTo;
	}
}