package com.example.demo;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

public class Excelbuilder{// extends AbstractXlsView  {
	
	//@Override
	/*
	 * protected void buildExcelDocument(Map<String, Object> model, Workbook
	 * workbook, HttpServletRequest request, HttpServletResponse response) throws
	 * Exception {
	 */
		
		public void excel(List<ExcelModel>lists) {
		//List<ExcelModel>lists =(List<ExcelModel>) model.get("list");
		HSSFWorkbook workbook= new HSSFWorkbook();
		HSSFSheet sheet = (HSSFSheet) workbook.createSheet("WellDone");
		sheet.setDefaultColumnWidth(25);
		HSSFRow header = sheet.createRow(0);
		HSSFCell cell = header.createCell(0);
		cell.setCellValue("name");
		HSSFCell cell1 = header.createCell(1);
		cell1.setCellValue("gender");
		HSSFCell cell2 = header.createCell(2);
		cell2.setCellValue("nationality");
		HSSFCell cell3 = header.createCell(3);
		cell3.setCellValue("age");
		int rownum=1;
		for(ExcelModel em:lists) {
			HSSFRow row=sheet.createRow(rownum++);
			row.createCell(0).setCellValue(em.getName());
			row.createCell(1).setCellValue(em.getGender());
			row.createCell(2).setCellValue(em.getNationality());
			row.createCell(3).setCellValue(String.valueOf(em.getAge()));
		}
		
		
		
		
		
		
		
		
			
	}

}
