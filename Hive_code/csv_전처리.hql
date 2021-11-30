-- 전처리: 
-- cafe는 음식과 다르게 이 seoul_cafe.csv의 상세영업상태명 도로명주소 사업장명업태구분명만을 이용한 table 생성 
CREATE TABLE cafe AS
SELECT row_number() over() as rownum, column8 as open, substr(column17, 7, 3) as address, column19 as name, column23 as kind
FROM seoul_cafe
WHERE column8 = "영업";	

-- 서울시 자랑스러운 한국음식점 정보 (한국어).csv의 명칭, 행정 구, 행정 동만 추출
CREATE TABLE food1 AS
SELECT row_number() over() as rownum, column5 as name, column7 as address, column8 as town
FROM seoul_food;

-- 서울시 지정·인증업소 현황.csv의 업소명, 자치구명, 식품인증 구분명 추출 
CREATE TABLE food2 AS
SELECT row_number() over() as rownum, column2 as name, column4 as address, column11 as kind
FROM seoul_food2;

-- 서울특별시 관광식당 인허가 정보.csv의 상세영업상태명, 도로명주소, 사업장명, 문화체육업종명 추출/ 폐업 가계 제외 
CREATE TABLE food3 AS
SELECT row_number() over() as rownum, column8 as open, substr(column17, 7, 3) as address, column19 as name, column26 as kind
FROM seoul_food3
WHERE column8 = "운영중";	

-- 맛집 관련 csv들의 중복 제거 후 합쳐 하나의 food 테이블로 생성 
CREATE TABLE  food AS 
SELECT name, town FROM food1
UNION
SELECT name, address FROM food2
UNION
SELECT name, address FROM food3;

-- 서울시 유적지 현황 (한국어).csv의 명칭, 행정구 추출
CREATE TABLE travel1 AS
SELECT row_number() over() as rownum, column9 as address, column5 as name
FROM seoul_historicsite ;

-- 큐레이션_랜드마크_서울.csv 행정구, 명칭 추출 (지하철역은 관광지가 아니기에 제거)
CREATE TABLE travel2 AS
SELECT row_number() over() as rownum, column2 as address, column4 as name 
FROM seoul_randmark 
WHERE column3 = '관광지' or column3 = '쇼핑몰';

-- 관광 관련 csv들을 UNION을 통해 중복 제거 후 합쳐 하나의 travel 테이블로 생성 
CREATE TABLE travel AS
SELECT name, address FROM travel1
UNION
SELECT name, address FROM travel2;

-- 서울특별시 관광숙박업 인허가 정보.csv 상세영업상태명, 도로명주소, 사업장명 추출
CREATE TABLE domitory1 AS
SELECT row_number() over() as rownum, column8 as open, substr(column17, 7, 3) as address, column19 as name
FROM seoul_domitory 
WHERE column8 = '영업중';	

-- 서울특별시 외국인관광도시민박업 인허가 정보.csv 상세영업상태명, 도로명주소, 사업장명 추출
CREATE TABLE domitory2 AS
SELECT row_number() over() as rownum, column8 as open, substr(column17, 7, 3) as address, column19 as name
FROM seoul_domitory2 
WHERE column8 = '영업중';	

-- 숙소 관련 csv들을 UNION을 통해 중복 제거 후 합쳐 하나의 domitory 테이블로 생성 
CREATE TABLE domitory AS
SELECT name, address FROM domitory1
UNION
SELECT name, address FROM domitory2;

-- 서울교통공사_역주소현황(행정동기준).csv에서 역을 제외한 역 이름과 행정 구 추출
CREATE TABLE saddress AS
SELECT REGEXP_REPLACE(column2, '역+$', '') as name, substr(column4, 5, 3) as address
FROM seoul_station_address;

-- 서울교통공사_수송순위.csv와 서울교통공사_역주소현황(행정동기준).csv를 join해 역명과 역 행정구를 붙임
CREATE TABLE station AS
select * 
from   seoul_station,   saddress
where seoul_station.column2 = saddress.name;
