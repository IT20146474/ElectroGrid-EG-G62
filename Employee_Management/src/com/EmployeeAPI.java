package com;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
//For JSON
import com.google.gson.*;
//For XML 
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;

import model.Employee;

@Path("/Employee")
public class EmployeeAPI {
	Employee EmployeeObj = new Employee();

	
	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String readEmployee() {
		return EmployeeObj.readEmployee();
	}
	
	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertEmployee(@FormParam("EName") String EName,			
	 @FormParam("EAdd") String EAdd,
	 @FormParam("Email") String Email,
	 @FormParam("ETele") String ETele)
	{
	 String output = EmployeeObj.insertEmployee(EName, EAdd, Email, ETele);
	return output;
	}
	
	
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateEmployee(String employeeData)
	{
	//Convert the input string to a JSON object
	 JsonObject emObject = new JsonParser().parse(employeeData).getAsJsonObject();
	//Read the values from the JSON object
	 String Eid = emObject.get("Eid").getAsString();
	 String EName = emObject.get("EName").getAsString();
	 String EAdd = emObject.get("EAdd").getAsString();
	 String Email = emObject.get("Email").getAsString();
	 String ETele = emObject.get("ETele").getAsString();
	 String output = EmployeeObj.updateEmployee(Eid, EName, EAdd, Email, ETele);
	return output;
	} 
	
	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteEmployee(String employeeData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(employeeData, "", Parser.xmlParser());

	//Read the value from the element <ID>
	 String Eid = doc.select("Eid").text();
	 String output = EmployeeObj.deleteEmployee(Eid);
	return output;
	
	}
}
