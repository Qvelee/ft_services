<?php
// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_database' );

/** MySQL database username */
define( 'DB_USER', 'wordpress_user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wordpress_password' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-service' );

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

define('AUTH_KEY',         'uRC)ex<}Me7K?8Wt79~<4Zd l-L.FKo0&y>6Yn-6d^W{!Issj>sF>wD:%HH@L|*o');
define('SECURE_AUTH_KEY',  '?rh8UYMsyLC<>}i9D,YZ;gRSm+yR;3.RFWX|xu$ZFS6 zxYCii1IZVCMSPl~ygn=');
define('LOGGED_IN_KEY',    's9B-*s{2Su:5c^Ui~|M m&,w.ac0dlf+uGU0_%9/YE3k8J}~@LX1=0%JSmzj{Bq1');
define('NONCE_KEY',        'gF+Nu| (<Np}N5[`3aEzJ5Rdm;#&b6|}BHc{+P[l)v-,CXhq+>|8z-qX&wrxz_A;');
define('AUTH_SALT',        '<6tMgD,6q!:z&i3|2OScdX]iNDwAc69;sQU%Z6@@/S1ikZ^%0yRyW9<-`2 )h-yP');
define('SECURE_AUTH_SALT', '/KUCj35yyTqi#@LJ*adK$|HS=|nb]Zwj{g+FwRV?ok?5{1)ZW(W^J55{x5zwrSN_');
define('LOGGED_IN_SALT',   'mnf8)M%m&?2,pe|NfFkCZLuF<aa-#E@7[Fn^i%vJ|]hXI-S^8C{*clyg&c5498%-');
define('NONCE_SALT',       'cxcy]y5%;S}shuC)^Q.%zS^XFY}J:lj+>n3Y9pR,KA$US],mI-SV0~ER>:T11NB=');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
