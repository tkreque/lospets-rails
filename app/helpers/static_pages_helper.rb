module StaticPagesHelper
    def getTags
        @tags = Tag.all
    end
end
