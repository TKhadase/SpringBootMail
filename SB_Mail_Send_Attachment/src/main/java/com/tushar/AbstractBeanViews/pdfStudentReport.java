package com.tushar.AbstractBeanViews;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Font;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Table;
import com.lowagie.text.pdf.PdfWriter;
import com.tushar.entity.Student;

@Component("pdfStudentReport")
public class pdfStudentReport extends AbstractPdfView {

	@Override
	protected void buildPdfDocument(Map<String, Object> map, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		Iterable<Student> studentsList = null;
		Optional<Student> studentDetails = null;
		List<Student> studentData = new ArrayList<Student>();
		String eid = (String) map.get("eid");
		if ("Students".equalsIgnoreCase(eid)) {
			studentData = (List<Student>) map.get("studentsList");
		} else {
			studentDetails = (Optional<Student>) map.get("studentDetails");
			studentData.add(studentDetails.get());
		}
		
		Paragraph headerPara = new Paragraph("STUDENT DETAILS: ", new Font(Font.BOLD)); 
		document.add(headerPara);
		
		Table table = new Table(14,  studentData.size());
		table.addCell("ENROLLID");
		table.addCell("ROLLID");
		table.addCell("Fname");
		table.addCell("Mname");
		table.addCell("Lname");
		table.addCell("Address1");
		table.addCell("Address2");
		table.addCell("CurrentStandard");
		table.addCell("CurrentSection");
		table.addCell("Mobile");
		table.addCell("Dob");
		table.addCell("Birthtime");
		table.addCell("Doj");
		table.addCell("Regdt");
		table.addCell("Email");
		table.addCell("Gender");
		
		for(Student student: studentData ) {
		table.addCell(""+ student.getENROLLID());
		table.addCell("" + student.getROLLID());
		table.addCell("" + student.getFname());
		table.addCell("" + student.getMname());
		table.addCell("" + student.getLname());
		table.addCell(""+ student.getAddress1());
		table.addCell("" + student.getAddress2());
		table.addCell("" + student.getCurrentStandard());
		table.addCell("" + student.getCurrentSection());
		table.addCell("" + student.getMobile());
		table.addCell("" + student.getDob());
		table.addCell("" + student.getBirthtime());
		table.addCell("" + student.getDoj());
		table.addCell("" + student.getRegdt());
		table.addCell(""+ student.getEmail());
		table.addCell(""+ student.getGender());
		}
		document.add(table);
		
	}

}
