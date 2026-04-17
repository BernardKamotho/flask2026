from flask import *

# import pymysql library that will enable you to create a connectin between vscode and the db(sql)
import pymysql

# create a web app
app = Flask(__name__)

# below is the signup route(Registration)
@app.route("/api/signup", methods=["POST"])
def signup():
    if request.method == "POST":
        # extract the different details entered on the form
        username = request.form["username"]
        password = request.form["password"]
        email = request.form["email"]
        phone = request.form["phone"]
        # print("The inserted details are: ",(username, password,email,phone))
        # create/establish a connection to the database
        connection = pymysql.connect(host="localhost", user="root", password="",database="sokogardenonline")
        # create a cursor
        cursor = connection.cursor()
        # structure an sql quesry to insert data into the table
        sql = "INSERT INTO users( username, password, email, phone) VALUES (%s, %s, %s, %s)"
        # put the data into a tuple
        data = (username, password, email, phone)
        # use the cursor to execute the sql as you replace the placeholders with the actual data
        cursor.execute(sql, data)
        # commit the changes into the database
        connection.commit()
        return jsonify({"message" : "user registered successfully"})



# Below is the login/sign in Route
@app.route("/api/signin", methods=["POST"])
def signin():
    if request.method == "POST":
        # extract the two details entered on the form
        email = request.form["email"]
        password = request.form["password"]

        # print out the details entered
        # print(email, password)

        # create/establish a connection to the database
        connection = pymysql.connect(host="localhost", user="root", password="", database="sokogardenonline")

        # create a cursor
        cursor = connection.cursor()

        # structure the sql query that will check whether the email and the password entered are correct
        sql = "SELECT * FROM users WHERE email = %s AND password = %s"

        # put the data received from the form into a tuple
        data = (email, password)

        # by use of the cursor execute the sql 
        cursor.execute(sql, data)

        # check whether there row returned and store the on a variable
        count = cursor.rowcount

        # if there are records returned it mean the password and the email are correct otherwise it means they are wrong
        if count == 0:
            return jsonify({"message" : "Login Failed."})
        else:
            # when the details are correct, create a variable called user and store the 
            # details of the user in the variable
            # Then return a success message
            user = cursor.fetchone()

            return jsonify({"message" : "Login successful", "user" : user})





# run the web app
app.run(debug=True)