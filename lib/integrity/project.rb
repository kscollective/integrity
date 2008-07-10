require 'dm-validations'

module Integrity
  class Project
    include DataMapper::Resource

    property :id,       Integer,  :serial => true
    property :name,     String,   :nullable => false
    property :uri,      String,   :nullable => false
    property :branch,   String,   :nullable => false, :default => "master"
    property :command,  String,   :nullable => false, :default => "rake"
    property :public,   Boolean,  :default => true
    
    def permalink
      @permalink ||= name.downcase.gsub(/\s+/, '_')
    end
  end
end