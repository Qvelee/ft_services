<?php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_database' );

/** MySQL database username */
define( 'DB_USER', 'wordpress_user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wordpress_password' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

define('AUTH_KEY',         'TPrG*wzOe$F:v/E+t@*R|+_1P2kS?.M@3a+Se(,psk#uK+U,+>HD IG(Dil.l-Gd');
define('SECURE_AUTH_KEY',  'rtF]4`HeTj* T8u)a9/+r;+sC3B)W.[@1dz7_vTn7s+3bY}at@!xQQhkwGY_k2Ci');
define('LOGGED_IN_KEY',    '}&o-ueHr!x/=b<wQ;R#Nzze)?T4#rU]BU.SS2H_06|I/[EdW%L55y}Rbd*YIa2e{');
define('NONCE_KEY',        '^X2W]voh0kxs[m(Sf+pl|xyWsk=R)Z+7[f1O|:x_2e>ivkgsYU@&DgdM92Y_R,4w');
define('AUTH_SALT',        'aZv!0|FOl~C)g`}7rnH#540>c{<~<&>-14|lz{Z%SdWZV}E&%D$/v[VY$n/,wG=n');
define('SECURE_AUTH_SALT', '+e0~4bK#MZ_[g&5oS]9L %e)!}= o~eHCgnp,J)|W,TI(TQDfXRF!3A-|+e04:y.');
define('LOGGED_IN_SALT',   '%`]3N7}V(+)t$c#q!h9bl=T-j~OALtH$yohc<+4~1m>mR!o8]Z)r/0%TT@fsXZ8V');
define('NONCE_SALT',       'cIP(8bW8vi$P#d<*^dqm&|2Kfojt O=L]0yuu0d>stnAcF?!] y>S>X[J|nMGc[N');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
