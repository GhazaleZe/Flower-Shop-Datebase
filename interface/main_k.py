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
l = len(Flowers)


# Container class for the app's widgets


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
        self.cols = 2
        self.inside = GridLayout()
        self.inside.cols = 3
        self.add_widget(Label(text='Customer ID', color=(.0, .6, .9, 1)))
        self.CustomerID = TextInput(multiline=False, background_color=(.3, .6, .5, 1), halign="center")
        self.add_widget(self.CustomerID)
        for i in Flowers:
            self.inside.add_widget(Label(text=str(i)))
            self.number = TextInput(multiline=False, background_color=(1, 1, 1, 1), halign="center")
            self.inside.add_widget(self.number)
            self.active = CheckBox(active=False)
            self.inside.add_widget(self.active)

        self.submit = Button(text="Purchase")
        self.submit.bind(on_press=self.pressed)
        self.add_widget(self.submit)

    def pressed(self, instance):
        print("p")


# App derived from App class
class MyApp(App):
    def build(self):
        return MyGrid()


if __name__ == "__main__":
    MyApp().run()
