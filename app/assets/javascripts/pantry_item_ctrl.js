(function() {
	"use strict";

	angular.module("app").controller("pantryItemCtrl", function($scope,$http){

		$scope.setup = function(memberId) {

			$http.get("/api/v1/pantry_items.json").then(function(response){
			$scope.pantry_items = response.data;
			
			});

			$scope.current_member_id = memberId;
		};


		/// toggles quantity and unit ///
				$scope.toggleVolumeVisible = function(pantry_item) {
					$http.get("api/v1/pantry_items.json")
					pantry_item.volumeVisible = !pantry_item.volumeVisible
				};

		/// UPDATE PANTRY ITEM ///
				$scope.updatePantryItem = function(pantryItemQuantity, pantryItemUnits){
						var changePantryItem = {
							quantity: pantryItemQuantity,
							units: pantryItemUnits

					};

					$http.patch('/api/v1/pantry_items/#{pantry_item.id}.json', changePantryItem).then(function(response){
						$scope.pantry_items.push(response.data);
						$scope.changeQuantity = '';
						$scope.changeUnits = '';
						$scope.errors = [];
					}, function(error){
						$scope.errors = error.data.errors;

					});	
				};		