
(function() {
	"use strict";

	angular.module("app").controller("ingredientCtrl", function($scope,$http){

		$scope.setup = function(memberId) {
			$http.get("/api/v1/ingredients.json").then(function(response){
				
			$scope.ingredients = response.data;
			
			});

			$http.get("/api/v1/pantry_items.json").then(function(response){
				
			$scope.pantry_items = response.data;
			
			});

			$scope.current_member_id = memberId;
		};
/// toggles quantity and unit ///
		$scope.toggleVolumeVisible = function(pantry_item){
			pantry_item.volumeVisible = !pantry_item.volumeVisible
		};

/// add user's pantry item to DB ///
		$scope.addPantryItem = function(pantryItemIngredientId, pantryItemQuantity, pantryItemUnits){
				var newPantryItem = {
					ingredient_id: pantryItemIngredientId,
					current_member_id: $scope.current_member_id,
					quantity: pantryItemQuantity,
					units: pantryItemUnits

			};
		console.log(newPantryItem);

			$http.post('/api/v1/pantry_items.json', newPantryItem).then(function(response){
				$scope.pantry_items.push(response.data);
				$scope.newIngredientId = '';
				$scope.newCurrentMemberId ='';
				$scope.newQuantity ='';
				$scope.newUnits ='';
				$scope.errors = [];
			}, function(error){
				$scope.errors = error.data.errors;

			});	
		};

		$scope.autoCompleteIngredientContent = function(content) {
			$http.get("/api/v1/ingredients/search.json?content=" + content).then(function(response){
				$scope.autoCompleteIngredients = response.data;
			});
		};


/// UPDATE PANTRY ITEM ///
$scope.updatePantryItem = function(pantryItemQuantity, pantryItemUnits){
				var changePantryItem = {
					quantity: pantryItemQuantity,
					units: pantryItemUnits

			};

			$http.patch('/api/v1/pantry_items/:id.json', changePantryItem).then(function(response){
				$scope.pantry_items.push(response.data);
				$scope.changeQuantity = '';
				$scope.changeUnits = '';
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
	