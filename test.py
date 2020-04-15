import sqlite3
import pandas as pd

#Open database
db = pd.read_csv('item.csv')

with sqlite3.connect('database.db') as conn:
	curr = conn.cursor()
	li=['jeans','kids','shirts','tshirts']
	for i in li:
		curr.execute('INSERT INTO categories (name) VALUES (?)',(i,))
conn.close()


with sqlite3.connect('database.db') as conn:
	curr = conn.cursor()
	for row in range(145):
		# print(db[row])
		st = 'INSERT INTO products (name, price, description, image, stock, gender, color, categoryId) VALUES('+str(db['name'][row])+','+str(db['price'][row])+','+str(db['brand'][row])+','+str(db['path'][row])+','+str(db['stock'][row])+','+str(db['gender'][row])+','+str(db['color'][row])+','+str(db['category'][row])+')'
		print(st)
		curr.execute('INSERT INTO products (name, price, description, image, stock, gender, color, categoryId) VALUES(?,?,?,?,?,?,?,?)',(str(db['name'][row]),str(db['price'][row]),str(db['brand'][row]),str(db['path'][row]),str(db['stock'][row]),str(db['gender'][row]),str(db['color'][row]),str(db['category'][row])))
		print(curr)
conn.close()
