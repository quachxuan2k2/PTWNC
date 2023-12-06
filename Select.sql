/*Lấy danh mục chủ đề gồm mã chủ đề và tên chủ đề*/

Select Mcd, Ten_chu_de from CHU_DE;

/*Lấy danh mục chủ đề gồm mã chủ đề, tên chủ đề và số lượng sách thuộc chủ đề*/

select CHU_DE.Mcd, CHU_DE.Ten_chu_de,
count(SACH.Ms) AS "soluong"
from CHU_DE left join SACH on CHU_DE.Mcd = SACH.Mcd
GROUP BY CHU_DE.Mcd, CHU_DE.Ten_chu_de ;

select * from CHU_DE;
/*Danh mục sách mới top 5 (mã,tên) dựa vào ngày cập nhật*/

select top(5) Mcd, Ten_sach, Ngay_cap_nhat 
from SACH 
order by 3 DEsc; 

/*Danh mục 5 sách bán chạy (mã,tên) dựa vào số lượng bán trong chi tiết đơn hàng*/

select top(5)  CT_DAT_HANG.Ms ,SACH.Ten_sach, So_luong
from CT_DAT_HANG inner join SACH on CT_DAT_HANG.Ms = SACH.Ms
order by So_luong desc;


select top(5) Ms, So_luong
from CT_DAT_HANG
order by So_luong desc;
/*chọn 3 quảng cáo gần nhất */

/*Danh mục quảng cáo cần hiển thị (tất cả tt)*/

  update QUANG_CAO
 set HREF = N'https://www.lyrics.com/lyric/35855203/Alan+Walker/Lily'
 where HREF = N'https://linhtam.vn/vi';
 /*đổi ngày hết hạn*/


  select * from QUANG_CAO
  where Ngay_het_han between '2021-12-10 00:00:00'  and '2022-05-10 00:00:00';
/*Danh mục tác giả tham gia viết cuộc thi sách, sách mã là 2 (mã quyển sách = 2)*/

select  THAM_GIA.Mtg, Ten_tac_gia, THAM_GIA.Ms
from TAC_GIA inner join THAM_GIA on THAM_GIA.Mtg = TAC_GIA. mtg INNER join SACH on SACH.Ms = THAM_GIA.Ms
where THAM_GIA.Ms = 2;

/* lấy tên sách, mô tả sách, hình minh họa, đơn giá, tác giả, nhà xuất bản, mã sachs*/
select THAM_GIA.Ms, SACH.Mo_ta, SACH.Don_gia, SACH.Hinh_minh_hoa, TAC_GIA.Ten_tac_gia
from THAM_GIA INNER JOIN SACH ON SACH.Ms = THAM_GIA.Ms inner join TAC_GIA on TAC_GIA.Mtg = THAM_GIA.Mtg ;
