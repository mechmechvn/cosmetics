class HomeController < ApplicationController
  def index
    @best_seller_lipsticks = Lipstick.where("is_best_seller", 1);
  end
end
