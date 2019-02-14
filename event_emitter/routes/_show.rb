
def show(emitter)
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    emitter.add("show answers") {|event| View.display_answers()}
end