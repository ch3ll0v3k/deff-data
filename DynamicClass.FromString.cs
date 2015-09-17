
/*
Its pretty simple. Assume that your classname is Car and the namespace is Vehicles, 
then pass the parameter as Vehicles.Car which returns object of type Car. Like this you 
can create any instance of any class dynamically.
*/
public object GetInstance(string strFullyQualifiedName)
{         
     Type t = Type.GetType(strFullyQualifiedName); 
     return  Activator.CreateInstance(t);         
}
/*
If your Fully Qualified Name(ie, Vehicles.Car in this case) is in another assembly, 
the Type.GetType will be null. In such cases, you have loop through all assemblies 
and find the Type. For that you can use the below code
*/
public object GetInstance(string strFullyQualifiedName)
{
     Type type = Type.GetType(strFullyQualifiedName);
     if (type != null)
         return Activator.CreateInstance(type);
     foreach (var asm in AppDomain.CurrentDomain.GetAssemblies())
     {
         type = asm.GetType(strFullyQualifiedName);
         if (type != null)
             return Activator.CreateInstance(type);
     }
     return null;
 }

//ow if you want to call a parameterized constructor do the following

Activator.CreateInstance(t,17); // Incase you are calling a constructor of int type

//instead of

Activator.CreateInstance(t);

