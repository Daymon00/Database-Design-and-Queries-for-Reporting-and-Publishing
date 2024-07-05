# Database-Design-and-Queries-for-Reporting-and-Publishing
This project focuses on creating a detailed database schema to manage a reporting and publishing system efficiently.

Tables Created:
reporters: Stores reporter information.
offices: Contains office locations and names.
reporter_offices: Links reporters to their offices.
articles: Holds articles with titles, publish dates, content, and status.
reporter_articles: Connects reporters to the articles they wrote.
topics: Lists various article topics.
article_topics: Associates articles with their relevant topics.
photos: Stores metadata about photos.
article_photos: Links photos to articles.

Data Insertion:
reporters: Added reporters like James Wu, Mary Bow, and others.
offices: Included offices such as Japan Office, New York Office, etc.
reporter_offices: Mapped reporters to their offices.
articles: Inserted articles with various publish dates and statuses.
reporter_articles: Linked articles to their authors.
topics: Added topics like Brexit, Immigration, Technology, etc.
article_topics: Connected articles to relevant topics.
photos: Included descriptions for photos.
article_photos: Linked photos to articles.

Complex Queries:
Recent Articles on Brexit and Immigration: Retrieve recent articles on these topics with titles, dates, and reporter names.
Education Articles with Financial Terms: Find articles on education mentioning CUNY and financial terms within the last year.
Unused Topics: Identify topics not linked to any articles published in the last six months.
Top Topics by Article Count: List the top five topics by the number of articles in the past year.
Reporter Article Count by Year: Displayed the number of articles published by each reporter annually over the last five years.
Recent Yankees Articles: Identify recent articles on the Yankees, including photos.
Active Reporters: List reporters with articles published in the last six months.
Articles on a Specific Date: Retrieve articles published on a specific date with reporter names and topics.
Articles Without Topics: Find articles published on a specific date without any topics.
Update Reporter Office Assignments: Update office assignments for reporters.
Transaction Control: Demonstrate transaction control with data insertion and deletion.
Backup and Restore Articles: Show how to backup and restore the articles table.
