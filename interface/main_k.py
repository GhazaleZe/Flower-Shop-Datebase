import kivy
import pyodbc as pyodbc
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
from kivy.uix.button import Button
from kivy.uix.widget import Widget
from kivy.properties import StringProperty
from kivy.properties import ObjectProperty
from struct import pack
from kivy.uix.popup import Popup
from kivy.uix.gridlayout import GridLayout
from kivy.uix.boxlayout import BoxLayout
from kivy.lang import Builder
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.uix.scrollview import ScrollView
from kivy.uix.checkbox import CheckBox
from kivy.core.window import Window

con = pyodbc.connect('Trusted_Connection=yes', driver='{SQL Server}', server='ZEHTAB-QT724IR', database='FlowerShop')
cur = con.cursor()
querystring = "select * from Flower_Color"
cur.execute(querystring)

Flowers = []
i = 0

for row in cur:
    Flowers.append(
        str(row[0]) + "    " + str(row[1]) + "    " + str(row[2]) + "    " + str(row[3]) + "    " + str(row[4]))
    i += 1


# Container class for the app's widgets

class MyLabel(Button):
    pass


class SampBoxLayout(BoxLayout):

    # Callback for the checkbox
    def checkbox_click(self, instance, value):
        if value is True:
            print("Checkbox Checked")
        else:
            print("Checkbox Unchecked")


class MyGrid(GridLayout, Screen):
    def __init__(self, **kwargs):
        super(MyGrid, self).__init__(**kwargs)
        self.cols = 1
        self.IDlist = {}
        self.add_widget(Label(text='Customer ID', color=(.0, .6, .9, 1)))
        self.CustomerID = TextInput(multiline=False, background_color=(.3, .6, .5, 1), halign="center")
        self.add_widget(self.CustomerID)
        for i in Flowers:
            self.myf = Button(text=str(i))
            self.myf.bind(on_press=self.myfpressed)
            self.add_widget(self.myf)
        self.add_widget(Label(text="Occasion: Birthday,Anniversary,Valentine,Funeral,ChampionShip,"
                                   "Appreciation,Other"))
        self.Occasion = TextInput(multiline=False)
        self.add_widget(self.Occasion)
        self.add_widget(Label(text="Package Type"))
        self.PackageType = TextInput(multiline=False)
        self.add_widget(self.PackageType)
        self.add_widget(Label(text="Design : I trust on florist OR I design myself"))
        self.Design = TextInput(multiline=False)
        self.add_widget(self.Design)
        self.submit = Button(text="Purchase")
        self.submit.bind(on_press=self.Purchase)
        self.add_widget(self.submit)
        self.cancel = Button(text="Cancel")
        self.cancel.bind(on_press=self.Cancelpressed)
        self.add_widget(self.cancel)

    def Purchase(self, instance):
        CustomerID = self.CustomerID.text
        PackageType = self.PackageType.text
        MyOccasion = self.Occasion.text
        #print(CustomerID)
        self.FlowerinsertQuery ='''insert into [order](
                                Customer_ID,Order_type,Shop_date,Package_ID,
                                Total_Cost,Discount,Final_Cost,Occasion_ID,Wrapping_price)
                                values ('''+ CustomerID +''','Online','1399-2-05',NULL,NULL,NULL,NULL,NULL,60000)'''
        cur.execute(self.FlowerinsertQuery)
        con.commit()
        for ii in self.IDlist:
            x = ii
            y = self.IDlist[ii]
            self.FlowerINorderQuery= ''' declare @a int;
                                     EXECUTE  lastOrderID  @a output
                                     insert into FlowersInOrder(Order_ID,Flower_ID,Number) values( @a ,'''+str(x)+","+str(y)+")"
            cur.execute(self.FlowerINorderQuery)
            con.commit()
        self.PricOKquery = '''declare @a int;
                              EXECUTE  lastOrderID  @a output
                              EXECUTE   Price_NumberOK @a'''
        cur.execute(self.PricOKquery)
        con.commit()

    def Cancelpressed(self, instance):
        del self.IDlist
        self.CustomerID.text = ""
        self.Occasion.text = ""
        self.PackageType.text = ""
        self.Design.text = ""

    def myfpressed(self, instance):

        ListOfFlowers = instance.text.split()
        if int(ListOfFlowers[0]) in self.IDlist:
            self.IDlist[int(ListOfFlowers[0])] += 1
        else:
            self.IDlist[int(ListOfFlowers[0])] = 1
        print(self.IDlist)

        # self.Cost += float(ListOfFlowers[2])
        # self.lbl.text = "Total cost = " + str(self.Cost)


# App derived from App class
class MyApp(App):
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()
