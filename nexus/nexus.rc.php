<?php
/**
 * JavaScript and CSS loader for Nexus theme
 *
 * @package Cotonti
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

// Add original CSS files first
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'] . '/css/reset.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'] . '/css/extras.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'] . '/css/nexus.css');
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'] . '/css/modalbox.css');

// Add our responsive improvements 
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'] . '/css/responsive.css');

// Add Google Fonts (optional - remove if causes issues)
Resources::addFile('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');

// Add original JS
Resources::addFile(Cot::$cfg['themes_dir'] . '/' . Cot::$usr['theme'] . '/js/nexus.js');

// jQuery dependency for plugins (güvenli yöntem)
Resources::linkFileFooter('js/jquery.min.js');