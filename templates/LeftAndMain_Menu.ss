<div id='cms-menu' class='cms-menu cms-panel cms-panel-layout west' data-layout-type='border'>
	<div class='cms-logo-header north'>
		<div class='cms-logo'>
			<a href='{$ApplicationLink}' target='_blank' title='{$ApplicationName} (Version - {$CMSVersion})'>{$ApplicationName}<% if $CMSVersion %><abbr class='version'> {$CMSVersion}</abbr><% end_if %></a>
			<span><% if $SiteConfig %>{$SiteConfig.Title}<% else %>{$ApplicationName}<% end_if %></span>
		</div>
		<div class='cms-login-status'>
			<a href='{$LogoutURL}' class='logout-link font-icon-logout' title="<% _t('LeftAndMain_Menu_ss.LOGOUT', 'Log out') %>"></a>
			<% with $CurrentMember %>
				<span>
					<% _t('LeftAndMain_Menu_ss.Hello', 'Hi') %>
					<a href='{$AbsoluteBaseURL}admin/myprofile' class='profile-link'><% if $FirstName && $Surname %>{$FirstName} {$Surname}<% else_if $FirstName %>{$FirstName}<% else %>{$Email}<% end_if %></a>
				</span>
			<% end_with %>
		</div>
	</div>
	<div class='cms-panel-content center'>
		<ul class='cms-menu-list cms-menu-list-descriptive'>
			<% loop $UpdatedMainMenu %>
				<li id='Menu-{$Code}' class='{$LinkingMode} {$FirstLast}'>
					<a href='{$Link}' {$AttributesHTML}>
						<span class='icon icon-16 icon-{$Code.LowerCase}'>&nbsp;</span>
						<span class='text'>{$Title}</span>
						<% if $Description %>
							<div class='descriptive-description'>{$Description}</div>
						<% end_if %>
					</a>
				</li>
			<% end_loop %>
		</ul>
	</div>
	<div class='cms-panel-toggle south'>
		<a href='#' class='toggle-expand'><span>&raquo;</span></a>
		<a href='#' class='toggle-collapse'><span>&laquo;</span></a>
	</div>
</div>
