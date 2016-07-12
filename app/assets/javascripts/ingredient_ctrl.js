
(function() {
	"use strict";

	angular.module("app").controller("ingredientCtrl", function($scope,$http){
		
		$scope.setup = function() {
			$http.get("/api/v1/ingredients.json").then(function(response){
				
			$scope.ingredients = response.data;
			});

		};

		$scope.toggleBioVisible = function(ingredient){
			ingredient.bioVisible = !ingredient.bioVisible
		};

		$scope.addPantryItem = function(pantryItmeName, pantryItemQuantity, pantryItemUnit){
				var newPantryItem = {
					name: pantryItemName,
					quantity: pantryItemQuantity,
					units: pantryItemUnits

			};

			$http.post('/api/v1/pantry_items.json', newPantryItem).then(function(response){
				$scope.pantry_items.push(response.data);
				$scope.newName = '';
				$scope.newQuantity = '';
				$scope.newUnits = '';
				$scope.errors = [];
			}, function(error){
				$scope.errors = error.data.errors;

			});	
		};

		$scope.deletePantryItem = function(index){
			$scope.pantry_items.splice(index,1);
		};

		$scope.setOrderBy = function(attribute){

			if (attribute != $scope.orderAttribute){
				$scope.descending = false;
			} else {
				$scope.descending = !$scope.descending;
			}

			$scope.orderAttribute = attribute
		};
	});
}());
	