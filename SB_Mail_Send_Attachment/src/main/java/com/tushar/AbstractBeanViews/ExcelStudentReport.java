package com.tushar.AbstractBeanViews;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import com.tushar.entity.Student;

@Component("excelStudentReport")
public class ExcelStudentReport extends AbstractXlsView {
	private int rowNum = 1;

	@Override
	protected void buildExcelDocument(Map<String, Object> map, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		rowNum = 1;
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

		Sheet sheet = workbook.createSheet("STUDENTS DETAILS");
		Row rowHeader = sheet.createRow(0);
		rowHeader.createCell(0).setCellValue("ENROLLID");
		rowHeader.createCell(1).setCellValue("ROLLID");
		rowHeader.createCell(2).setCellValue("FNAME");
		rowHeader.createCell(3).setCellValue("MNAME");
		rowHeader.createCell(4).setCellValue("LNAME");
		rowHeader.createCell(5).setCellValue("ADDRESS1");
		rowHeader.createCell(6).setCellValue("ADDRESS2");
		rowHeader.createCell(7).setCellValue("STANDARD");
		rowHeader.createCell(7).setCellValue("SECTION");
		rowHeader.createCell(8).setCellValue("MOBILE");
		rowHeader.createCell(9).setCellValue("DOB");
		rowHeader.createCell(10).setCellValue("BIRTHTIME");
		rowHeader.createCell(11).setCellValue("DOJ");
		rowHeader.createCell(12).setCellValue("REGDT");
		rowHeader.createCell(13).setCellValue("EMAIL");
		rowHeader.createCell(14).setCellValue("GENDER");

		studentData.forEach(student -> {
			Row row = sheet.createRow(rowNum);
			row.createCell(0).setCellValue("" + student.getENROLLID());
			row.createCell(1).setCellValue("" + student.getROLLID());
			row.createCell(2).setCellValue("" + student.getFname());
			row.createCell(3).setCellValue("" + student.getMname());
			row.createCell(4).setCellValue("" + student.getLname());
			row.createCell(5).setCellValue("" + student.getAddress1());
			row.createCell(6).setCellValue("" + student.getAddress2());
			row.createCell(7).setCellValue("" + student.getCurrentStandard());
			row.createCell(7).setCellValue("" + student.getCurrentSection());
			row.createCell(8).setCellValue("" + student.getMobile());
			row.createCell(9).setCellValue("" + student.getDob());
			row.createCell(10).setCellValue("" + student.getBirthtime());
			row.createCell(11).setCellValue("" + student.getDoj());
			row.createCell(12).setCellValue("" + student.getRegdt());
			row.createCell(13).setCellValue("" + student.getEmail());
			row.createCell(14).setCellValue("" + student.getGender());
			rowNum++;
		});

		studentsList = null;
		studentDetails = null;
		studentData = null;
	}

}
