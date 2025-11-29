module BootstrapPaginateHelper
  class BootstrapRenderer < WillPaginate::ActionView::LinkRenderer
    def container_attributes
      super.merge(class: "pagination justify-content-center")
    end

    protected

    def page_number(page)
      classes = "page-item"
      classes << " active" if page == current_page

      tag :li, class: classes do
        link(page, page, class: "page-link")
      end
    end

    def previous_or_next_page(page, text, classname)
      classes = "page-item"
      classes << " disabled" unless page

      tag :li, class: classes do
        link(text, page || "#", class: "page-link")
      end
    end

    def gap
      tag :li, class: "page-item disabled" do
        tag :span, "&hellip;".html_safe, class: "page-link"
      end
    end
  end
end
