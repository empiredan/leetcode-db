# Write your MySQL query statement below

set @i:=0;
select Score, s.rk as Rank from Scores join (select t.u as v, @i:=@i+1 as rk from (select distinct(Score) as u from Scores order by u desc) t) s on abs(Scores.Score-s.v)<1e-3 order by Score desc;
