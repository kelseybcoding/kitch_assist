
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

/// add user's pantry item to DB ///
		$scope.addPantryItem = function(pantryItemIngredientId, pantryItemCurrentMemberId){
				var newPantryItem = {
					ingredient_id: pantryItemIngredientId,
					current_member_id: cpantryItemCurrentMemberId
					// quantity: pantryItemQuantity,
					// units: pantryItemUnits

			};

			$http.post('/api/v1/pantry_items.json', newPantryItem).then(function(response){
				$scope.pantry_items.push(response.data);
				$scope.newIngredientId = '';
				$scope.newCurrentMemberId ='';
				$scope.errors = [];
			}, function(error){
				$scope.errors = error.data.errors;

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
	
///// CAN I PUT A $scope.addPantryItem FUNCTION HERE AND POST TO PANTRY ITEMS WITH ONLY THE HIDDEN CURRENT MEMBER NAME AND INGREDIENT ID
/// THEN DO AN UPATE PANTRY ITEM ACTION WITH THE PATCH REQUEST FOR QUANTITY AND UNIT


		// 	$scope.togglePantryForm = function(ingredient){
		// 	ingredient.pantryForm = !ingredient.pantryForm
		// };