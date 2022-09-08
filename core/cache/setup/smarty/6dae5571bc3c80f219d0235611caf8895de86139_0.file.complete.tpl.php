<?php
/* Smarty version 4.1.0, created on 2022-09-02 22:41:12
  from 'C:\OpenServer\domains\belarus\setup\templates\complete.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.1.0',
  'unifunc' => 'content_63125c583f4994_33065806',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6dae5571bc3c80f219d0235611caf8895de86139' => 
    array (
      0 => 'C:\\OpenServer\\domains\\belarus\\setup\\templates\\complete.tpl',
      1 => 1651130384,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63125c583f4994_33065806 (Smarty_Internal_Template $_smarty_tpl) {
?><form id="install" action="?action=complete" method="post">
    <div class="setup_body">
        <h2><?php echo $_smarty_tpl->tpl_vars['_lang']->value['thank_installing'];
echo $_smarty_tpl->tpl_vars['app_name']->value;?>
.</h2>

        <?php if ($_smarty_tpl->tpl_vars['errors']->value) {?>
            <div class="note">
                <h3><?php echo $_smarty_tpl->tpl_vars['_lang']->value['cleanup_errors_title'];?>
</h3>

                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['errors']->value, 'error');
$_smarty_tpl->tpl_vars['error']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['error']->value) {
$_smarty_tpl->tpl_vars['error']->do_else = false;
?>
                    <p><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</p><hr />
                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
            </div>
            <br />
        <?php }?>

        <p><?php echo $_smarty_tpl->tpl_vars['_lang']->value['please_select_login'];?>
</p>

        <p class="cleanup">
            <input type="checkbox" value="1" id="cleanup" name="cleanup" <?php if ($_smarty_tpl->tpl_vars['cleanup']->value) {?>checked="checked"<?php }?> />

            <label for="cleanup">
                <span class="cleanup_text"><?php echo $_smarty_tpl->tpl_vars['_lang']->value['delete_setup_dir'];?>
</span>
            </label>
        </p>
    </div>

    <div class="setup_navbar complete">
        <input type="submit" id="modx-next" class="button" name="proceed" value="<?php echo $_smarty_tpl->tpl_vars['_lang']->value['login'];?>
" autofocus="autofocus" />
    </div>
</form>
<?php }
}
