<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'admin' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         'iMR)VT|2fw@0g)+)G7h[+N|E^6.n=j6JFd&|>y3L/X!8*R|ulf/LAspA1v}J2Cy[' );
define( 'SECURE_AUTH_KEY',  '+Ve(5x|&O2+@0E6<fwna0%?5JXh -4MoSg/p!bgU$@~%f7omovOe4V):J(aYjgD(' );
define( 'LOGGED_IN_KEY',    'Ug+JrQgztNX$dlHo7jl?|Te:s;zWmL*zrGVpjhz8ssnGgAySjJF>TMd>%R1c-dy]' );
define( 'NONCE_KEY',        '1p(KPHJx=3k;U;/x uZL-TB@KjqEguQkh+xOC~szBDngT3J7xE&`#y+HFy5Wa+EX' );
define( 'AUTH_SALT',        '|Ay}%ae4~Y{doWCRwfTVnp-o,:FX~IRpiBF|A+axMuq@Xxx0^dII~E@},k_-+Fv1' );
define( 'SECURE_AUTH_SALT', '@i2Xsw38) PtS72;g,tg?Q9K8l&kUA{fjh+mIH4#YIYada-.]lwrNs&TObp#0_J;' );
define( 'LOGGED_IN_SALT',   '[a6%9~oqTs^[olp}X/0xlQ3+7N1TbC-U*QE-6^/kW.~DF^<.M&0z$4X*q+se2_mQ' );
define( 'NONCE_SALT',       'T~DVN7x53}:`~sl6#nB 1Kh7Zn/Vqf];beL`-xp:(k4X?Mr8a1Zuz6uACeu<UL>B' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );