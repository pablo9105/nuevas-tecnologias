    # TODO: importar flask
from flask import Flask, render_template, request, redirect, url_for, flash

# FIXME: conexion con base de datos
import mysql.connector 
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="crud_task"
)
 
 
app = Flask(__name__)

app.secret_key = "CRUD_FLASK_PYTHON"
# TODO: ruta index y la que me lista los registros
@app.route('/')
def Index():
    mycursor = mydb.cursor()
    sql = "SELECT * FROM cita_usr"
    mycursor.execute(sql)
    result = mycursor.fetchall()
    return render_template('home.html', tasks = result)
 
 
 
# TODO: metodo insertar
@app.route('/insert', methods = ['POST'])
def insert():
      if request.method =='POST':
        nombre = request.form['nombre']             # name de los inputs del formulario
        apellido = request.form['apellido']
        nro_documento = request.form['nro_documento']
        fecha_nac = request.form['fecha_nac']
        ciudad = request.form['ciudad']
        barrio = request.form['barrio']
        celular = request.form['celular']

        mycursor = mydb.cursor()
        sql = "INSERT INTO cita_usr (Nombre,Apellido,Nro_Documento,Fecha_Nac,Ciudad,Barrio,Celular) VALUES (%s, %s , %s, %s, %s, %s, %s)"  # %s significa q espera los valores q le mandemos

        mycursor.execute(sql,(nombre,apellido, nro_documento,fecha_nac,ciudad,barrio,celular))

        mydb.commit()

          # para generar una alerta y una categoria de alerta
        flash("Usuario Guardado correctamente",'alert-success')  

        return redirect(url_for('Index')) # redirigir a la pagina de inicio
 
 
# TODO: metodo actualizar
@app.route('/update', methods = ['POST'])
def update():
 
    if request.method == 'POST':
        post = request.form['id']
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        nro_documento = request.form['nro_documento']
        fecha_nac = request.form['fecha_nac']
        ciudad = request.form['ciudad']
        barrio = request.form['barrio']
        celular = request.form['celular']
        mycursor = mydb.cursor()
        query = "UPDATE cita_usr SET Nombre = %s, Apellido = %s, Nro_Documento = %s, Fecha_Nac = %s, Ciudad = %s, Barrio = %s, Celular = %s "
        query = query + " WHERE Id = %s"

        mycursor.execute(query,(nombre,apellido, nro_documento,fecha_nac,ciudad,barrio,celular,post))
        mydb.commit()
       
 
        
        flash("Usuario actualizado Correctamente",'alert-info')
 
        return redirect(url_for('Index'))
 
 
 
 
#TODO: metodo eleminar
@app.route('/delete/<id>/', methods = ['GET','POST']) # TODO: <id> es el parametro recibido desde el boton

def delete(id): # TODO: el metodo debe recibir el parametro q trae la ruta
    post = id
    mycursor = mydb.cursor()
    query = "DELETE FROM cita_usr WHERE Id = %s"
    mycursor.execute(query,[post]) # TODO: cuando es un solo valor se pone dentro de []
    mydb.commit()
    flash("Usuario eliminado corectamente", 'alert-success')
 
    return redirect(url_for('Index'))
 
 
 
 
 
 
if __name__ == "__main__":
    app.run(debug=True)