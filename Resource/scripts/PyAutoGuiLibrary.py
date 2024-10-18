import pyautogui

class PyAutoGuiLibrary:
    
    def press_key(self, key):
        """Pressiona a tecla especificada."""
        pyautogui.press(key)
    
    def type_text(self, text):
        """Digita o texto especificado."""
        pyautogui.write(text)


    def screenshot(self, path):
        """Tira uma captura de tela e salva no caminho especificado."""
        pyautogui.screenshot(path)
