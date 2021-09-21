<nav class="${nav_css_class}" id="navigation" role="navigation">
    <div class="nav">
        <button class="btn nav-link nav-collapsed ">
            <i class="demo-icon menu"></i>
        </button>
        <div class="btn nav-logo"></div>
        <div class="nav-items nav-expanded">
            <#list nav_items as nav_item>
                <#assign
                    nav_item_css_class = ""
                    nav_item_layout = nav_item.getLayout()
                />
                <#if nav_item.isSelected()>
                    <#assign nav_item_css_class="active" />
                </#if>
                <div class="nav-item ${nav_item_css_class}">
                    <a
                        class="nav-link"
                        data-senna-off="true"
                        href="${nav_item.getURL()}"
                    >
                        ${nav_item.getName()}
                    </a>
                </div>
            </#list>
        </div>
        <div></div>
    </div>
</nav>