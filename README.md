### **Apresentação**
Esse repositório contém um projeto de automação de testes utilizando a biblioteca SeleniumLibrary em Python. O objetivo do projeto é testar a funcionalidade de busca do site Blog do Agi.

### **Pré-requisitos**
Para rodar os testes é necessário ter instalado:

* Python 3.x
* Biblioteca SeleniumLibrary
* WebDriver do Chrome

### **Configuração**
Antes de rodar os testes, é necessário configurar o caminho para o WebDriver do Chrome no arquivo TestCase na variável **`${chrome_driver_path}`**.

### **Cenários de Testes**
O projeto contém 5 testes que verificam diferentes cenários da funcionalidade de busca do site:

* **Pesquisar Termo Existente:**
Verifica se ao buscar por um termo existente, o resultado esperado é exibido.

* **Pesquisar Termo Inexistente:**
Verifica se ao buscar por um termo que não existe, é exibida a mensagem de nenhum resultado encontrado.

* **Pesquisa Vazia:**
Verifica se ao submeter a busca sem preencher nenhum termo, é exibida a página principal do site.

* **Pesquisar Por Categoria:**
Verifica se ao buscar por uma categoria, o resultado esperado é exibido.

* **Pesquisar Por Múltiplos Termos:**
Verifica se ao buscar por múltiplos termos, o resultado esperado é exibido.

### **Autora**
Esse projeto foi desenvolvido por Luana Cristini Lindemann como parte do processo seletivo para Software Tester Engineer Jr na empresa Agi.
