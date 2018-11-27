<% if $Pages %>
    <nav role="navigation">
        <p class="sr-only" id="breadcrumbs-label"><%t SiteTree.BREADCRUMBSLABEL "You are here" %></p>
        <ol class="breadcrumb" aria-labelledby="breadcrumbs-label">
            <li class="breadcrumb-item">
                <a href="$BaseHref">
                    <%t SiteTree.DEFAULTHOMETITLE "Home" %>
                </a>
            </li>
            <% loop $Pages %>
                <% if $Last %>
                    <li class="breadcrumb-item active">$MenuTitle.XML</li>
                <% else %>
                    <li class="breadcrumb-item"><a href="$Link">$MenuTitle.XML</a></li>
                <% end_if %>
            <% end_loop %>
        </ol>
    </nav>
<% end_if %>
