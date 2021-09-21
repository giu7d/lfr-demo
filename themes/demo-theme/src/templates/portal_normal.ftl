<!DOCTYPE html>

<#include init />

<#assign
    is_company_admin = false
/>

<#if permissionChecker.isCompanyAdmin()>
	<#assign
		is_company_admin = true
	/>
</#if>

<#if !is_company_admin>
	<#assign
		css_class = css_class?replace("controls-visible", "")
		css_class = css_class?replace("has-control-menu", "")
		css_class = css_class?replace("open", "")
	/>
</#if>

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

	<head>
		<title>${the_title} | ${company_name}</title>
		<meta content="initial-scale=1.0, width=device-width" name="viewport" />
		<@liferay_util["include"] page=top_head_include />
	</head>

	<body class="${css_class}">

		<@liferay_util["include"] page=body_top_include />

		<#if is_company_admin>
			<@liferay.control_menu />
		</#if>

		<div class="container-fluid p-0" id="wrapper">
			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/navigation.ftl" />
			</#if>

			<section id="content">
					<#if selectable>
						<@liferay_util["include"] page=content_include />
					<#else>
						${portletDisplay.recycle()}

						${portletDisplay.setTitle(the_title)}

						<@liferay_theme["wrap-portlet"] page="portlet.ftl">
							<@liferay_util["include"] page=content_include />
						</@>
					</#if>
				</section>

			<#if has_navigation && is_setup_complete>
				<#include "${full_templates_path}/footer.ftl" />
			</#if>
		</div>

		<@liferay_util["include"] page=body_bottom_include />

		<@liferay_util["include"] page=bottom_include />

	</body>
</html>