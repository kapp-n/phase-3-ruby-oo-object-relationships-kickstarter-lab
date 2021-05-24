class Backer 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       array = ProjectBacker.all.select{|projects| projects.backer == self}
        array.collect{|item| item.project}
    end


end