<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{    
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/materialize.min.css',
        'css/material-design-iconic-font.min.css',
        'css/slick.css',
        'css/swipebox.css',
        'css/site.css',
        'css/media.css'
    ];
    public $js = [
        'js/materialize.min.js',
        'js/jquery-ui.min.js',
        'js/imagesloaded.pkgd.min.js',
        'js/jquery-imagefill.js',
        'js/masonry.pkgd.min.js',
        'js/slick.min.js',
        'js/jquery.swipebox.js',
        'js/openbox-img.js',
        'https://maps.googleapis.com/maps/api/js?key=AIzaSyCOwIpjOGQD_gWkJshFfWKWltMuxbIMGtw&libraries=places',
        'js/common.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
    ];
}
