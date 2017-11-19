{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/OSL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/OSL-3.0 Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file="page_header_toolbar.tpl"}


{block name=pageTitle}
<h2 class="page-title">
	{l s='Configure' d='Admin.Actions'}
</h2>
<h4 class="page-subtitle">{$module_display_name}</h4>
{/block}
{block name=pageBreadcrumb}
<ul class="breadcrumb page-breadcrumb">
	{if $breadcrumbs2.container.name != ''}
		<li class="breadcrumb-current">
			{$breadcrumbs2.container.name|escape}
		</li>
	{/if}
	<li>{$module_name}</li>
	<li>
		<i class="icon-wrench"></i>
		{l s='Configure' d='Admin.Actions'}
	</li>
</ul>
{/block}
{block name=toolbarBox}
<script type="text/javascript">
	var header_confirm_reset = '{l s='Confirm reset' d='Admin.Modules.Notification'}';
	var body_confirm_reset = '{l s='Would you like to delete the content related to this module ?' d='Admin.Modules.Notification'}';
	var left_button_confirm_reset = '{l s='No - reset only the parameters' d='Admin.Modules.Notification'}';
	var right_button_confirm_reset = '{l s='Yes - reset everything' d='Admin.Modules.Notification'}';
</script>
<div class="page-bar toolbarBox">
	<div class="btn-toolbar">
		<ul class="nav nav-pills pull-right">
			<li>
				<a id="desc-module-back" class="toolbar_btn" href="{url entity='sf' route='admin_module_manage'}">
					<i class="process-icon-back"></i>
					<div>{l s='Back' d='Admin.Global'}</div>
				</a>
			</li>
			<!-- <li>
				<a id="desc-module-disable" class="toolbar_btn" href="{$module_disable_link}" title="{l s='Disable' d='Admin.Actions'}">
					<i class="process-icon-off"></i>
					<div>{l s='Disable' d='Admin.Actions'}</div>
				</a>
			</li>
			<li>
				<a id="desc-module-uninstall" class="toolbar_btn" href="{$module_uninstall_link}" title="{l s='Uninstall'}">
					<i class="process-icon-uninstall"></i>
					<div>{l s='Uninstall'}</div>
				</a>
			</li>
			<li>
				<a id="desc-module-reset" class="toolbar_btn {if $is_reset_ready}reset_ready{/if}" href="{$module_reset_link}" title="{l s='Reset'}">
					<i class="process-icon-reset"></i>
					<div>{l s='Reset'}</div>
				</a>
			</li> -->
			{if isset($trad_link)}
			<li>
				<a id="desc-module-translate" data-toggle="modal" data-target="#moduleTradLangSelect" class="toolbar_btn" href="#" title="{l s='Translate'}">
					<i class="process-icon-flag"></i>
					<div>{l s='Translate' d='Admin.Actions'}</div>
				</a>
			</li>
			{/if}
			{if isset($module_update_link)}
			<li>
				<a id="desc-module-update" class="toolbar_btn" href="{$module_update_link}" title="{l s='Update'}">
					<i class="process-icon-refresh"></i>
					<div>{l s='Check update' d='Admin.Modules.Feature'}</div>
				</a>
			</li>
			{/if}
			<li>
				<a id="desc-module-hook" class="toolbar_btn" href="{$module_hook_link}" title="{l s='Manage hooks'}">
					<i class="process-icon-anchor"></i>
					<div>{l s='Manage hooks' d='Admin.Modules.Feature'}</div>
				</a>
			</li>
		</ul>
	</div>
</div>


{/block}
