<div class="main-nav">
    <nav class="navbar navbar-default" aria-label="main navigation">
        <div class="container">
            <div class="row">
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <% loop Menu(1) %>
                            <li class="nav__item $FirstLast $LinkingMode<% if $LinkingMode = current %> active<% end_if %><% if $Children %> dropdown <% end_if %>">

                                <a href="$Link" <% if $LinkingMode = current %>aria-label="current page"<% end_if %> class="$LinkingMode" <% if $Children %><% end_if %>>$MenuTitle.XML</a>

                                <% if $Children %>
                                    <button class="pull-right navbar__touch-caret" role="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown">
                                        <span class="sr-only">Display $MenuTitle.XML submenu pages</span>
                                        <span class="caret"></span>
                                    </button>

                                    <ul class="dropdown-menu" role="menu">
                                        <% loop $Children %>
                                            <li role="presentation" class="dropdown-menu__item <% if $LinkingMode = current %>active <% end_if %>">
                                                <a role="menuitem" href="$Link" <% if $LinkingMode = current %>aria-label="current page" <% end_if %>title="$MenuTitle.XML">$MenuTitle.XML</a>
                                            </li>
                                        <% end_loop %>
                                    </ul>
                                <% end_if %>
                            </li>
                        <% end_loop %>
                    </ul>
                    <form class="navbar-form visible-xs" action="/search">
                        <% include HeaderSearch %>
                    </form>
                </div>
            </div>
        </div>
    </nav>
</div>