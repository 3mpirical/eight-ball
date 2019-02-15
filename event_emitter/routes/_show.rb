
def show(emitter)
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    emitter.add("show answers") {|event| View.display_answers()}
    emitter.add("show") {|event| View.display_answers()}
    emitter.add("-sh") {|event| View.display_answers()}
    emitter.add("sh") {|event| View.display_answers()}
end