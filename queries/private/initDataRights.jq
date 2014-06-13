import module namespace user = "http://apps.28.io/user";

user:new-right("data", "Data Access", (), 1);
user:new-right("data_sec", "SEC data access", "data", 1);
user:new-right("data_sec_dow30", "SEC data access to DOW30", "data_sec", 2);

user:new-role("sec_pro", "Paid users (SEC Pro)");
user:new-role("sec_enterprise", "Paid users (SEC Enterprise)");

flush();

user:allow("admin", "data");
user:allow("sec_pro", "data_sec");
user:allow("sec_enterprise", "data_sec");
user:allow("anybody", "data_sec_dow30");