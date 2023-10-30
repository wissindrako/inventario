/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: biye
# ------------------------------------------------------------

DROP TABLE IF EXISTS `biye`;
CREATE TABLE `biye` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: branches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: companies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: payments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sell_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_information` text COLLATE utf8mb4_unicode_ci,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=744 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sell_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sell_details`;
CREATE TABLE `sell_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `sell_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chalan_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sold_quantity` int(11) NOT NULL,
  `buy_price` double NOT NULL,
  `sold_price` double NOT NULL,
  `total_buy_price` double NOT NULL,
  `total_sold_price` double NOT NULL,
  `discount` double NOT NULL,
  `discount_type` tinyint(4) NOT NULL,
  `discount_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sells
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sells`;
CREATE TABLE `sells` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '1',
  `total_amount` double NOT NULL,
  `paid_amount` double NOT NULL DEFAULT '0',
  `sell_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT '0',
  `payment_method` tinyint(4) NOT NULL DEFAULT '0',
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: stocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chalan_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `stock_quantity` int(11) NOT NULL,
  `current_quantity` int(11) NOT NULL DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '1',
  `role_id` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: vendors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vendors`;
CREATE TABLE `vendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: biye
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: branches
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: categories
# ------------------------------------------------------------

INSERT INTO
  `categories` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
  (
    1,
    'Ordenadores',
    1,
    '2023-04-16 03:14:24',
    '2023-04-16 03:14:24'
  );
INSERT INTO
  `categories` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
  (
    2,
    'Monitores',
    1,
    '2023-04-16 03:14:31',
    '2023-04-16 03:14:31'
  );
INSERT INTO
  `categories` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
  (
    3,
    'Periféricos',
    1,
    '2023-04-16 03:14:38',
    '2023-04-16 03:14:38'
  );
INSERT INTO
  `categories` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
  (
    4,
    'Componentes',
    1,
    '2023-04-16 03:14:44',
    '2023-04-16 03:14:44'
  );
INSERT INTO
  `categories` (`id`, `name`, `status`, `created_at`, `updated_at`)
