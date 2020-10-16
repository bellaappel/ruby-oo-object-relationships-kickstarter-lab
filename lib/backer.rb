class Backer
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def pairs
         ProjectBacker.all.select {|projects| projects.backer == self}
    end

    def backed_projects
        pairs.map {|pair| pair.project}
    end
  
end