<?php
/* Smarty version 4.1.0, created on 2022-09-02 22:41:48
  from 'C:\OpenServer\domains\belarus\manager\templates\default\footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.1.0',
  'unifunc' => 'content_63125c7c3baca0_76073877',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c8e95637b62c0ccdc8ea45c60da8a5bdbdc3dc25' => 
    array (
      0 => 'C:\\OpenServer\\domains\\belarus\\manager\\templates\\default\\footer.tpl',
      1 => 1651130382,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63125c7c3baca0_76073877 (Smarty_Internal_Template $_smarty_tpl) {
?>    </div>
    <!-- #modx-content-->
    <div id="modx-footer">
        <?php if ($_smarty_tpl->tpl_vars['_search']->value) {?>
            <div class="modx-subnav" id="modx-manager-search-icon-submenu">
                <div class="modx-subnav-arrow"></div>
                <div id="modx-manager-search" role="search"></div>
            </div>
        <?php }?>
        <?php $_template = new Smarty_Internal_Template('eval:'.$_smarty_tpl->tpl_vars['navb_submenus']->value, $_smarty_tpl->smarty, $_smarty_tpl);echo $_template->fetch(); ?>
        <?php $_template = new Smarty_Internal_Template('eval:'.$_smarty_tpl->tpl_vars['userNav_submenus']->value, $_smarty_tpl->smarty, $_smarty_tpl);echo $_template->fetch(); ?>
    </div>
</div>
<!-- #modx-container -->

</body>
</html><?php }
}
