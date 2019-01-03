package basket;

public class BasketpagingAction2 {
   
   private int currentPage2; 
   private int totalCount2;
   private int totalPage2; 
   private int blockCount2; 
   private int blockPage2; 
   private int startCount2; 
   private int endCount2; 
   private int startPage2; 
   private int endPage2; 
   private String search2;
   private int searchn2;

   private StringBuffer pagingHtml2;

   
   public BasketpagingAction2(int currentPage2, int totalCount2, int blockCount2, int blockPage2) {

      this.blockCount2 = blockCount2;
      this.blockPage2 = blockPage2;
      this.currentPage2 = currentPage2;
      this.totalCount2 = totalCount2;


      totalPage2 = (int) Math.ceil((double) totalCount2 / blockCount2);
      if (totalPage2 == 0) {
         totalPage2 = 1;
      }

      if (currentPage2 > totalPage2) {
         currentPage2 = totalPage2;
      }

      startCount2 = (currentPage2 - 1) * blockCount2;
      endCount2 = startCount2 + blockCount2 - 1;

      startPage2 = (int) ((currentPage2 - 1) / blockPage2) * blockPage2 + 1;
      endPage2 = startPage2 + blockPage2 - 1;

      if (endPage2 > totalPage2) {
         endPage2 = totalPage2;
      }

      pagingHtml2 = new StringBuffer();
      if (currentPage2 > blockPage2) {
         pagingHtml2.append("<a href=BasketList.action?currentPage2="
               + (startPage2 - 1) + ">");
         pagingHtml2.append("�씠�쟾");
         pagingHtml2.append("</a>");
      }

      pagingHtml2.append("&nbsp;|&nbsp;");

      //�럹�씠吏� 踰덊샇.�쁽�옱 �럹�씠吏��뒗 鍮④컙�깋�쑝濡� 媛뺤“�븯怨� 留곹겕瑜� �젣嫄�.
      for (int i = startPage2; i <= endPage2; i++) {
         if (i > totalPage2) {
            break;
         }
         if (i == currentPage2) {
            pagingHtml2.append("&nbsp;<b> <font color='red'>");
            pagingHtml2.append(i);
            pagingHtml2.append("</font></b>");
         } else {
            pagingHtml2
                  .append("&nbsp;<a href='BasketList.action?currentPage2=");
            pagingHtml2.append(i);
            pagingHtml2.append("'>");
            pagingHtml2.append(i);
            pagingHtml2.append("</a>");
         }

         pagingHtml2.append("&nbsp;");
      }

      pagingHtml2.append("&nbsp;&nbsp;|&nbsp;&nbsp;");

      // �떎�쓬 block �럹�씠吏�
      if (totalPage2 - startPage2 >= blockPage2) {
         pagingHtml2.append("<a href=BasketList.action?currentPage2="
               + (endPage2 + 1) + ">");
         pagingHtml2.append("�떎�쓬");
         pagingHtml2.append("</a>");
      }
   }


   public int getCurrentPage2() {
      return currentPage2;
   }


   public void setCurrentPage2(int currentPage2) {
      this.currentPage2 = currentPage2;
   }


   public int getTotalCount2() {
      return totalCount2;
   }


   public void setTotalCount2(int totalCount2) {
      this.totalCount2 = totalCount2;
   }


   public int getTotalPage2() {
      return totalPage2;
   }


   public void setTotalPage2(int totalPage2) {
      this.totalPage2 = totalPage2;
   }


   public int getBlockCount2() {
      return blockCount2;
   }


   public void setBlockCount2(int blockCount2) {
      this.blockCount2 = blockCount2;
   }


   public int getBlockPage2() {
      return blockPage2;
   }


   public void setBlockPage2(int blockPage2) {
      this.blockPage2 = blockPage2;
   }


   public int getStartCount2() {
      return startCount2;
   }


   public void setStartCount2(int startCount2) {
      this.startCount2 = startCount2;
   }


   public int getEndCount2() {
      return endCount2;
   }


   public void setEndCount2(int endCount2) {
      this.endCount2 = endCount2;
   }


   public int getStartPage2() {
      return startPage2;
   }


   public void setStartPage2(int startPage2) {
      this.startPage2 = startPage2;
   }


   public int getEndPage2() {
      return endPage2;
   }


   public void setEndPage2(int endPage2) {
      this.endPage2 = endPage2;
   }


   public String getSearch2() {
      return search2;
   }


   public void setSearch2(String search2) {
      this.search2 = search2;
   }


   public int getSearchn2() {
      return searchn2;
   }


   public void setSearchn2(int searchn2) {
      this.searchn2 = searchn2;
   }


   public StringBuffer getPagingHtml2() {
      return pagingHtml2;
   }


   public void setPagingHtml2(StringBuffer pagingHtml2) {
      this.pagingHtml2 = pagingHtml2;
   }

   


}
   