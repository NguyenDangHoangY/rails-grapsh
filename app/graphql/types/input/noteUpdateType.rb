module Types
    module Input
      class NoteUpdateType < Types::BaseInputObject
        argument :id, ID, required: true
        argument :title, String, required: true
        argument :body, String, required: true
      end
    end
  end