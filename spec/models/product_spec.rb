require 'rails_helper'

describe Product do 

  describe "#name" do

		it 'should have a name' do
	  	# setup
	    product = build(:product, name: nil)

	    expect(product.name).to be_blank 

	    # fire
	    product.valid? # which checks the validity of the product

	    # expect( product.errors[:name].include?("can't be blank") ).to(be_truthy)
      expect(product.errors[:name]).to include("can't be blank")
	  end

	  it 'should not have the same product twice' do
	  	product = create :product

	  	product2 = build :product, name: product.name

	  	expect(product2.name).to eq(product.name) 

	  	# fire
	  	product2.valid?

	  	# check
	  	expect(product2.errors[:name]).to include("has already been taken")
	  end	

	  it 'test' do
	  	product1 = create :product
	  	puts product1.name

	  	product2 = create :product
	  	puts product2.name

	  	# fire

	  	# check
	  end	
  end
  	
  describe '#average_rating' do

    context 'when comments with ratings 3 4 and 5' do
    	before do
		    # setup : You need to create for instance 1 product with 3 comments
	      # first comment to have rating 3, second comment to have rating 4
	      # and third comment to have rating 5
	      #@product = Product.create! name: "foo"
	      #user = User.create! email: "foo@mailinator.com", password: '12345678', password_confirmation: '12345678'
	      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 3)
	      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 4)
	      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 5)

	      # with factory
	      @product = FactoryGirl.create :product
	      user = FactoryGirl.create :user
	      # product.comments << build(user: user, :comment, :rating => "3")
	      # product.comments << build(user: user, :comment, :rating => "4")
	      # product.comments << build(user: user, :comment, :rating => "5")
	      @comment = create(:comment, user: user, product: @product, rating: "3")
        @comment2 = create(:comment, user: user, product: @product, rating: "4")
        @comment3 = create(:comment, user: user, product: @product, rating: "5")
      end
     
        		
		  it 'returns 4' do	      
	      # fire
	      result = @product.average_rating  		

	      # test results
	      expect(result).to eq(4)
		  end 
    end 	
	     
	    context 'when comments with ratings 3 4 3 4' do

	      before do
			  # setup : You need to create for instance 1 product with 4 comments
		      #first comment to have rating 3, second comment to have rating 4
		      # and third comment to have rating 3 and foruth comment is 4
		      #@product = Product.create! name: "bar"
		      #user = User.create! email: "foo2@mailinator.com", password: '901234567', password_confirmation: '901234567'
		      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 3)
		      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 4)
		      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 3)
		      #@product.comments << Comment.new(body: "body", user: user, product: @product, rating: 4)
              
              #with Factory Girl
		      @product = FactoryGirl.create :product
		      user = FactoryGirl.create :user
		      @comment = FactoryGirl.create(:comment, user: user, product: @product, rating: "3")
          @comment2 = FactoryGirl.create(:comment, user: user, product: @product, rating: "4")
          @comment3 = FactoryGirl.create(:comment, user: user, product: @product, rating: "3")
          @comment4 = FactoryGirl.create(:comment, user: user, product: @product, rating: "4")
	      end
	        	

		    it 'returns 3.5' do

		      # fire
		      result = @product.average_rating  		

		      # test results
		      expect(result).to eq(3.5)
		    end 
		  end
  end	
end