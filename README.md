

# Background
Food delivery services are gaining traction due to their convenience and conduciveness to social distancing. There is demand for such services among college students, however, university administrators take issue with the security implications of allowing non affiliate business employees with access to the campus. Recent startups have begun to provide universities with internally managed food delivery systems. An example of a prototype database (let's call it CampusEats) powering such a service is described in this repository's [DDL script](https://github.com/UnexceptedSpectic/campus-eats/blob/main/db-setup-script.sql). Here, we aim to improve and extend the current model, based on the objectives outlined below.

# Objectives
- Update the CampusEats database to include a rating system for restaurants and delivery drivers. 
- Optimize indexing to increase query performance. 
- Create views to showcase restaurant and delivery driver rating metrics.
- Showcase user and privilege management. 

# Overview Video
https://user-images.githubusercontent.com/24619745/117237020-fd1d1100-adf7-11eb-8f70-c1272819bc0b.mp4

# EERD
![EERD](https://raw.githubusercontent.com/UnexceptedSpectic/campus-eats/main/eerd.png)

# Use Cases
![Use Case Diagram](https://raw.githubusercontent.com/UnexceptedSpectic/campus-eats/main/use_case_diagram.png)

# Business Rules
1) Persons (campus faculty, staff, students) have accounts in the system with personid (PK), name, email, cell, etc. For faculty we also keep title, highest degree, and degreecollege. For staff we keep Position and AdminYorN. For students we keep GradYear and major plus type (undergraduate, graduate). Only faculty, staff and students are included. 
2) We have Locations which are spots on campus where food can be delivered. Some examples are dorms, the student center, and approved classroom buidings. LocationID, LocationName, LocationAddress and (optional) Latitude and Longitude are maintained in the database. Additionally a food delivery drop-off point is included (designated place for meeting or delivering food in the location – this can be a brief description). 
3) Persons can also be drivers (delivery personnel which have to be approved). Drivers have licensenumber and datehired plus ratings. You may also want to keep vehicle information (relative to the vehicle that the driver uses). a. UNCC will start with 8 approved delivery personnel – the system is in test mode. You can assume all individuals have been cleared and they can be included in the database. b. All delivery personnel are students. 
4) There is a flat fee of $5 for each delivery. A person orders food one to many times. An individual delivery is tied to one and only one person for the order. The order is for one and only one restaurant. For the items on the order we will only need to keep the total price and delivery charge, along with the driver and delivery times. There should also be a unique identifier (ID) that ties to the id for the order at the indivudual restaurant. You can assume that the actual items on the order need to come from the restaurant database. 
5) Food providers or restaurants have to be approved in order to be included in the database. You can include ten restaurants or more of your choice for the test database. Information will include an ID, location, schedule, and a link to the web site along with other attributes you may identify. 
6) The database will serve as an important data collection source providing valuable information about nutrition and eating habits of campus community members.

# TODO
- Add `status` attribute to `order` entity, so that restaurants may notify drivers when orders are ready.
