class Persona:
    #constructor
    
    #atributos
    nombre=[]
    apellido=[]
    #metodos
    def addpersona(self,parametro1,parametro2):
        self.nombre.append(parametro1)
        self.apellido.append(parametro2)

    def listarPersona(self):
        for i in range(0,len(self.nombre)):
            print("nombre: "+ self.nombre[i]+ " apellido: " + self.apellido[i])

    def hablar(self, mensaje):
        print(mensaje)

persona = Persona()
persona.addpersona("juan","martines")
persona.addpersona("pedro","gomez")
persona.listarPersona()
