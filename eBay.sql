use eBay;

##return_allowed
select count(a.return_allowed_binary), avg(a.return_allowed_binary), min(a.return_allowed_binary), max(a.return_allowed_binary), a.sponsored, a.item_condition
from (select (case
	when return_allowed ='YES' then 1
    when return_allowed ='NO' then 0
	end) return_allowed_binary,sponsored, item_condition
from eBay.eBay_items) a
group by a.sponsored, a.item_condition;

##best_offer
select count(b.best_offer_binary), avg(b.best_offer_binary), min(b.best_offer_binary), max(b.best_offer_binary), b.sponsored, b.item_condition
from (select (case
	when best_offer ='YES' then 1
    when best_offer ='NO' then 0
	end) best_offer_binary,sponsored, item_condition
from eBay.eBay_items) b
group by b.sponsored, b.item_condition;

##seller_score
select avg(score), min(score), max(score), sponsored, item_condition
from eBay.eBay_items
group by sponsored, item_condition;

##item price
select avg(price), min(price), max(price), sponsored, item_condition
from eBay.eBay_items
group by sponsored, item_condition;

##item_sold
select avg(num_sold), min(num_sold), max(num_sold), sponsored, item_condition
from eBay.eBay_items
group by sponsored, item_condition;

##seller name
select count(seller_name), sponsored, item_condition
from eBay.eBay_items
group by sponsored, item_condition;

##title
select count(title), sponsored, item_condition
from eBay.eBay_items
group by sponsored, item_condition;

##shipping price
select count(shipping), sponsored, item_condition
from eBay.eBay_items
group by sponsored, item_condition;
