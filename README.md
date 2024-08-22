# 🏏 Cricket Data Analysis in Snowflake

# 🌟 Project Overview
This project focused on analyzing Cricket Data using Snowflake as the primary data platform. The workflow began with loading cricket data from JSON files and progressing through multiple stages of data transformation and modeling. A key outcome of this project was the development of a Dimensional Data Warehouse Model to streamline data consumption and analysis.

# Key Highlights:
Data Loading: Uploaded and stored cricket data (in JSON format) in Snowflake.
Data Transformation: Applied SQL transformations across four layers: Landing, Raw, Cleaning, and Consumption.
Dimensional Modeling: Designed a star schema to support efficient data analysis and reporting.

# 🛠️ Tools & Technologies
Snowflake: Data warehousing platform for storage, transformation, and analysis.
SQL: Used extensively for data querying, transformation, and modeling.
Dimensional Warehouse Modeling: Applied to structure data for better querying and analysis.

# 📚 Key Skills
Snowflake Architecture: Gained expertise in managing databases and layers within Snowflake.
Dimensional Modeling: Designed star schemas with fact and dimension tables to optimize query performance.
SQL for Data Transformation: Used complex SQL queries for data extraction, transformation, and loading (ETL) in Snowflake.
JSON Data Handling: Loaded and parsed nested JSON files into structured tables.

# 📂 Folder Structure
```bash
├── JSON Files/                                     # Data (JSON Files) uploaded to Snowflake
│   ├── All JSON Files                              # JSON Files
├── 1_Landing_Layer.sql                             # Landing Layer
├── 2_RAW_Layer.sql                                 # RAW Layer
├── 3.1_Clean_Layer_Match_Details.sql               # Cleaning Layer 1
├── 3.2_Clean_Layer_Player_Details.sql              # Cleaning Layer 2
├── 3.3_Delivery_Layer_Player_Details copy.sql      # Cleaning Layer 3
├── 4_Consumtion_Layer.sql                          # Consumption Layer
├── Data Dimensional Modeling.PNG                   # Datawarehouse Dimensional Model
├── README.md                                       # Project documentation (this file)
```
