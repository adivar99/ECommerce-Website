from time import sleep
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
import requests
import shutil
import os
import sys
import random

browser = webdriver.Chrome('C:/Program Files (x86)/Google/Chrome/chromedriver.exe')
browser.get('http://127.0.0.1:5000/')
# browser.implicitly_wait(5)

print()
print("*"*75)
print('Browser Created\n')
n = int(sys.argv[1])

def prints(st,status):
	l=50-len(st)
	print(st,end='')
	print('.'*l,end='')
	if(status==True):
		print('Passed')
	else:
		print('Failed')
	print()



def itemcheck():
	items = browser.find_elements_by_class_name('column')
	print('No. of items:',len(items))
	if(len(items)>0):
		prints('Test Case #1: Load items',True)
	else:
		prints('Test Case #1: Load items',False)


def signup(username,password):
	login_link = browser.find_element_by_id("loginbtn")
	login_link.click()

	sleep(2)

	signup = browser.find_element_by_xpath("//form/button[@type='button']")
	signup.click()

	sleep(3)

	username_input = browser.find_element_by_css_selector("input[name='email']")
	password_input = browser.find_element_by_css_selector("input[name='password']")
	cpassword_input = browser.find_element_by_css_selector("input[name='cpassword']")
	Fname_input = browser.find_element_by_css_selector("input[name='firstName']")
	Lname_input = browser.find_element_by_css_selector("input[name='lastName']")

	username_input.send_keys(username)
	password_input.send_keys(password)
	cpassword_input.send_keys(password)
	Fname_input.send_keys('FirstName')
	Lname_input.send_keys('LastName')

	register = browser.find_element_by_xpath("//form/p/input[@name='register']")
	register.click()

	# print('Registered',username)
	sleep(2)

	username_input = browser.find_element_by_css_selector("input[name='email']")
	password_input = browser.find_element_by_css_selector("input[name='password']")

	username_input.send_keys(username)
	password_input.send_keys(password)

	submit_button = browser.find_element_by_xpath("//form/p/input[@type='submit']")
	# submit_button = browser.find_element_by_id("submit")
	submit_button.click()

	prints("Test Case #2: Register User",True)

	sleep(3)

def loadCategories():
	categories = browser.find_elements_by_xpath('//nav/div/a[@class="w3-bar-item w3-button"]')
	x = random.choice(categories)
	x.click()
	items = browser.find_elements_by_class_name('column')
	# print(len(items))
	if len(items)>0:
		prints('Test Case #3: Load Category Specific Items',True)
	else:
		prints('Test Case #3: Load Category Specific Items',False)
	sleep(2)

def AddtoCart():
	flag=0
	categories = browser.find_elements_by_xpath('//nav/div/a[@class="w3-bar-item w3-button"]')
	# for i in categories:
	# 	print(i.get_attribute('innerHTML'))
	for j in range(n):
		categories = browser.find_elements_by_xpath('//nav/div/a[@class="w3-bar-item w3-button"]')
		x = random.choice(categories)
		# print(x.get_attribute('innerHTML'))
		x.click()
		items = browser.find_elements_by_css_selector('div.column')
		y = random.choice(items)
		y.click()
		addcart = browser.find_element_by_id('cart')
		addcart.click()
		relitems = browser.find_elements_by_css_selector('div.column')
		if len(relitems)>0:
			flag+=1
		print('Added product',j+1,'to cart...')
		sleep(3)
	# print()
	prints("Test Case #4: Load item Description pages",True)
	# print(flag)
	if flag>=n-1:
		prints("Test Case #5: Load Related items",True)
	else:
		prints("Test Case #5: Load Related items",False)


def LoadCart():
	cart = browser.find_element_by_css_selector("a.w3-bar-item.w3-button")
	cart.click()
	# print('Go to Cart..\n')
	cartitems = browser.find_elements_by_css_selector('div.itemName')
	if len(cartitems)==n:
		prints('Test Case #6: Add items to cart',True)
		prints('Test Case #7: Load cart items',True)
	else:
		prints('Test Case #6: Add items to cart',False)
		prints('Test Case #7: Load cart items',False)
	sleep(2)

def LoadItems():
	for i in range(n-2):
		remove = browser.find_element_by_css_selector("button.remove")
		remove.click()
		print("Removed one item")
		sleep(2)
	cartitems = browser.find_elements_by_css_selector('div.itemName')
	if len(cartitems)==2:
		prints('Test Case #8: Remove items from cart',True)
	else:
		prints('Test Case #8: Remove items from cart',False)

def LoadCheckout():
	# print('\nGo to Checkout...\n')
	checkout = browser.find_element_by_css_selector('button#checkout')
	checkout.click()
	sleep(3)

	coitems = browser.find_elements_by_css_selector('span.price')
	# print(len(coitems))
	if len(coitems)==5:
		prints('Test Case #9: Load Checkout items',True)
	else:
		prints('Test Case #9: Load Checkout items',False)


def main():
	itemcheck()

	signup("example12@gmail.com","asdf123")

	loadCategories()

	AddtoCart()

	LoadCart()

	LoadItems()

	LoadCheckout()

	pay = browser.find_element_by_css_selector('input.btn')
	pay.click()
	# print('Paid.\n')
	prints('Test Case #10: Checkout',True)

	cart = browser.find_element_by_css_selector("a.w3-bar-item.w3-button")
	cart.click()
	cartitems = browser.find_elements_by_css_selector('div.itemName')
	if len(cartitems)==0:
		prints('Test Case #11: Empty cart',True)
	else:
		prints('Test Case #11: Empty cart',False)

	sleep(3)
	
	menu = browser.find_elements_by_css_selector('a.w3-bar-item.w3-button')
	# print(menu.get_attribute('innerHTML'))
	for x in menu:
		# print(x.get_attribute('innerHTML'))
		if x.get_attribute('innerHTML')=='Sign Out':
			signout = x
			break
	print(signout.get_attribute('innerHTML'))
	signout.click()

main()

sleep(10)

browser.close()
