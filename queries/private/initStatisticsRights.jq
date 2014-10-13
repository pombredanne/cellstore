import module namespace user = "http://apps.28.io/user";

user:new-right("statistics", "Statistics", "rights", 1);
user:new-right("statistics_usage", "API Usage statistics", "statistics", 2);

flush();

user:allow("admin", "statistics");