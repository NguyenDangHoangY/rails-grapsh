5.times do |i|
    Note.create(title: "Note #{i + 1}", body: 'Lorem ipsum saves lives')
  end

Comment.create(
  [
    {
      content: "you must do this first",
      note_id: 1
    },
    {
      content: "you shouldn't do this",
      note_id: 1
    },
    {
      content: "just tell me when you need more info",
      note_id: 2
    },
    {
      content: "do it now",
      note_id: 2
    },
    {
      content: "you must do this last",
      note_id: 3
    },
    {
      content: "I think you can not",
      note_id: 3
    },
    {
      content: "laughing my ass off",
      note_id: 4
    },

  ]
)