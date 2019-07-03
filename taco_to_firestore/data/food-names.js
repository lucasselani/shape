const foodList = require('./foodDetailsList.json');
  
function getFoods() {  
    var foodNames = {
      "foods": []
    }
    foodList.foodDetails.forEach(element => {
      foodTemp = {
        "id": 0,
        "category_id": 0,
        "description": ""
      }
      foodTemp.id = element.id
      foodTemp.category_id = element.category_id
      foodTemp.description = element.description
      foodNames.foods.push(foodTemp)
    });
    var json = JSON.stringify(foodNames);
    var fs = require('fs');
    fs.writeFile('foodList.json', json, 'utf8', callback);
  }

  function callback() {
    console.log("Done")
  }

  getFoods()