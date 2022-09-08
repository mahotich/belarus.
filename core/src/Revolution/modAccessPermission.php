<?php

namespace MODX\Revolution;

use xPDO\Om\xPDOSimpleObject;

/**
 * Restricts or grants access to certain functionality. Grouped by Access
 * Policy Template.
 *
 * @property int     $template    The Access Policy Template this Permission belongs to
 * @property string  $name        The key of this Permission
 * @property string  $description The description informing what this Permission allows
 * @property boolean $value       Whether or not this permission is allowed or denied
 *
 * @package MODX\Revolution
 */
class modAccessPermission extends xPDOSimpleObject
{
}
