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

/// add user's pantry item to DB ///
		$scope.autoCompleteIngredientContent = function(content) {
			$http.get("/api/v1/ingredients/search.json?content=" + content).then(function(response){
				$scope.autoCompleteIngredients = response.data;
			});
		};


		$scope.addPantryItem = function(pantryItemIngredientId, pantryItemQuantity, pantryItemUnits){
				var newPantryItem = {
					ingredient_id: pantryItemIngredientId,
					current_member_id: $scope.current_member_id,
					quantity: pantryItemQuantity,
					units: pantryItemUnits

			};
		

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


/// toggles quantity and unit ///
		$scope.toggleVolumeVisible = function(pantry_item){
			pantry_item.volumeVisible = !pantry_item.volumeVisible
		};


/// searches for recipes based on the pantry items they select ///
		$scope.searchRecipesByPantry = function(){
			// $scope.pantry_items
			var selectedIds = "";
			for (var i = 0; i < $scope.pantry_items.length; i++){
				if($scope.pantry_items[i].selected){
					if(selectedIds !== ""){
						selectedIds += ",";
					}
					selectedIds += $scope.pantry_items[i].id;
				}
			}

			$http.get("/api/v1/recipes/search.json?pantry_ids=" + selectedIds).then(function(response){
				console.log(response.data);
				$scope.recipes = response.data;
			});
		};


// delete pantry item ///
		$scope.deletePantryItem = function(index){
			$scope.pantry_items.splice(index,1);
		};

		// $scope.setOrderBy = function(attribute){

		// 	if (attribute != $scope.orderAttribute){
		// 		$scope.descending = false;
		// 	} else {
		// 		$scope.descending = !$scope.descending;
		// 	}

		// 	$scope.orderAttribute = attribute
		// };

		window.scope = $scope;
	});
}());
	