require 'active_support/concern'
require 'active_support/callbacks'

module Filters
  extend ActiveSupport::Concern
  include ActiveSupport::Callbacks

  included do
    define_callbacks :process
  end

  # def self.included(base) #base == ActionController::Base
  #   base.extend ClassMethods
  # end
  #
  # module ClassMethods
  #   def before_action(method)
  #
  #   end
  # end

  class_methods do
    def before_action(method)
      set_callback :process, :before, method
    end

    # def before_actions
    #   @before_actions ||= []
    # end

    def after_action(method)
      set_callback :process, :after, method
    end

    def around_action(method)
      set_callback :process, :around, method
    end

    # def after_actions
    #   @after_actions ||= []
    # end
  end

  def process(action)
    # self.class.before_actions.each { |method| send method }
    # super
    # self.class.after_actions.each { |method| send method }
    run_callbacks :process do
      super
    end
  end
end
