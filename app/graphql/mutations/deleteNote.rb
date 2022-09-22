module Mutations
    class DeleteNote < Mutations::BaseMutation
        argument :id, ID, required: true
       
        field :errors, [String], null: false

        def resolve(id:)
            note = Note.find(id)
            note.destroy
        rescue ActiveRecord::RecordNotFound
            return { user: nil, errors: ['record-not-found']}
        end
    end
end