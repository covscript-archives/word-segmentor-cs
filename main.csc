import String

class Segmentor
    ##### private:
    function __loadDictionary()

    end

    ##### public:
    function doSegment(sentence)

    end

    ##### public override:
    function initialize()
        __loadDictionary()
    end
end

function main(args)
    var segmentor = new Segmentor

    args.pop_front()
    foreach sentence in args
        segmentor.doSegment(sentence)
    end

    return 0
end

system.exit(main(clone(context.cmd_args())))
