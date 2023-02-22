# Crowdfunding_ETL

In this repo:

* The "Resources" folder contains two xlsx files use for the analysis.
* The "ETL_Mini_Project_ASanjeev" jupyter file is the main script which creates the four dataframes need for the project.
* The "Output DataFrames" folder contains the four dataframes/csv files created using the main script.
* The "crowdfunding_db_schema_ERD" is the image file which shows rhe ERD between the four dataframes created.
* The "crowdfunding_db_schema" is the SQL file which use the information from the ERD to create a table schema for each csv file.
* The "crowdfunding_db" is the main SQL file which is used to create four tables for the four dataframes created and display each table using SELECT * statment.
* The "SQL table output" folder contains the images of the successful creation of four tables using the "crowdfunding_db" SQL file.

# Summary

The following points were achieved using the resources files:

* Create a Category DataFrame that has the following columns:

    * A "category_id" column that is numbered sequential form 1 to the length of the number of unique categories.
    * A "category" column that has only the categories.
    * Export the DataFrame as a category.csv CSV file.

* Create a SubCategory DataFrame that has the following columns:

    * A "subcategory_id" column that is numbered sequential form 1 to the length of the number of unique subcategories.
    * A "subcategory" column that has only the subcategories.
    * Export the DataFrame as a subcategory.csv CSV file.

* Create a Campaign DataFrame that has the following columns:

    * The "cf_id" column.
    * The "contact_id" column.
    * The “company_name” column.
    * The "blurb" column is renamed as "description."
    * The "goal" column.
    * The "goal" column is converted to a float datatype.
    * The "pledged" column is converted to a float datatype.
    * The "backers_count" column.
    * The "country" column.
    * The "currency" column.
    * The "launched_at" column is renamed as "launch_date" and converted to a datetime format.
    * The "deadline" column is renamed as "end_date" and converted to a datetime format.
    * The "category_id" with the unique number matching the “category_id” from the category DataFrame.
    * The "subcategory_id" with the unique number matching the “subcategory_id” from the subcategory DataFrame.
    * And, create a column that contains the unique four-digit contact ID number from the contact.xlsx file.
    * Then export the DataFrame as a campaign.csv CSV file.

* Create a Contacts DataFrame that has the following columns: (Option 1 is used for this part - Use Pandas to create the contacts DataFrame.)

    * A column named "contact_id" that contains the unique number of the contact person.
    * A column named "first_name" that contains the first name of the contact person.
    * A column named "last_name" that contains the first name of the contact person.
    * A column named "email" that contains the email address of the contact person
    * Then export the DataFrame as a contacts.csv CSV file.

* Create the Crowdfunding Database

    * Inspect the four CSV files, and then sketch an ERD of the tables  by using QuickDBD.
    * A database schema labelled, crowdfunding_db_schema.sql is created.
    * A crowdfunding_db.sql is created using the crowdfunding_db_schema.sql file
    * The database has the appropriate primary and foreign keys and relationships.
    * Each CSV file is imported into the appropriate table without errors.
    * The data from each table is displayed using a SELECT * statement.