VALUES
  (
    5,
    'Gaming & Streaming',
    1,
    '2023-04-16 03:14:50',
    '2023-04-16 03:14:50'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: companies
# ------------------------------------------------------------

INSERT INTO
  `companies` (
    `id`,
    `name`,
    `phone`,
    `address`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'WhiteBoxLtda',
    '70000000',
    'Calle 10 #123, San Pedro, Código Postal 0000.',
    NULL,
    '2023-10-17 05:35:09'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: customers
# ------------------------------------------------------------

INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'Juan Pérez',
    'juan.perez@gmail.com',
    '77771234',
    'Calle 1, Centro, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    'María Rodríguez',
    'maria.rodriguez@gmail.com',
    '77775678',
    'Calle 2, Obrajes, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    'Pedro García',
    'pedro.garcia@gmail.com',
    '77779876',
    'Calle 3, Villa Aroma, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    4,
    'Ana Hernández',
    'ana.hernandez@gmail.com',
    '5552468',
    'Calle 4, Narvarte, Cochabamba',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 04:36:26'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    5,
    'Jorge Martínez',
    'jorge.martinez@gmail.com',
    '77773691',
    'Calle 5, Santa Fe, El Alto',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    'Laura González',
    'laura.gonzalez@gmail.com',
    '77775555',
    '5to anillo, Santa Cruz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    7,
    'Miguel Álvarez',
    'miguel.alvarez@gmail.com',
    '77777777',
    'Calle 7, Obrajes, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    8,
    'Carmen Flores',
    'carmen.flores@gmail.com',
    '77771212',
    'Calle 8, Alto Irpavi, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    9,
    'José García',
    'jose.garcia@gmail.com',
    '77777777',
    'Calle 9, Colonia Del Valle, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    10,
    'Fernanda González',
    'fernanda.gonzalez@gmail.com',
    '77772345',
    'Calle 10, San Miguel, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    11,
    'Diego Torres',
    'diego.torres@gmail.com',
    '77774567',
    'Calle 11, Santa María la Ribera, Chuquisaca',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    12,
    'Carla Hernández',
    'carla.hernandez@gmail.com',
    '77771111',
    'Calle 12, Tembladerani, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    13,
    'Raúl Díaz',
    'raul.diaz@gmail.com',
    '77772222',
    'Calle 13, Calacoto, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    14,
    'Sofía García',
    'sofia.garcia@gmail.com',
    '77773333',
    'Calle 14, Irpavi, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    15,
    'Héctor Jiménez',
    'hector.jimenez@gmail.com',
    '77774444',
    'Calle 15, Miraflores, La Paz',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );
INSERT INTO
  `customers` (
    `id`,
    `customer_name`,
    `email`,
    `phone`,
    `address`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    16,
    'Diana Martínez',
    'diana.martinez@gmail.com',
    '77775555',
    'Calle 16, Industrial, Oruro',
    1,
    '2023-04-17 02:08:05',
    '2023-04-17 02:08:05'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: menus
# ------------------------------------------------------------

INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    0,
    'Clientes',
    'contacts',
    'customer.index',
    0,
    '2020-07-29 13:17:51',
    '2020-07-29 13:17:56'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    0,
    'Gestión de Productos',
    'category',
    NULL,
    0,
    '2020-07-29 13:17:53',
    '2020-07-29 13:17:54'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    0,
    'Movimientos',
    'assignment',
    NULL,
    0,
    '2020-07-29 13:17:52',
    '2020-07-29 13:17:54'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    4,
    0,
    'Gestión de usuarios',
    'supervised_user_circle',
    NULL,
    0,
    '2020-07-29 13:17:51',
    '2020-07-29 13:17:56'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    5,
    0,
    'Reportes',
    'receipt_long',
    'report.index',
    0,
    '2020-07-29 13:17:52',
    '2020-07-29 13:17:55'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    0,
    'Configuración',
    'settings',
    NULL,
    0,
    '2020-07-29 13:17:58',
    '2020-07-29 13:17:57'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    7,
    2,
    'Categorias',
    NULL,
    'category.index',
    0,
    '2020-07-29 13:17:50',
    '2020-07-29 13:17:57'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    8,
    2,
    'Productos',
    NULL,
    'product.index',
    0,
    '2020-07-29 13:17:49',
    '2020-07-29 13:17:59'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    9,
    2,
    'Proveedores',
    NULL,
    'supplier.index',
    0,
    '2020-07-29 13:17:49',
    '2020-07-29 13:18:00'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    10,
    3,
    'Ingresos',
    NULL,
    'stock.index',
    0,
    '2020-07-29 13:17:48',
    '2020-07-29 13:18:00'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    11,
    3,
    'Salidas / Ventas',
    NULL,
    'invoice.index',
    0,
    '2020-07-29 13:17:47',
    '2020-07-29 13:18:01'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    12,
    4,
    'Gestión de roles',
    NULL,
    'role.index',
    0,
    '2020-07-29 13:17:46',
    '2020-07-29 13:17:46'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    13,
    4,
    'Usuarios',
    NULL,
    'user.index',
    0,
    '2020-07-29 13:17:44',
    '2020-07-29 13:17:44'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    14,
    6,
    'Información de la empresa',
    NULL,
    'company.index',
    0,
    '2020-07-29 13:17:43',
    '2020-07-29 13:17:45'
  );
INSERT INTO
  `menus` (
    `id`,
    `parent_id`,
    `name`,
    `icon`,
    `menu_url`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    15,
    6,
    'Cambiar la contraseña',
    NULL,
    'password.index',
    0,
    '2020-07-29 13:17:42',
    '2020-07-29 13:16:37'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: migrations
# ------------------------------------------------------------

INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (
    2,
    '2014_10_12_100000_create_password_resets_table',
    1
  );
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (3, '2018_12_10_051212_create_products_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (4, '2018_12_10_052440_create_vendors_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (5, '2018_12_10_052501_create_customers_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (6, '2018_12_10_052521_create_stocks_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (7, '2018_12_10_052610_create_sells_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (
    8,
    '2018_12_10_052631_create_sell_details_table',
    1
  );
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (9, '2018_12_10_075236_create_branches_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (10, '2018_12_31_160432_create_categories_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (11, '2019_01_12_163604_create_payments_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (12, '2019_01_19_152250_biye--tabl', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (13, '2019_02_10_113651_create_roles_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (
    14,
    '2019_02_10_114632_create_permissions_table',
    1
  );
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (15, '2019_02_10_114735_create_menus_table', 1);
INSERT INTO
  `migrations` (`id`, `migration`, `batch`)
VALUES
  (16, '2019_02_14_130126_create_companies_table', 1);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: password_resets
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: payments
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: permissions
# ------------------------------------------------------------
INSERT INTO `permissions` (`id`, `role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
    (1, 2, 1, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (2, 2, 9, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (3, 2, 8, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (4, 2, 7, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (5, 2, 2, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (6, 2, 10, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (7, 2, 11, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (8, 2, 3, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (9, 2, 12, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (10, 2, 13, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (11, 2, 4, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (13, 2, 14, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (14, 2, 15, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (15, 2, 6, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (16, 3, 1, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (17, 3, 9, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (18, 3, 8, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (19, 3, 7, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (20, 3, 2, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (21, 3, 10, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (22, 3, 11, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (23, 3, 3, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (24, 3, 12, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (25, 3, 13, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (26, 3, 4, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (28, 3, 14, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (29, 3, 15, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (30, 3, 6, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
 	  (31, 4, 1, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (32, 4, 3, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (33, 4, 10, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (34, 4, 11, '2021-07-05 20:00:38', '2021-07-05 20:00:38'),
    (35, 4, 15, '2021-07-05 20:00:38', '2021-07-05 20:00:38');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: products
# ------------------------------------------------------------

INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    2,
    'Acer Nitro QG240YS',
    '2.8\" LED FULL HD',
    1,
    '2023-10-16 22:09:33',
    '2023-10-16 22:46:40'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    2,
    'Alurin CoreVision 27 FHD',
    '27\" LED IPS FullHD 100Hz',
    1,
    '2023-10-16 22:11:16',
    '2023-10-16 22:46:27'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    2,
    'HP M24fwa',
    '2.8\" LED IPS FullHD 75Hz',
    1,
    '2023-10-16 22:12:31',
    '2023-10-16 22:45:23'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    4,
    2,
    'LG Ultragear',
    '24GQ50F-B 24\" LED FullHD 165Hz',
    1,
    '2023-10-16 22:14:09',
    '2023-10-16 22:44:32'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    5,
    2,
    'Samsung Essential Monitor',
    'LS27C310EAUXEN 27\" LED IPS FullHD 75Hz',
    1,
    '2023-10-16 22:15:43',
    '2023-10-16 22:44:18'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    6,
    1,
    'DELL 10105',
    'Intel Core i3 8GB/500GB SSD',
    1,
    '2023-10-16 22:19:41',
    '2023-10-16 22:45:59'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    7,
    1,
    'Ryzen 5 5600',
    '8GB/1TB SSD',
    1,
    '2023-10-16 22:22:33',
    '2023-10-16 22:44:54'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    8,
    1,
    'DELL Intel 13400',
    'Core i5 8GB/1TB SSD',
    1,
    '2023-10-16 22:49:39',
    '2023-10-16 22:49:39'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    9,
    1,
    'PcCom Ready 13400',
    'Intel Core i5 16GB/500GB SSD/RTX 3060 - Blanco',
    1,
    '2023-10-16 22:51:30',
    '2023-10-16 22:51:30'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    10,
    4,
    'AMD Radeon RX 6650 XT GAMING X',
    '8GB GDDR6',
    1,
    '2023-10-16 22:53:53',
    '2023-10-16 22:53:53'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    11,
    4,
    'Samsung 980 Pro SSD',
    '2TB PCIe 4.0 NVMe M2',
    1,
    '2023-10-16 22:55:32',
    '2023-10-16 22:55:32'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    12,
    3,
    'Teclado Mecánico Tempest Diablo',
    'Gaming RGB Switch Red',
    1,
    '2023-10-16 22:57:16',
    '2023-10-16 22:57:16'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    13,
    3,
    'Mouse Newskill Habrok',
    'Gaming RGB 16000 DPI',
    1,
    '2023-10-16 22:59:33',
    '2023-10-16 22:59:33'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    14,
    3,
    'Mouse Logitech LightSync',
    'Gaming 8000DPI Negro',
    1,
    '2023-10-16 23:00:28',
    '2023-10-16 23:05:32'
  );
INSERT INTO
  `products` (
    `id`,
    `category_id`,
    `product_name`,
    `details`,
    `status`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    15,
    5,
    'Silla Owlotech',
    'Gamer Hergonómica V2',
    1,
    '2023-10-16 23:04:58',
    '2023-10-16 23:04:58'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: roles
# ------------------------------------------------------------

INSERT INTO
  `roles` (`id`, `role_name`, `created_at`, `updated_at`)
VALUES
  (
    2,
    'Superadministrador',
    '2019-02-12 03:59:54',
    '2023-04-17 04:53:28'
  );
INSERT INTO
  `roles` (`id`, `role_name`, `created_at`, `updated_at`)
VALUES
  (
    3,
    'Gerente',
    '2019-02-13 00:07:41',
    '2023-04-17 04:35:56'
  );
INSERT INTO
  `roles` (`id`, `role_name`, `created_at`, `updated_at`)
VALUES
  (
    4,
    'Vendedor',
    '2019-02-13 01:34:11',
    '2023-04-17 04:36:08'
  );
-- INSERT INTO
--   `roles` (`id`, `role_name`, `created_at`, `updated_at`)
-- VALUES
--   (
--     5,
--     'Controlador',
--     '2019-02-13 05:53:15',
--     '2023-04-17 04:41:36'
--   );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sell_details
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sells
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: stocks
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
    `id`,
    `name`,
    `email`,
    `password`,
    `branch_id`,
    `role_id`,
    `remember_token`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'Ariel',
    'ariel@gmail.com',
    '$2y$10$BXFbgRPHobyYMs1ZZ93LeezSAxlAd1QQoW7oc.4WJfdIC1jB2EcIy',
    1,
    2,
    'Y9eAGj2XVD98hkDczgoocHw6e3u5piiKy6hKWL0Y7oqoMNJBZFvMCCCz0Y2v',
    '2023-10-15 23:17:37',
    '2023-10-15 23:33:35'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: vendors
# ------------------------------------------------------------

INSERT INTO
  `vendors` (
    `id`,
    `name`,
    `phone`,
    `email`,
    `address`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    1,
    'HANSA',
    '7234-5678',
    'contacto@hansa.com.bo',
    'Av. 16 de Julio 1647, Lado Col. San José',
    '2023-04-16 21:44:30',
    '2023-04-16 21:44:30'
  );
INSERT INTO
  `vendors` (
    `id`,
    `name`,
    `phone`,
    `email`,
    `address`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    2,
    'BoliviaTech',
    '7765-4321',
    'info@boliviatech.com.bo',
    'Calle Gral. Emiliano Zapata #54',
    '2023-04-16 21:44:30',
    '2023-04-16 21:44:30'
  );
INSERT INTO
  `vendors` (
    `id`,
    `name`,
    `phone`,
    `email`,
    `address`,
    `created_at`,
    `updated_at`
  )
VALUES
  (
    3,
    'BHENEZ',
    '7733-3333',
    'ventas@bhenez.com.bo',
    'Calle 4 No. 1437, Av. 6 de marzo',
    '2023-04-16 21:44:30',
    '2023-04-16 21:44:30'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
