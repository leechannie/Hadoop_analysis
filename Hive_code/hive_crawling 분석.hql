-- Crawling code로 전세계에서 구글에 맛집이 가장 많이 검색된 서울특별시 구의 이름을 찾음 
-- 강남구 맛집	강동구 맛집	강북구 맛집	강서구 맛집	관악구 맛집	광진구 맛집	구로구 맛집	금천구 맛집	노원구 맛집	도봉구 맛집	동대문구 맛집	동작구 맛집	
-- 마포구 맛집 서대문구 맛집	서초구 맛집	성동구 맛집	성북구 맛집	송파구 맛집	양천구 맛집	영등포구 맛집	용산구 맛집	은평구 맛집	종로구 맛집	중구 맛집	중량구 맛집
select sum(column2), sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), 
sum(column12), sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26)
from crawling_food;

-- Crawling code로 전세계에서 구글에 역이 가장 많이 검색된 서울특별시 구의 이름을 찾음 
-- 강남구 역	강동구 역	강북구 역	동대문구 역	관악구 역	송파구 역	구로구 역	금천구 역	노원구 역	도봉구 역	은평구 역	동작구 역	
-- 마포구 역	서대문구 역	서초구 역	성동구 역	성북구 역	광진구 역	양천구 역	강서구 역	용산구 역	영등포구 역	종로구 역	중구 역	중량구 역
select sum(column2), sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), 
sum(column12), sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26)
from crawling_station;

-- Crawling code로 전세계에서 구글에 카페로 가장 많이 검색된 서울특별시 구의 이름을 찾음 
-- 강남구 카페	강동구 카페	강북구 카페	강서구 카페	관악구 카페	동대문구 카페	동작구 카페	영등포구 카페	서대문구 카페	서초구 카페	동대문구 카페	동작구 카페	
-- 영등포구 카페	서대문구 카페	서초구 카페	용산구 카페	은평구 카페	종로구 카페	중구 카페	중량구 카페	광진구 맛집	구로구 맛집	금천구 맛집	노원구 맛집	도봉구 맛집
select sum(column2), sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), 
sum(column12), sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26)
from  crawling_cafe;

-- 네이버 검색량을 기준으로 각 구의 어디 카페가 가장 많이 검색되는지 찾기 
-- 강남구 카페	강동구 카페	강북구 카페	강서구 카페	관악구 카페	광진구 카페	구로구 카페	금천구 카페	노원구 카페	도봉구 카페	동대문구 카페	동작구 카페	마포구 카페	
-- 서대문구 카페	서초구 카페	성동구 카페	성북구 카페	송파구 카페	양천구 카페	영등포구 카페	용산구 카페	은평구 카페	종로구 카페	중구 카페	중량구 카페
select sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), sum(column12),
sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26), sum(column27)
from naver_cafe;


-- 네이버 검색량을 기준으로 각 구의 어디 맛집이 가장 많이 검색되는지 찾기 
-- 강남구 맛집	강동구 맛집	강북구 맛집	강서구 맛집	관악구 맛집	광진구 맛집	구로구 맛집	금천구 맛집	노원구 맛집	도봉구 맛집	동대문구 맛집	동작구 맛집	마포구 맛집	
-- 서대문구 맛집	서초구 맛집	성동구 맛집	성북구 맛집	송파구 맛집	양천구 맛집	영등포구 맛집	용산구 맛집	은평구 맛집	종로구 맛집	중구 맛집	중량구 맛집
select sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), sum(column12),
sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26), sum(column27)
from naver_food;

-- 네이버 검색량을 기준으로 각 구의 어디 숙소가 가장 많이 검색되는지 찾기 
-- 강남구 숙소	강동구 숙소	강북구 숙소	강서구 숙소	관악구 숙소	광진구 숙소	구로구 숙소	금천구 숙소	노원구 숙소	도봉구 숙소	동대문구 숙소	동작구 숙소	마포구 숙소	
-- 서대문구 숙소	서초구 숙소	성동구 숙소	성북구 숙소	송파구 숙소	양천구 숙소	영등포구 숙소	용산구 숙소	은평구 숙소	종로구 숙소	중구 숙소	중량구 숙소
select sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), sum(column12),
sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26), sum(column27)
from  naver_domitory;

-- 네이버 검색량을 기준으로 각 구의 어디 맛집이 가장 많이 검색되는지 찾기 
-- 강남구 맛집	강동구 맛집	강북구 맛집	강서구 맛집	관악구 맛집	광진구 맛집	구로구 맛집	금천구 맛집	노원구 맛집	도봉구 맛집	동대문구 맛집	동작구 맛집	마포구 맛집	
-- 서대문구 맛집	서초구 맛집	성동구 맛집	성북구 맛집	송파구 맛집	양천구 맛집	영등포구 맛집	용산구 맛집	은평구 맛집	종로구 맛집	중구 맛집	중량구 맛집
select sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), sum(column12),
sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26), sum(column27)
from  naver_food;

-- 네이버 검색량을 기준으로 각 구의 어디 교통수단이 가장 많이 검색되는지 찾기 
-- 강남구 교통	강동구 교통	강북구 교통	강서구 교통	관악구 교통	광진구 교통	구로구 교통	금천구 교통	노원구 교통	도봉구 교통	동대문구 교통	동작구 교통	마포구 교통	서대문구 교통	
-- 서초구 교통	성동구 교통	성북구 교통	송파구 교통	양천구 교통	영등포구 교통	용산구 교통	은평구 교통	종로구 교통	중구 교통	중량구 교통
select sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), sum(column12),
sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26), sum(column27)
from   naver_transaction;

-- 네이버 검색량을 기준으로 각 구의 어디 관광이 가장 많이 검색되는지 찾기 
-- 강남구 관광	강동구 관광	강북구 관광	강서구 관광	관악구 관광	광진구 관광	구로구 관광	금천구 관광	노원구 관광	도봉구 관광	동대문구 관광	동작구 관광	마포구 관광	
-- 서대문구 관광	서초구 관광	성동구 관광	성북구 관광	송파구 관광	양천구 관광	영등포구 관광	용산구 관광	은평구 관광	종로구 관광	중구 관광	중량구 관광
select sum(column3), sum(column4), sum(column5), sum(column6), sum(column7), sum(column8), sum(column9), sum(column10), sum(column11), sum(column12),
sum(column13), sum(column14), sum(column15), sum(column16), sum(column17), sum(column18), sum(column19), sum(column20), sum(column21), 
sum(column22), sum(column23), sum(column24), sum(column25), sum(column26), sum(column27)
from   naver_travel;
