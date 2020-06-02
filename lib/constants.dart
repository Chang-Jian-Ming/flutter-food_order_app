import 'package:flutter/material.dart';

// Test data
var outlets = [
  {
    "outletId": 1,
    "lat": 1.333005, 
    "lng": 103.84487, 
    "name": "Toa Payoh Outlet",
    "address": "500 Lorong 6 Toa Payoh, Singapore 310500",
    "image": "https://images.happycow.net/venues/1024/46/35/hcmp46354_260754.jpeg",
  },
  {
    "outletId": 2,
    "lat": 1.280568, 
    "lng": 103.8186597, 
    "name": "Kim Tian Outlet",
    "address": "201 Kim Tian Rd, Singapore 160201",
    "image": "https://www.sqfeed.com/wp-content/uploads/2019/05/ir-Koufu-foodcourt.jpg",
  },
  {
    "outletId": 3,
    "lat": 1.2913799, 
    "lng": 103.8489579, 
    "name": "Koufu Foodcourt @ SMU",
    "address": "70 Stamford Road #B1-26/28, 178901",
    "image": "https://135525-391882-2-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2019/05/Koufu-1280x960.jpg",
  },
];

var outlet1 = [
  {
    "stallId": 101,
    "stallName": "Western Delights",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "image": "https://marchh.com/wp-content/uploads/2019/06/western-food-singapore-1280x720.jpg",
  },
  {
    "stallId": 102,
    "stallName": "Korean Delights",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "image": "https://cdn.cnn.com/cnnnext/dam/assets/181114130138-korean-food-2620014201204004k-jeonju-bibimbap.jpg",
  },
  {
    "stallId": 103,
    "stallName": "Japanese Delights",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "image": "https://resources.matcha-jp.com/original/2020/01/15-95040.jpeg",
  },
  {
    "stallId": 104,
    "stallName": "Western Delights",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "image": "https://marchh.com/wp-content/uploads/2019/06/western-food-singapore-1280x720.jpg",
  },
  {
    "stallId": 105,
    "stallName": "Korean Delights",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "image": "https://cdn.cnn.com/cnnnext/dam/assets/181114130138-korean-food-2620014201204004k-jeonju-bibimbap.jpg",
  },
  {
    "stallId": 106,
    "stallName": "Japanese Delights",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "image": "https://resources.matcha-jp.com/original/2020/01/15-95040.jpeg",
  },
];

var menu = [
  {
    'name': 'Lor Mee',
    'price': 5.5,
    'image': 'https://i1.wp.com/eatbook.sg/wp-content/uploads/2018/02/Lor-Mee-Yuan-Chun-Famous-Lor-Mee.jpg?resize=1080%2C1080',
  },
  {
    'name': 'Fried Rice',
    'price': 4.5,
    'image': 'https://www.seriouseats.com/recipes/images/2016/01/20160206-fried-rice-food-lab-68-1500x1125.jpg',
  },
  {
    'name': 'Prawn Roll',
    'price': 6.0,
    'image': 'https://asianinspirations.com.au/wp-content/uploads/2018/08/R01010_Rellenong-Hippon.jpg',
  },
  {
    'name': 'Sweet & Sour Pork',
    'price': 5.5,
    'image': 'https://www.lostlaowai.com/wp-content/uploads/2015/03/gu-lao-rou-llw-01-1080x720.jpg',
  },
  {
    'name': 'Fried Mee Sua',
    'price': 5.0,
    'image': 'https://i.ytimg.com/vi/4yCED1l9u6c/maxresdefault.jpg',
  },
  {
    'name': 'Fried Peh Kueh',
    'price': 4.5,
    'image': 'https://2.bp.blogspot.com/-D1d9z4hbDLI/XMRXvfcu6dI/AAAAAAAA4Og/bT9Gdz8LxOIcNXSMfDI3WARaQIbY-Fo5gCK4BGAYYCw/s1600/Lor%2Bmee%2B-%2BMing%2BChung-780069.jpg',
  },
  {
    'name': 'Lor Bee Hoon',
    'price': 5.5,
    'image': 'https://i1.wp.com/eatbook.sg/wp-content/uploads/2018/02/Lor-Mee-Yuan-Chun-Famous-Lor-Mee.jpg?resize=1080%2C1080',
  },
  {
    'name': 'Fried Prawn',
    'price': 8.5,
    'image': 'https://farm5.staticflickr.com/4899/46273107311_649680f633_b.jpg',
  },
  {
    'name': 'White Bee Hoon',
    'price': 6.5,
    'image': 'https://farm5.staticflickr.com/4880/46273108351_a57f509577_b.jpg',
  },
  {
    'name': 'La La (Cockles)',
    'price': 5.5,
    'image': 'https://images.squaremeal.sg/cloud/restaurants/345/images/a943ea3b-c704-4e35-89a1-44d602eb2009.jpg?w=900&h=600&fit=crop',
  },
];