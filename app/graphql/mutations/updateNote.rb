  module Mutations
    class UpdateNote < Mutations::BaseMutation
        argument :id, ID, required: true
        argument :title, String, required: true
        argument :body, String, required: true

        field :note, Types::NoteType, null: false

        def resolve(id:, **arg)
            note = Note.find(id)
            if note.update(arg)
                {
                    note: note,
                    errors: []
                }
            end
        rescue ActiveRecord::RecordNotFound
            return { user: nil, errors: ['record-not-found']}
        end
    end
end