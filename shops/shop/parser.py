from decimal import Decimal
from bs4 import BeautifulSoup
import requests

def parser_dollar(rouble):
    url = 'https://yandex.ru/search/?text=курс%20доллара&clid=1955453&win=464&from=ntp&&lr=172'
    
    page = requests.get(url)

    soup = BeautifulSoup(page.text, "html.parser")

    yandex = soup.find_all('input', value=True)
    
    course_ruble = []
    
    for i in yandex:
        if i['value']:
            course_ruble.append(i['value'])
    
    number = course_ruble[-1]
    number_new = number.replace(',', '.')
    rouble = Decimal(rouble) / Decimal(number_new)
    return round(rouble, 2)