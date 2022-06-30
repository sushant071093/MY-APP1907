package com.example.demo;

import java.util.ArrayList;
import java.util.List;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class ExcelDataHandler extends AbstractXlsView  {
	@GetMapping(path="/downloadExcel")
	protected void buildExcelDocument(Map<String, Object> model, Workbook
			  workbook, HttpServletRequest request, HttpServletResponse response) throws
			  Exception { 
		List<ExcelModel>list=new ArrayList<>();
		list.add(new ExcelModel("sushant", "male", "Indian", 22));
		list.add(new ExcelModel("nilanjana", "Female", "Indian", 25));
		list.add(new ExcelModel("Ankita", "Female", "Indian", 24));
		

	

		//public class Excelbuilder{// extends AbstractXlsView  {
			
			//@Override
			/*
			 * protected void buildExcelDocument(Map<String, Object> model, Workbook
			 * workbook, HttpServletRequest request, HttpServletResponse response) throws
			 * Exception {
			 */
				
				//public void excel(List<ExcelModel>lists) {
				//List<ExcelModel>lists =(List<ExcelModel>) model.get("list");
				//HSSFWorkbook workbook= new HSSFWorkbook();
			XSSFSheet sheet = (XSSFSheet) workbook.createSheet();//createSheet("WellDone");
				sheet.setDefaultColumnWidth(25);
				XSSFRow header = sheet.createRow(0);
				XSSFCell cell = header.createCell(0);
				cell.setCellValue("name");
				XSSFCell cell1 = header.createCell(1);
				cell1.setCellValue("gender");
				XSSFCell cell2 = header.createCell(2);
				cell2.setCellValue("nationality");
				XSSFCell cell3 = header.createCell(3);
				cell3.setCellValue("age");
				int rownum=1;
				for(ExcelModel em:list) {
					XSSFRow row=sheet.createRow(rownum++);
					row.createCell(0).setCellValue(em.getName());
					row.createCell(1).setCellValue(em.getGender());
					row.createCell(2).setCellValue(em.getNationality());
					row.createCell(3).setCellValue(String.valueOf(em.getAge()));
				}
				
				
				
				
				
				
				
				
					
			}

		}

/*
 * ModelAndView mv =new ModelAndView(); mv.add return new
 * ModelAndView("excelView","list",list);
 * 
 * }
 * 
 * 
 * 
 * 
 * }
 */