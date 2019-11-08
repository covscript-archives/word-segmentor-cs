import String
import FinalSegment

constant echo = system.out.println

class Segmentor
    ##### private:
    var finalSegment = FinalSegment.getInstance()

    ##### private:
    function __loadDictionary()
    end

    ##### public:
    function doSegment(sentence)
        var s = String.str(sentence)
        system.out.println(s)
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
