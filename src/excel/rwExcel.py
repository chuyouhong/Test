# -*- coding: utf-8 -*-
import xlrd
import xlwt
from datetime import date,datetime
 
def read_excel():
  # 打开文件
  workbook = xlrd.open_workbook(r'F:\\demo.xls')
  # 获取所有sheet
  print workbook.sheet_names() # [u'sheet1', u'sheet2']
  sheet2_name = workbook.sheet_names()[1]
 
  # 根据sheet索引或者名称获取sheet内容
  sheet2 = workbook.sheet_by_index(1) # sheet索引从0开始
  sheet2 = workbook.sheet_by_name('ssss')
 
  # sheet的名称，行数，列数
  print sheet2.name,sheet2.nrows,sheet2.ncols
 
  # 获取整行和整列的值（数组）
  rows = sheet2.row_values(3) # 获取第四行内容
  cols = sheet2.col_values(2) # 获取第三列内容
  rowss=sheet2.nrows
  colss=sheet2.ncols
  print rows
  print cols
  print rowss
  print colss
  
  for row in range(rowss):
      for col in range(colss):
          print sheet2.cell(row,col).value
      
 
  # 获取单元格内容
  print sheet2.cell(0,0).value
  print sheet2.cell_value(1,1)
  print sheet2.row(2)[2].value
   
  # 获取单元格内容的数据类型
  print sheet2.cell(1,0).ctype
 
if __name__ == '__main__':
  read_excel()