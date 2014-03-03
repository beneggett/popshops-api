# require "popshops/version"
require "rubygems"
require "httparty"
require "hashie"

module Popshops
  class Api
    include HTTParty
    base_uri 'api.popshops.com/v3'
    attr_accessor :api_key, :catalog_key, :private_api_key, :format

    def initialize(api_key, catalog_key = nil, private_api_key = nil, format = :json)
      @api_key = api_key
      @catalog_key = catalog_key
      @private_api_key = private_api_key
      @format = format
    end

    def use_catalog(catalog_key)
      @catalog_key = catalog_key
    end

    def find_products(options={})
      Hashie::Mash.new( self.class.get "/products.#{@format}", query: merged(options) )
    end

    def find_coupons_and_deals(options={})
      Hashie::Mash.new( self.class.get "/deals.#{@format}", query: merged(options) )
    end

    def find_merchants(options={})
      Hashie::Mash.new( self.class.get "/merchants.#{@format}", query: merged(options) )
    end

    def list_categories(options={})
      Hashie::Mash.new( self.class.get "/categories.#{@format}", query: merged(options) )
    end

    def list_merchant_types(options={})
      Hashie::Mash.new( self.class.get "/merchant_types.#{@format}", query: merged(options) )
    end

    def list_deal_types(options={})
      Hashie::Mash.new( self.class.get "/deal_types.#{@format}", query: merged(options) )
    end

    def list_networks(options={})
      Hashie::Mash.new( self.class.get "/networks.#{@format}", query: merged(options) )
    end

    def list_countries(options={})
      Hashie::Mash.new( self.class.get "/countries.#{@format}", query: merged(options) )
    end

    def list_keywords(options={})
      Hashie::Mash.new( self.class.get "/keywords.#{@format}", query: merged(options) )
    end

    private
    # This is used in all calls to merge our account & catalog parameters into the options queries
    def merged(options)
      { account: @api_key, catalog: @catalog_key}.merge(options)
    end

  end
end
