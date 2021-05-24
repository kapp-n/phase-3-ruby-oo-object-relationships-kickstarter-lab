class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = ProjectBacker.all.select{|backer| backer.project == self}
        array.collect{|item| item.backer}

    end

end