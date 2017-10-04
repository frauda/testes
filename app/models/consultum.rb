class Consultum < ActiveRecord::Base
  belongs_to :pessoa
  belongs_to :convenio
  belongs_to :atendente
end
