## Features:
1. Upload picture of object.
2. Add content (text-about the picture in English and category- like rivers,food,adjective,pronoun,etc. ) and language name to picture in English.
3. Add content to picture with phonetic text ( It is pronunciation of word of local language – Chuukese here - expressed in english text. Example, building: the phonetic text might be "Bill-Ding". )
4. New article containing a picture, text and category in English with phonetic text in a particular language and language name is created if a picture or English text or phonetic text fields are filled ,i.e., there is no need for all fields to be filled completely.
5. User is able to upload picture. List of articles shows "Uploaded" in column of Picture if the picture is uploaded by user. This picture can be seen by clicking on "Show" link just beside the article.
6. User is able to add content and language name to picture in English.
7. User is able to add content to picture with phonetic text.
8. All present articles can be seen by any user. They can be edited, seen or deleted. Later, delete option will be exercised by all except contributors.
9. User is able to enter, edit, delete installation contact information. Later, this can be done by only administrator.
10. If there are any errors then the form is not submitted and shows errors to users.
11. When user tries to delete an entry then it sends a warning asking: "Are you sure?"
12. Language names are added by user. Later, this functionality will be exercised by administrator only.
13. Language name in any article user can choose it from a drop down box which has only those language names which were added under the "Languages" tab ( languages added by administrator.) or none option if the language name is not in the shown list of languages. This will help peace corps to train their volunteers at any installation, post or site in any language without any restriction.
14. All articles of a paticular language can be seen under the "Languages" tab. User has to click on "Articles" link beside the language name for selecting a paticular language. Volunteers can click on this link for their training in a paticular language.
15. CAREFUL! : If a particular language is deleted, all the articles under that language are automatically deleted.
16. Volunteer names on a site can be added or deleted from the show page of each site information.
17. Empty string will not be taken as Volunteer name. Hence, if you just click "Create Volunteer" without entering anything in the Volunteer name field, no volunteer will be created.
18. Site names in an installation can be added or deleted under Sites tab.
19. Empty string will not be taken as Site name. Hence, if you just click "Create Site" without entering anything in the name field, no site will be created  and the form will show an error message.
20. All sites under an installation can be seen under Installations tab. Click "Show" for a particular installation to see all contact information of installation and number of sites in it. 
21. CAREFUL! : If a particular site is deleted, all the volunteer names under that site are automatically deleted.
22. CAREFUL! : If a particular installation is deleted, all the sites under that installation are automatically deleted.
18. Articles, Sites, Volunteers and Contributors table are sorted in descending order,i.e., last created is at the top and the first created is at the bottom.

## Using Devise 3.2.4
1. For "Sign Up Form", username, first name, last name, password fields are compulsory. Username field is unique for each user. If the username you chose has already been chosen by someone, then you are asked to enter some other username.
2. Sign In (Log In) using username and password. (Unique username)
3. Fields like Gender, location - dropdown list of installation names which need to be added in code if new installations are added - in app/views/devise/registrations/edit.html.erb and app/views/users/_form.html.erb , contact number, email id can be added later after sign up form, by clicking on "Edit Profile" link.
4. In every sign up form, login approval is 'Not Yet' by default, which will be set by admin for volunteers to login and volunteers and admin for contributers to log in.
5. Change password in "Edit Profile".
6. Delete my own account under "Edit Profile".

## Using CanCan
1. Articles posted by any user is approved by volunteers. If the volunteer doesn't approve of the article, he/she may delete it.
2. Any user can edit a posted article.
3. Approve the signed up contributers to log into the application.
4. All permissions to admin.

CanCan is a great gem for implementing model permissions. The main reasons I chose CanCan are:

The code written to check permissions is very readable.

The code written to declare permissions is very concise and readable.

It keeps permission logic in a single location so it is not duplicated across controllers, views, etc.

Aliasing actions (read = index and show) creates more concise and readable code.

## Models in application:

1. Article(id: integer, english: text, phonetic: text, created_at: datetime, updated_at: datetime, category: string, picture: string, language_id: integer)
2.  Language(id: integer, name: string, created_at: datetime, updated_at: datetime)
3. Installation(id: integer, installation: string, email: string, address: text, contact: string, created_at: datetime, updated_at: datetime)
4. Site(id: integer, name: string, installation_id: integer, created_at: datetime, updated_at: datetime)
5. Volunteer(id: integer, vname: string, site_id: integer, created_at: datetime, updated_at: datetime)
6.  User(id: integer, encrypted_password: string, reset_password_token: string, reset_password_sent_at: datetime, remember_created_at: datetime, sign_in_count: integer, current_sign_in_at: datetime, last_sign_in_at: datetime, current_sign_in_ip: string, last_sign_in_ip: string, created_at: datetime, updated_at: datetime, first_name: string, last_name: string, email: string, username: string, location: string, contact: string, gender: string, role: string, login_approval: string)

## Framework and specifications:

1. Rails 4.1.1
2. Ruby 2.1.2p95
3. Sqlite3

## How to run this application?

1. Download the zip file from : https://github.com/SaumyaGurtu/PLT link.
2. Extract the folder and type "cd foldername".
3. Do "rake db:migrate".
4. Do "rails server" and open the link it asks you to in your web browser.
5. Now use the application as you like :)
