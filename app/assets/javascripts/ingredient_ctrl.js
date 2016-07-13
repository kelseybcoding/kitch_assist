
(function() {
	"use strict";

	angular.module("app").controller("ingredientCtrl", function($scope,$http){
/////////// ingredient ////////////		
		$scope.setup = function() {
			$http.get("/api/v1/ingredients.json").then(function(response){
				
			$scope.ingredients = response.data;
			console.log($scope.ingredients);
			});

/////////// pantry_item ////////////	
			$http.get("/api/v1/pantry_items.json").then(function(response){
				
			$scope.pantry_items = response.data;
			console.log($scope.pantry_items);
			});


		};
/// toggles quantity and unit ///
		$scope.toggleVolumeVisible = function(pantry_item){
			pantry_item.volumeVisible = !pantry_item.volumeVisible
		};


		$scope.addPantryItem = function(ingredientId, currentMemberId, pantryItemQuantity, pantryItemUnit){
				var newPantryItem = {
					ingredient_id: ingredientId,
					current_member_id: currentMemberId,
					quantity: pantryItemQuantity,
					units: pantryItemUnits

			};

			$http.post('/api/v1/pantry_items.json', newPantryItem).then(function(response){
				$scope.pantry_items.push(response.data);
				$scope.newIngredientId = '';
				$scope.newCurrentMemberId ='';
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
	