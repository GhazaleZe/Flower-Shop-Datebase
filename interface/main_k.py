import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.textinput import TextInput
class MyApp(App):
    def build(self):
        return Label (text="Ghazale is coding")

if __name__ == "__main__":
    MyApp().run()
