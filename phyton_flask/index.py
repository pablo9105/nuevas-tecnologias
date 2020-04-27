from flask import Flask, render_template, request, redirect, url_for, flash
import mysql.connector
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="taskapp"
)


app = Flask(__name__)

@app.route('/')
def start():
    mycursor = mydb.cursor()
    sql = "SELECT * FROM tablatask"
    mycursor.execute(sql)
    result = mycursor.fetchall()
    return render_template('home.html', tasks = result)


@app.route('/createtask')
def createtask():
    return render_template('create_task.html')

@app.route('/addtask', methods=['POST'])
def addtask():
    if request.method =='POST':
        taskname = request.form['taskname']
        taskdate = request.form['taskdate']
        print("taskname", taskname, "taskdate", taskdate)

        mycursor = mydb.cursor()
        sql = f"INSERT INTO tablatask (Task,Date) VALUES ('{taskname}', '{taskdate}')"
        mycursor.execute(sql)
        mydb.commit()
        return redirect(url_for('start'))


  
    



if __name__ == "__main__":
    app.run(debug=True)