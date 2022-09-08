<?php
/* Smarty version 4.1.0, created on 2022-09-02 22:40:54
  from 'C:\OpenServer\domains\belarus\setup\templates\footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.1.0',
  'unifunc' => 'content_63125c46b87346_49359035',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '13ae785b99d4149739f6c78d47392cca6591ea6e' => 
    array (
      0 => 'C:\\OpenServer\\domains\\belarus\\setup\\templates\\footer.tpl',
      1 => 1651130384,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_63125c46b87346_49359035 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\OpenServer\\domains\\belarus\\core\\vendor\\smarty\\smarty\\libs\\plugins\\modifier.replace.php','function'=>'smarty_modifier_replace',),));
?>
            </div>
        </div>
    </div>

    <!-- start footer -->
    <footer>
        <div class="wrapper">
            <div class="copyrite">
                <p><?php ob_start();
echo date('Y');
$_prefixVariable1 = ob_get_clean();
echo smarty_modifier_replace($_smarty_tpl->tpl_vars['_lang']->value['modx_footer1'],'[[+current_year]]',$_prefixVariable1);?>
</p>
            </div>
            <div class="copyrite_info">
                <p><?php echo $_smarty_tpl->tpl_vars['_lang']->value['modx_footer2'];?>
</p>
            </div>
        </div>
    </footer>
    <!-- end footer -->
</body>

</html>
<?php }
}
