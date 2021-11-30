-- 서울특별시에서 인증 받은 식당이 많은 구 top 3 추출 (동대문, 서대문이 따로 있어 수동으로 처리)
select town,
case when town = '동대문구' then count(*) +  6
when town = '서대문구' then count(*) +  2
else count(*)
end as cnt
from food
group by (town)
order by cnt desc
limit 3;

-- 서울특별시에 커피숍(카페)가 많은 구 top 3 추출 (편의점 등이 섞인 table이기에 커피숍만 추출)
select  address, count(*) as cnt
from cafe
where kind = '커피숍'
group by address
order by cnt desc
limit 3;

-- 서울특별시의 쇼핑몰, 관광지, 문화유적지를 가장 많이 포함하고 있는 top3의 구 추출 
select address, count(*) as cnt
from travel
group by (address)
order by cnt desc
limit 3;

-- 서울특별시의 인증된 게스트 하우스, 호텔을 가장 많이 포함하고 있는 top3의 구 추출 
select address, count(*) as cnt
from domitory
group by (address)
order by cnt desc
limit 3;

-- 서울특별시에서 운행되는 지하철 역 중 가장 승하차 인원의 총합이 높은 top3 구 추출 
-- 숫자가 너무 커져 Scientific Notation로 (E7: 앞의 값 * 10^7)
select address, sum(column3) as passengers
from station
group by address
order by passengers desc
limit 3;

-- 서울특별시에서 운행되는 지하철 역 수가 많은 top 3 구 추출 
select address, count(column3) as cnt
from station
group by address
order by cnt 
limit 3;
