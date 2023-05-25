-- phpMyAdmin SQL Dump

-- version 5.2.0

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Tempo de geração: 21-Mar-2023 às 20:10

-- Versão do servidor: 10.4.25-MariaDB

-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Banco de dados: `laravel`

--

-- --------------------------------------------------------

--

-- Estrutura da tabela `categorias_vagas`

--

CREATE TABLE
    `categorias_vagas` (
        `id` int(10) UNSIGNED NOT NULL,
        `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `categorias_vagas`

--

INSERT INTO
    `categorias_vagas` (
        `id`,
        `nome`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'TI',
        '2023-03-06 18:49:18',
        '2023-03-06 18:49:18'
    ), (
        2,
        'Administrativo',
        '2023-03-06 18:49:33',
        '2023-03-06 18:49:33'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `categories`

--

CREATE TABLE
    `categories` (
        `id` int(10) UNSIGNED NOT NULL,
        `parent_id` int(10) UNSIGNED DEFAULT NULL,
        `order` int(11) NOT NULL DEFAULT 1,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `categories`

--

INSERT INTO
    `categories` (
        `id`,
        `parent_id`,
        `order`,
        `name`,
        `slug`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        NULL,
        1,
        'Category 1',
        'category-1',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        2,
        NULL,
        1,
        'Category 2',
        'category-2',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `cidades`

--

CREATE TABLE
    `cidades` (
        `id` int(10) UNSIGNED NOT NULL,
        `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `cep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `cidades`

--

INSERT INTO
    `cidades` (
        `id`,
        `nome`,
        `cep`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'Jardim',
        '79240-000',
        '2023-03-06 18:43:23',
        '2023-03-06 18:43:23'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `data_rows`

--

CREATE TABLE
    `data_rows` (
        `id` int(10) UNSIGNED NOT NULL,
        `data_type_id` int(10) UNSIGNED NOT NULL,
        `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `required` tinyint(1) NOT NULL DEFAULT 0,
        `browse` tinyint(1) NOT NULL DEFAULT 1,
        `read` tinyint(1) NOT NULL DEFAULT 1,
        `edit` tinyint(1) NOT NULL DEFAULT 1,
        `add` tinyint(1) NOT NULL DEFAULT 1,
        `delete` tinyint(1) NOT NULL DEFAULT 1,
        `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `order` int(11) NOT NULL DEFAULT 1
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `data_rows`

--

INSERT INTO
    `data_rows` (
        `id`,
        `data_type_id`,
        `field`,
        `type`,
        `display_name`,
        `required`,
        `browse`,
        `read`,
        `edit`,
        `add`,
        `delete`,
        `details`,
        `order`
    )
VALUES (
        1,
        1,
        'id',
        'number',
        'ID',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        1
    ), (
        2,
        1,
        'name',
        'text',
        'Name',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        2
    ), (
        3,
        1,
        'email',
        'text',
        'Email',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        3
    ), (
        4,
        1,
        'password',
        'password',
        'Password',
        1,
        0,
        0,
        1,
        1,
        0,
        NULL,
        4
    ), (
        5,
        1,
        'remember_token',
        'text',
        'Remember Token',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        5
    ), (
        6,
        1,
        'created_at',
        'timestamp',
        'Created At',
        0,
        1,
        1,
        0,
        0,
        0,
        NULL,
        6
    ), (
        7,
        1,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        7
    ), (
        8,
        1,
        'avatar',
        'image',
        'Avatar',
        0,
        1,
        1,
        1,
        1,
        1,
        NULL,
        8
    ), (
        9,
        1,
        'user_belongsto_role_relationship',
        'relationship',
        'Role',
        0,
        1,
        1,
        1,
        1,
        0,
        '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',
        10
    ), (
        10,
        1,
        'user_belongstomany_role_relationship',
        'relationship',
        'Roles',
        0,
        1,
        1,
        1,
        1,
        0,
        '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',
        11
    ), (
        11,
        1,
        'settings',
        'hidden',
        'Settings',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        12
    ), (
        12,
        2,
        'id',
        'number',
        'ID',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        1
    ), (
        13,
        2,
        'name',
        'text',
        'Name',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        2
    ), (
        14,
        2,
        'created_at',
        'timestamp',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        3
    ), (
        15,
        2,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        4
    ), (
        16,
        3,
        'id',
        'number',
        'ID',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        1
    ), (
        17,
        3,
        'name',
        'text',
        'Name',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        2
    ), (
        18,
        3,
        'created_at',
        'timestamp',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        3
    ), (
        19,
        3,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        4
    ), (
        20,
        3,
        'display_name',
        'text',
        'Display Name',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        5
    ), (
        21,
        1,
        'role_id',
        'text',
        'Role',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        9
    ), (
        22,
        4,
        'id',
        'number',
        'ID',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        1
    ), (
        23,
        4,
        'parent_id',
        'select_dropdown',
        'Parent',
        0,
        0,
        1,
        1,
        1,
        1,
        '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',
        2
    ), (
        24,
        4,
        'order',
        'text',
        'Order',
        1,
        1,
        1,
        1,
        1,
        1,
        '{\"default\":1}',
        3
    ), (
        25,
        4,
        'name',
        'text',
        'Name',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        4
    ), (
        26,
        4,
        'slug',
        'text',
        'Slug',
        1,
        1,
        1,
        1,
        1,
        1,
        '{\"slugify\":{\"origin\":\"name\"}}',
        5
    ), (
        27,
        4,
        'created_at',
        'timestamp',
        'Created At',
        0,
        0,
        1,
        0,
        0,
        0,
        NULL,
        6
    ), (
        28,
        4,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        7
    ), (
        29,
        5,
        'id',
        'number',
        'ID',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        1
    ), (
        30,
        5,
        'author_id',
        'text',
        'Author',
        1,
        0,
        1,
        1,
        0,
        1,
        NULL,
        2
    ), (
        31,
        5,
        'category_id',
        'text',
        'Category',
        1,
        0,
        1,
        1,
        1,
        0,
        NULL,
        3
    ), (
        32,
        5,
        'title',
        'text',
        'Title',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        4
    ), (
        33,
        5,
        'excerpt',
        'text_area',
        'Excerpt',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        5
    ), (
        34,
        5,
        'body',
        'rich_text_box',
        'Body',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        6
    ), (
        35,
        5,
        'image',
        'image',
        'Post Image',
        0,
        1,
        1,
        1,
        1,
        1,
        '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',
        7
    ), (
        36,
        5,
        'slug',
        'text',
        'Slug',
        1,
        0,
        1,
        1,
        1,
        1,
        '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',
        8
    ), (
        37,
        5,
        'meta_description',
        'text_area',
        'Meta Description',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        9
    ), (
        38,
        5,
        'meta_keywords',
        'text_area',
        'Meta Keywords',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        10
    ), (
        39,
        5,
        'status',
        'select_dropdown',
        'Status',
        1,
        1,
        1,
        1,
        1,
        1,
        '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',
        11
    ), (
        40,
        5,
        'created_at',
        'timestamp',
        'Created At',
        0,
        1,
        1,
        0,
        0,
        0,
        NULL,
        12
    ), (
        41,
        5,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        NULL,
        13
    ), (
        42,
        5,
        'seo_title',
        'text',
        'SEO Title',
        0,
        1,
        1,
        1,
        1,
        1,
        NULL,
        14
    ), (
        43,
        5,
        'featured',
        'checkbox',
        'Featured',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        15
    ), (
        44,
        6,
        'id',
        'number',
        'ID',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        1
    ), (
        45,
        6,
        'author_id',
        'text',
        'Author',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        2
    ), (
        46,
        6,
        'title',
        'text',
        'Title',
        1,
        1,
        1,
        1,
        1,
        1,
        NULL,
        3
    ), (
        47,
        6,
        'excerpt',
        'text_area',
        'Excerpt',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        4
    ), (
        48,
        6,
        'body',
        'rich_text_box',
        'Body',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        5
    ), (
        49,
        6,
        'slug',
        'text',
        'Slug',
        1,
        0,
        1,
        1,
        1,
        1,
        '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',
        6
    ), (
        50,
        6,
        'meta_description',
        'text',
        'Meta Description',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        7
    ), (
        51,
        6,
        'meta_keywords',
        'text',
        'Meta Keywords',
        1,
        0,
        1,
        1,
        1,
        1,
        NULL,
        8
    ), (
        52,
        6,
        'status',
        'select_dropdown',
        'Status',
        1,
        1,
        1,
        1,
        1,
        1,
        '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',
        9
    ), (
        53,
        6,
        'created_at',
        'timestamp',
        'Created At',
        1,
        1,
        1,
        0,
        0,
        0,
        NULL,
        10
    ), (
        54,
        6,
        'updated_at',
        'timestamp',
        'Updated At',
        1,
        0,
        0,
        0,
        0,
        0,
        NULL,
        11
    ), (
        55,
        6,
        'image',
        'image',
        'Page Image',
        0,
        1,
        1,
        1,
        1,
        1,
        NULL,
        12
    ), (
        56,
        10,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        57,
        10,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        58,
        10,
        'created_at',
        'timestamp',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        3
    ), (
        59,
        10,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        60,
        10,
        'cnpj',
        'text',
        'Cnpj',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        5
    ), (
        61,
        10,
        'email',
        'text',
        'Email',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        6
    ), (
        62,
        10,
        'telefone',
        'text',
        'Telefone',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        7
    ), (
        63,
        10,
        'endereco_id',
        'text',
        'Endereco Id',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        8
    ), (
        78,
        14,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        79,
        14,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        80,
        14,
        'ramo',
        'text',
        'Ramo',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        3
    ), (
        81,
        14,
        'descricao',
        'text_area',
        'Descricao',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        4
    ), (
        82,
        14,
        'salario',
        'text',
        'Salario',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        5
    ), (
        83,
        14,
        'tipo_de_emprego',
        'text',
        'Tipo De Emprego',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        6
    ), (
        84,
        14,
        'setor',
        'text',
        'Setor',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        7
    ), (
        85,
        14,
        'cargo',
        'text',
        'Cargo',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        8
    ), (
        86,
        14,
        'experiencia',
        'text_area',
        'Experiencia',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        9
    ), (
        87,
        14,
        'formacao_academica',
        'text',
        'Formacao Academica',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        10
    ), (
        88,
        14,
        'beneficios',
        'text_area',
        'Beneficios',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        11
    ), (
        89,
        14,
        'image',
        'image',
        'Image',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        12
    ), (
        90,
        14,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        13
    ), (
        91,
        14,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        14
    ), (
        92,
        17,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        93,
        17,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        94,
        17,
        'cep',
        'text',
        'Cep',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        3
    ), (
        95,
        17,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        96,
        17,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        5
    ), (
        97,
        18,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        98,
        18,
        'rua',
        'text',
        'Rua',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        99,
        18,
        'numero',
        'text',
        'Numero',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        3
    ), (
        100,
        18,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        101,
        18,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        5
    ), (
        102,
        19,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        103,
        19,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        104,
        19,
        'sigla',
        'text',
        'Sigla',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        3
    ), (
        105,
        19,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        106,
        19,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        5
    ), (
        107,
        21,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        108,
        21,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        109,
        21,
        'created_at',
        'timestamp',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        3
    ), (
        110,
        21,
        'updated_at',
        'timestamp',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        111,
        14,
        'vaga_belongsto_categorias_vaga_relationship',
        'relationship',
        'categorias_vagas',
        0,
        1,
        1,
        1,
        1,
        1,
        '{\"model\":\"App\\\\Models\\\\CategoriasVaga\",\"table\":\"categorias_vagas\",\"type\":\"belongsTo\",\"column\":\"id_categoria_vagas\",\"key\":\"id\",\"label\":\"nome\",\"pivot_table\":\"categorias_vagas\",\"pivot\":\"0\",\"taggable\":\"0\"}',
        15
    ), (
        112,
        14,
        'id_categoria_vagas',
        'text',
        'Id Categoria Vagas',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        15
    ), (
        113,
        10,
        'cpf',
        'text',
        'Cpf',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        9
    ), (
        114,
        22,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        115,
        22,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        116,
        22,
        'created_at',
        'text',
        'Created At',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        3
    ), (
        117,
        22,
        'updated_at',
        'text',
        'Updated At',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        4
    ), (
        118,
        27,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        119,
        27,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        120,
        27,
        'created_at',
        'text',
        'Created At',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        3
    ), (
        121,
        27,
        'updated_at',
        'text',
        'Updated At',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        4
    ), (
        122,
        29,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        123,
        29,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        124,
        29,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        3
    ), (
        125,
        29,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        126,
        30,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        127,
        30,
        'nome',
        'text',
        'Nome',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        128,
        30,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        3
    ), (
        129,
        30,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    ), (
        130,
        31,
        'id',
        'text',
        'Id',
        1,
        0,
        0,
        0,
        0,
        0,
        '{}',
        1
    ), (
        131,
        31,
        'link',
        'text',
        'Link',
        0,
        1,
        1,
        1,
        1,
        1,
        '{}',
        2
    ), (
        132,
        31,
        'created_at',
        'text',
        'Created At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        3
    ), (
        133,
        31,
        'updated_at',
        'text',
        'Updated At',
        0,
        0,
        0,
        0,
        0,
        0,
        '{}',
        4
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `data_types`

--

CREATE TABLE
    `data_types` (
        `id` int(10) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
        `server_side` tinyint(4) NOT NULL DEFAULT 0,
        `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `data_types`

--

INSERT INTO
    `data_types` (
        `id`,
        `name`,
        `slug`,
        `display_name_singular`,
        `display_name_plural`,
        `icon`,
        `model_name`,
        `policy_name`,
        `controller`,
        `description`,
        `generate_permissions`,
        `server_side`,
        `details`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'users',
        'users',
        'User',
        'Users',
        'voyager-person',
        'TCG\\Voyager\\Models\\User',
        'TCG\\Voyager\\Policies\\UserPolicy',
        'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',
        '',
        1,
        0,
        NULL,
        '2023-03-05 01:12:45',
        '2023-03-05 01:12:45'
    ), (
        2,
        'menus',
        'menus',
        'Menu',
        'Menus',
        'voyager-list',
        'TCG\\Voyager\\Models\\Menu',
        NULL,
        '',
        '',
        1,
        0,
        NULL,
        '2023-03-05 01:12:45',
        '2023-03-05 01:12:45'
    ), (
        3,
        'roles',
        'roles',
        'Role',
        'Roles',
        'voyager-lock',
        'TCG\\Voyager\\Models\\Role',
        NULL,
        'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',
        '',
        1,
        0,
        NULL,
        '2023-03-05 01:12:45',
        '2023-03-05 01:12:45'
    ), (
        4,
        'categories',
        'categories',
        'Category',
        'Categories',
        'voyager-categories',
        'TCG\\Voyager\\Models\\Category',
        NULL,
        '',
        '',
        1,
        0,
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        5,
        'posts',
        'posts',
        'Post',
        'Posts',
        'voyager-news',
        'TCG\\Voyager\\Models\\Post',
        'TCG\\Voyager\\Policies\\PostPolicy',
        '',
        '',
        1,
        0,
        NULL,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        6,
        'pages',
        'pages',
        'Page',
        'Pages',
        'voyager-file-text',
        'TCG\\Voyager\\Models\\Page',
        NULL,
        '',
        '',
        1,
        0,
        NULL,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        10,
        'empresas',
        'empresas',
        'Empresa',
        'Empresas',
        'voyager-company',
        'App\\Models\\Empresa',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}',
        '2023-03-05 02:23:55',
        '2023-03-21 22:21:16'
    ), (
        14,
        'vagas',
        'vagas',
        'Vaga',
        'Vagas',
        'voyager-edit',
        'App\\Models\\Vaga',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}',
        '2023-03-06 22:35:22',
        '2023-03-06 22:57:27'
    ), (
        15,
        'redessociais',
        'redessociais',
        'Redesocial',
        'Redessociais',
        'voyager-chat',
        'App\\Models\\Redessociai',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27'
    ), (
        17,
        'cidades',
        'cidades',
        'Cidade',
        'Cidades',
        'voyager-milestone',
        'App\\Models\\Cidade',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42'
    ), (
        18,
        'enderecos',
        'enderecos',
        'Endereco',
        'Enderecos',
        'voyager-location',
        'App\\Models\\Endereco',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47'
    ), (
        19,
        'estados',
        'estados',
        'Estado',
        'Estados',
        'voyager-world',
        'App\\Models\\Estado',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31'
    ), (
        21,
        'categorias_vagas',
        'categorias-vagas',
        'Categoria_Vaga',
        'Categorias Vagas',
        'voyager-window-list',
        'App\\Models\\CategoriasVaga',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19'
    ), (
        22,
        'ramos',
        'ramos',
        'Ramo',
        'Ramos',
        'voyager-shop',
        'App\\Models\\Ramo',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06'
    ), (
        27,
        'formacoes_academicas',
        'formacoes-academicas',
        'Formacoes Academica',
        'Formacoes Academicas',
        'voyager-study',
        'App\\Models\\FormacoesAcademica',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16'
    ), (
        29,
        'tipos_empregos',
        'tipos-empregos',
        'Tipos Emprego',
        'Tipos Empregos',
        'voyager-wallet',
        'App\\Models\\TiposEmprego',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52'
    ), (
        30,
        'setores_empregos',
        'setores-empregos',
        'Setores Emprego',
        'Setores Empregos',
        'voyager-bar-chart',
        'App\\Models\\SetoresEmprego',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12'
    ), (
        31,
        'links_externos',
        'links-externos',
        'Links Externo',
        'Links Externos',
        'voyager-external',
        'App\\Models\\LinksExterno',
        NULL,
        NULL,
        NULL,
        1,
        0,
        '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}',
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `empresas`

--

CREATE TABLE
    `empresas` (
        `id` int(10) UNSIGNED NOT NULL,
        `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL,
        `cnpj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `telefone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `endereco_id` int(11) DEFAULT NULL,
        `cpf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `empresas`

--

INSERT INTO
    `empresas` (
        `id`,
        `nome`,
        `created_at`,
        `updated_at`,
        `cnpj`,
        `email`,
        `telefone`,
        `endereco_id`,
        `cpf`
    )
VALUES (
        1,
        'Baby Lasnnches',
        '2023-03-04 22:24:39',
        '2023-03-06 18:42:03',
        '98.859.112/0001-05',
        'babylanches@gmail.com',
        '(67) 3251-1742',
        NULL,
        NULL
    ), (
        2,
        'Juradir Auto Peças',
        '2023-03-21 18:14:28',
        '2023-03-21 18:14:28',
        NULL,
        'jurapeças@gmail.com',
        NULL,
        NULL,
        NULL
    ), (
        3,
        'Leve Max SuperAtacado',
        '2023-03-21 18:20:05',
        '2023-03-21 18:20:05',
        NULL,
        'levemax@gmail.com',
        NULL,
        NULL,
        NULL
    ), (
        4,
        'João Marcelo Lanches',
        '2023-03-21 18:45:25',
        '2023-03-21 18:45:25',
        NULL,
        'joaozin@gmail.com',
        NULL,
        NULL,
        NULL
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `enderecos`

--

CREATE TABLE
    `enderecos` (
        `id` int(10) UNSIGNED NOT NULL,
        `rua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `numero` int(11) DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `enderecos`

--

INSERT INTO
    `enderecos` (
        `id`,
        `rua`,
        `numero`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'Av. Duque de Caxias',
        82,
        '2023-03-06 18:42:21',
        '2023-03-06 18:42:21'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `estados`

--

CREATE TABLE
    `estados` (
        `id` int(10) UNSIGNED NOT NULL,
        `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `sigla` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `estados`

--

INSERT INTO
    `estados` (
        `id`,
        `nome`,
        `sigla`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'Mato Grosso do Sul',
        'MS',
        '2023-03-06 18:44:08',
        '2023-03-06 18:44:08'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `failed_jobs`

--

CREATE TABLE
    `failed_jobs` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
        `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Estrutura da tabela `menus`

--

CREATE TABLE
    `menus` (
        `id` int(10) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `menus`

--

INSERT INTO
    `menus` (
        `id`,
        `name`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'admin',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `menu_items`

--

CREATE TABLE
    `menu_items` (
        `id` int(10) UNSIGNED NOT NULL,
        `menu_id` int(10) UNSIGNED DEFAULT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
        `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `parent_id` int(11) DEFAULT NULL,
        `order` int(11) NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL,
        `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `menu_items`

--

INSERT INTO
    `menu_items` (
        `id`,
        `menu_id`,
        `title`,
        `url`,
        `target`,
        `icon_class`,
        `color`,
        `parent_id`,
        `order`,
        `created_at`,
        `updated_at`,
        `route`,
        `parameters`
    )
VALUES (
        1,
        1,
        'Dashboard',
        '',
        '_self',
        'voyager-boat',
        NULL,
        NULL,
        1,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.dashboard',
        NULL
    ), (
        2,
        1,
        'Media',
        '',
        '_self',
        'voyager-images',
        NULL,
        NULL,
        5,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.media.index',
        NULL
    ), (
        3,
        1,
        'Users',
        '',
        '_self',
        'voyager-person',
        NULL,
        NULL,
        3,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.users.index',
        NULL
    ), (
        4,
        1,
        'Roles',
        '',
        '_self',
        'voyager-lock',
        NULL,
        NULL,
        2,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.roles.index',
        NULL
    ), (
        5,
        1,
        'Tools',
        '',
        '_self',
        'voyager-tools',
        NULL,
        NULL,
        9,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        NULL,
        NULL
    ), (
        6,
        1,
        'Menu Builder',
        '',
        '_self',
        'voyager-list',
        NULL,
        5,
        10,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.menus.index',
        NULL
    ), (
        7,
        1,
        'Database',
        '',
        '_self',
        'voyager-data',
        NULL,
        5,
        11,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.database.index',
        NULL
    ), (
        8,
        1,
        'Compass',
        '',
        '_self',
        'voyager-compass',
        NULL,
        5,
        12,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.compass.index',
        NULL
    ), (
        9,
        1,
        'BREAD',
        '',
        '_self',
        'voyager-bread',
        NULL,
        5,
        13,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.bread.index',
        NULL
    ), (
        10,
        1,
        'Settings',
        '',
        '_self',
        'voyager-settings',
        NULL,
        NULL,
        14,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.settings.index',
        NULL
    ), (
        11,
        1,
        'Categories',
        '',
        '_self',
        'voyager-categories',
        NULL,
        NULL,
        8,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46',
        'voyager.categories.index',
        NULL
    ), (
        12,
        1,
        'Posts',
        '',
        '_self',
        'voyager-news',
        NULL,
        NULL,
        6,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47',
        'voyager.posts.index',
        NULL
    ), (
        13,
        1,
        'Pages',
        '',
        '_self',
        'voyager-file-text',
        NULL,
        NULL,
        7,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47',
        'voyager.pages.index',
        NULL
    ), (
        14,
        1,
        'Empresas',
        '',
        '_self',
        'voyager-company',
        NULL,
        NULL,
        15,
        '2023-03-05 02:23:55',
        '2023-03-05 02:23:55',
        'voyager.empresas.index',
        NULL
    ), (
        16,
        1,
        'Vagas',
        '',
        '_self',
        'voyager-edit',
        NULL,
        NULL,
        16,
        '2023-03-06 22:35:22',
        '2023-03-06 22:35:22',
        'voyager.vagas.index',
        NULL
    ), (
        17,
        1,
        'Redessociais',
        '',
        '_self',
        'voyager-chat',
        NULL,
        NULL,
        17,
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27',
        'voyager.redessociais.index',
        NULL
    ), (
        19,
        1,
        'Cidades',
        '',
        '_self',
        'voyager-milestone',
        NULL,
        NULL,
        19,
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42',
        'voyager.cidades.index',
        NULL
    ), (
        20,
        1,
        'Enderecos',
        '',
        '_self',
        'voyager-location',
        NULL,
        NULL,
        20,
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47',
        'voyager.enderecos.index',
        NULL
    ), (
        21,
        1,
        'Estados',
        '',
        '_self',
        'voyager-world',
        NULL,
        NULL,
        21,
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31',
        'voyager.estados.index',
        NULL
    ), (
        22,
        1,
        'Categorias Vagas',
        '',
        '_self',
        'voyager-window-list',
        NULL,
        NULL,
        22,
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19',
        'voyager.categorias-vagas.index',
        NULL
    ), (
        23,
        1,
        'Ramos',
        '',
        '_self',
        'voyager-shop',
        NULL,
        NULL,
        23,
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06',
        'voyager.ramos.index',
        NULL
    ), (
        27,
        1,
        'Formacoes Academicas',
        '',
        '_self',
        'voyager-study',
        NULL,
        NULL,
        24,
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16',
        'voyager.formacoes-academicas.index',
        NULL
    ), (
        29,
        1,
        'Tipos Empregos',
        '',
        '_self',
        'voyager-wallet',
        NULL,
        NULL,
        25,
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52',
        'voyager.tipos-empregos.index',
        NULL
    ), (
        30,
        1,
        'Setores Empregos',
        '',
        '_self',
        'voyager-bar-chart',
        NULL,
        NULL,
        26,
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12',
        'voyager.setores-empregos.index',
        NULL
    ), (
        31,
        1,
        'Links Externos',
        '',
        '_self',
        'voyager-external',
        NULL,
        NULL,
        27,
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59',
        'voyager.links-externos.index',
        NULL
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `migrations`

--

CREATE TABLE
    `migrations` (
        `id` int(10) UNSIGNED NOT NULL,
        `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `batch` int(11) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `migrations`

--

INSERT INTO
    `migrations` (`id`, `migration`, `batch`)
VALUES (
        1,
        '2014_10_12_000000_create_users_table',
        1
    ), (
        2,
        '2014_10_12_100000_create_password_resets_table',
        1
    ), (
        3,
        '2019_08_19_000000_create_failed_jobs_table',
        1
    ), (
        4,
        '2019_12_14_000001_create_personal_access_tokens_table',
        1
    ), (
        5,
        '2016_01_01_000000_add_voyager_user_fields',
        2
    ), (
        6,
        '2016_01_01_000000_create_data_types_table',
        2
    ), (
        7,
        '2016_05_19_173453_create_menu_table',
        2
    ), (
        8,
        '2016_10_21_190000_create_roles_table',
        2
    ), (
        9,
        '2016_10_21_190000_create_settings_table',
        2
    ), (
        10,
        '2016_11_30_135954_create_permission_table',
        2
    ), (
        11,
        '2016_11_30_141208_create_permission_role_table',
        2
    ), (
        12,
        '2016_12_26_201236_data_types__add__server_side',
        2
    ), (
        13,
        '2017_01_13_000000_add_route_to_menu_items_table',
        2
    ), (
        14,
        '2017_01_14_005015_create_translations_table',
        2
    ), (
        15,
        '2017_01_15_000000_make_table_name_nullable_in_permissions_table',
        2
    ), (
        16,
        '2017_03_06_000000_add_controller_to_data_types_table',
        2
    ), (
        17,
        '2017_04_21_000000_add_order_to_data_rows_table',
        2
    ), (
        18,
        '2017_07_05_210000_add_policyname_to_data_types_table',
        2
    ), (
        19,
        '2017_08_05_000000_add_group_to_settings_table',
        2
    ), (
        20,
        '2017_11_26_013050_add_user_role_relationship',
        2
    ), (
        21,
        '2017_11_26_015000_create_user_roles_table',
        2
    ), (
        22,
        '2018_03_11_000000_add_user_settings',
        2
    ), (
        23,
        '2018_03_14_000000_add_details_to_data_types_table',
        2
    ), (
        24,
        '2018_03_16_000000_make_settings_value_nullable',
        2
    ), (
        25,
        '2016_01_01_000000_create_pages_table',
        3
    ), (
        26,
        '2016_01_01_000000_create_posts_table',
        3
    ), (
        27,
        '2016_02_15_204651_create_categories_table',
        3
    ), (
        28,
        '2017_04_11_000000_alter_post_nullable_fields_table',
        3
    ), (
        29,
        '2014_10_12_200000_add_two_factor_columns_to_users_table',
        4
    ), (
        30,
        '2023_03_16_181422_create_students_table',
        5
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `pages`

--

CREATE TABLE
    `pages` (
        `id` int(10) UNSIGNED NOT NULL,
        `author_id` int(11) NOT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `status` enum('ACTIVE', 'INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `pages`

--

INSERT INTO
    `pages` (
        `id`,
        `author_id`,
        `title`,
        `excerpt`,
        `body`,
        `image`,
        `slug`,
        `meta_description`,
        `meta_keywords`,
        `status`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        0,
        'Hello World',
        'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.',
        '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>',
        'pages/page1.jpg',
        'hello-world',
        'Yar Meta Description',
        'Keyword1, Keyword2',
        'ACTIVE',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `password_resets`

--

CREATE TABLE
    `password_resets` (
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Estrutura da tabela `permissions`

--

CREATE TABLE
    `permissions` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `permissions`

--

INSERT INTO
    `permissions` (
        `id`,
        `key`,
        `table_name`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'browse_admin',
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        2,
        'browse_bread',
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        3,
        'browse_database',
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        4,
        'browse_media',
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        5,
        'browse_compass',
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        6,
        'browse_menus',
        'menus',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        7,
        'read_menus',
        'menus',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        8,
        'edit_menus',
        'menus',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        9,
        'add_menus',
        'menus',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        10,
        'delete_menus',
        'menus',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        11,
        'browse_roles',
        'roles',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        12,
        'read_roles',
        'roles',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        13,
        'edit_roles',
        'roles',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        14,
        'add_roles',
        'roles',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        15,
        'delete_roles',
        'roles',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        16,
        'browse_users',
        'users',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        17,
        'read_users',
        'users',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        18,
        'edit_users',
        'users',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        19,
        'add_users',
        'users',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        20,
        'delete_users',
        'users',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        21,
        'browse_settings',
        'settings',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        22,
        'read_settings',
        'settings',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        23,
        'edit_settings',
        'settings',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        24,
        'add_settings',
        'settings',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        25,
        'delete_settings',
        'settings',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        26,
        'browse_categories',
        'categories',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        27,
        'read_categories',
        'categories',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        28,
        'edit_categories',
        'categories',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        29,
        'add_categories',
        'categories',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        30,
        'delete_categories',
        'categories',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        31,
        'browse_posts',
        'posts',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        32,
        'read_posts',
        'posts',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        33,
        'edit_posts',
        'posts',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        34,
        'add_posts',
        'posts',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        35,
        'delete_posts',
        'posts',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        36,
        'browse_pages',
        'pages',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        37,
        'read_pages',
        'pages',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        38,
        'edit_pages',
        'pages',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        39,
        'add_pages',
        'pages',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        40,
        'delete_pages',
        'pages',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        41,
        'browse_empresas',
        'empresas',
        '2023-03-05 02:23:55',
        '2023-03-05 02:23:55'
    ), (
        42,
        'read_empresas',
        'empresas',
        '2023-03-05 02:23:55',
        '2023-03-05 02:23:55'
    ), (
        43,
        'edit_empresas',
        'empresas',
        '2023-03-05 02:23:55',
        '2023-03-05 02:23:55'
    ), (
        44,
        'add_empresas',
        'empresas',
        '2023-03-05 02:23:55',
        '2023-03-05 02:23:55'
    ), (
        45,
        'delete_empresas',
        'empresas',
        '2023-03-05 02:23:55',
        '2023-03-05 02:23:55'
    ), (
        51,
        'browse_vagas',
        'vagas',
        '2023-03-06 22:35:22',
        '2023-03-06 22:35:22'
    ), (
        52,
        'read_vagas',
        'vagas',
        '2023-03-06 22:35:22',
        '2023-03-06 22:35:22'
    ), (
        53,
        'edit_vagas',
        'vagas',
        '2023-03-06 22:35:22',
        '2023-03-06 22:35:22'
    ), (
        54,
        'add_vagas',
        'vagas',
        '2023-03-06 22:35:22',
        '2023-03-06 22:35:22'
    ), (
        55,
        'delete_vagas',
        'vagas',
        '2023-03-06 22:35:22',
        '2023-03-06 22:35:22'
    ), (
        56,
        'browse_redessociais',
        'redessociais',
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27'
    ), (
        57,
        'read_redessociais',
        'redessociais',
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27'
    ), (
        58,
        'edit_redessociais',
        'redessociais',
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27'
    ), (
        59,
        'add_redessociais',
        'redessociais',
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27'
    ), (
        60,
        'delete_redessociais',
        'redessociais',
        '2023-03-06 22:36:27',
        '2023-03-06 22:36:27'
    ), (
        66,
        'browse_cidades',
        'cidades',
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42'
    ), (
        67,
        'read_cidades',
        'cidades',
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42'
    ), (
        68,
        'edit_cidades',
        'cidades',
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42'
    ), (
        69,
        'add_cidades',
        'cidades',
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42'
    ), (
        70,
        'delete_cidades',
        'cidades',
        '2023-03-06 22:37:42',
        '2023-03-06 22:37:42'
    ), (
        71,
        'browse_enderecos',
        'enderecos',
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47'
    ), (
        72,
        'read_enderecos',
        'enderecos',
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47'
    ), (
        73,
        'edit_enderecos',
        'enderecos',
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47'
    ), (
        74,
        'add_enderecos',
        'enderecos',
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47'
    ), (
        75,
        'delete_enderecos',
        'enderecos',
        '2023-03-06 22:38:47',
        '2023-03-06 22:38:47'
    ), (
        76,
        'browse_estados',
        'estados',
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31'
    ), (
        77,
        'read_estados',
        'estados',
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31'
    ), (
        78,
        'edit_estados',
        'estados',
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31'
    ), (
        79,
        'add_estados',
        'estados',
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31'
    ), (
        80,
        'delete_estados',
        'estados',
        '2023-03-06 22:39:31',
        '2023-03-06 22:39:31'
    ), (
        81,
        'browse_categorias_vagas',
        'categorias_vagas',
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19'
    ), (
        82,
        'read_categorias_vagas',
        'categorias_vagas',
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19'
    ), (
        83,
        'edit_categorias_vagas',
        'categorias_vagas',
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19'
    ), (
        84,
        'add_categorias_vagas',
        'categorias_vagas',
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19'
    ), (
        85,
        'delete_categorias_vagas',
        'categorias_vagas',
        '2023-03-06 22:48:19',
        '2023-03-06 22:48:19'
    ), (
        86,
        'browse_ramos',
        'ramos',
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06'
    ), (
        87,
        'read_ramos',
        'ramos',
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06'
    ), (
        88,
        'edit_ramos',
        'ramos',
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06'
    ), (
        89,
        'add_ramos',
        'ramos',
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06'
    ), (
        90,
        'delete_ramos',
        'ramos',
        '2023-03-21 22:45:06',
        '2023-03-21 22:45:06'
    ), (
        106,
        'browse_formacoes_academicas',
        'formacoes_academicas',
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16'
    ), (
        107,
        'read_formacoes_academicas',
        'formacoes_academicas',
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16'
    ), (
        108,
        'edit_formacoes_academicas',
        'formacoes_academicas',
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16'
    ), (
        109,
        'add_formacoes_academicas',
        'formacoes_academicas',
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16'
    ), (
        110,
        'delete_formacoes_academicas',
        'formacoes_academicas',
        '2023-03-21 23:00:16',
        '2023-03-21 23:00:16'
    ), (
        116,
        'browse_tipos_empregos',
        'tipos_empregos',
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52'
    ), (
        117,
        'read_tipos_empregos',
        'tipos_empregos',
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52'
    ), (
        118,
        'edit_tipos_empregos',
        'tipos_empregos',
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52'
    ), (
        119,
        'add_tipos_empregos',
        'tipos_empregos',
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52'
    ), (
        120,
        'delete_tipos_empregos',
        'tipos_empregos',
        '2023-03-21 23:06:52',
        '2023-03-21 23:06:52'
    ), (
        121,
        'browse_setores_empregos',
        'setores_empregos',
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12'
    ), (
        122,
        'read_setores_empregos',
        'setores_empregos',
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12'
    ), (
        123,
        'edit_setores_empregos',
        'setores_empregos',
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12'
    ), (
        124,
        'add_setores_empregos',
        'setores_empregos',
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12'
    ), (
        125,
        'delete_setores_empregos',
        'setores_empregos',
        '2023-03-21 23:08:12',
        '2023-03-21 23:08:12'
    ), (
        126,
        'browse_links_externos',
        'links_externos',
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59'
    ), (
        127,
        'read_links_externos',
        'links_externos',
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59'
    ), (
        128,
        'edit_links_externos',
        'links_externos',
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59'
    ), (
        129,
        'add_links_externos',
        'links_externos',
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59'
    ), (
        130,
        'delete_links_externos',
        'links_externos',
        '2023-03-21 23:09:59',
        '2023-03-21 23:09:59'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `permission_role`

--

CREATE TABLE
    `permission_role` (
        `permission_id` bigint(20) UNSIGNED NOT NULL,
        `role_id` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `permission_role`

--

INSERT INTO
    `permission_role` (`permission_id`, `role_id`)
VALUES (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1), (21, 1), (22, 1), (23, 1), (24, 1), (25, 1), (26, 1), (27, 1), (28, 1), (29, 1), (30, 1), (31, 1), (32, 1), (33, 1), (34, 1), (35, 1), (36, 1), (37, 1), (38, 1), (39, 1), (40, 1), (41, 1), (42, 1), (43, 1), (44, 1), (45, 1), (51, 1), (52, 1), (53, 1), (54, 1), (55, 1), (56, 1), (57, 1), (58, 1), (59, 1), (60, 1), (66, 1), (67, 1), (68, 1), (69, 1), (70, 1), (71, 1), (72, 1), (73, 1), (74, 1), (75, 1), (76, 1), (77, 1), (78, 1), (79, 1), (80, 1), (81, 1), (82, 1), (83, 1), (84, 1), (85, 1), (86, 1), (87, 1), (88, 1), (89, 1), (90, 1), (106, 1), (107, 1), (108, 1), (109, 1), (110, 1), (116, 1), (117, 1), (118, 1), (119, 1), (120, 1), (121, 1), (122, 1), (123, 1), (124, 1), (125, 1), (126, 1), (127, 1), (128, 1), (129, 1), (130, 1);

-- --------------------------------------------------------

--

-- Estrutura da tabela `personal_access_tokens`

--

CREATE TABLE
    `personal_access_tokens` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `tokenable_id` bigint(20) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
        `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `last_used_at` timestamp NULL DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Estrutura da tabela `posts`

--

CREATE TABLE
    `posts` (
        `id` int(10) UNSIGNED NOT NULL,
        `author_id` int(11) NOT NULL,
        `category_id` int(11) DEFAULT NULL,
        `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `status` enum(
            'PUBLISHED',
            'DRAFT',
            'PENDING'
        ) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
        `featured` tinyint(1) NOT NULL DEFAULT 0,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `posts`

--

INSERT INTO
    `posts` (
        `id`,
        `author_id`,
        `category_id`,
        `title`,
        `seo_title`,
        `excerpt`,
        `body`,
        `image`,
        `slug`,
        `meta_description`,
        `meta_keywords`,
        `status`,
        `featured`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        0,
        NULL,
        'Lorem Ipsum Post',
        NULL,
        'This is the excerpt for the Lorem Ipsum Post',
        '<p>This is the body of the lorem ipsum post</p>',
        'posts/post1.jpg',
        'lorem-ipsum-post',
        'This is the meta description',
        'keyword1, keyword2, keyword3',
        'PUBLISHED',
        0,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        2,
        0,
        NULL,
        'My Sample Post',
        NULL,
        'This is the excerpt for the sample Post',
        '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>',
        'posts/post2.jpg',
        'my-sample-post',
        'Meta Description for sample post',
        'keyword1, keyword2, keyword3',
        'PUBLISHED',
        0,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        3,
        0,
        NULL,
        'Latest Post',
        NULL,
        'This is the excerpt for the latest post',
        '<p>This is the body for the latest post</p>',
        'posts/post3.jpg',
        'latest-post',
        'This is the meta description',
        'keyword1, keyword2, keyword3',
        'PUBLISHED',
        0,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        4,
        0,
        NULL,
        'Yarr Post',
        NULL,
        'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.',
        '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>',
        'posts/post4.jpg',
        'yarr-post',
        'this be a meta descript',
        'keyword1, keyword2, keyword3',
        'PUBLISHED',
        0,
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `redessociais`

--

CREATE TABLE
    `redessociais` (
        `id` int(10) UNSIGNED NOT NULL,
        `nome` int(11) DEFAULT NULL,
        `link` int(11) DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Estrutura da tabela `roles`

--

CREATE TABLE
    `roles` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `roles`

--

INSERT INTO
    `roles` (
        `id`,
        `name`,
        `display_name`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'admin',
        'Administrator',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        2,
        'user',
        'Normal User',
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `settings`

--

CREATE TABLE
    `settings` (
        `id` int(10) UNSIGNED NOT NULL,
        `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `order` int(11) NOT NULL DEFAULT 1,
        `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `settings`

--

INSERT INTO
    `settings` (
        `id`,
        `key`,
        `display_name`,
        `value`,
        `details`,
        `type`,
        `order`,
        `group`
    )
VALUES (
        1,
        'site.title',
        'Site Title',
        'Site Title',
        '',
        'text',
        1,
        'Site'
    ), (
        2,
        'site.description',
        'Site Description',
        'Site Description',
        '',
        'text',
        2,
        'Site'
    ), (
        3,
        'site.logo',
        'Site Logo',
        '',
        '',
        'image',
        3,
        'Site'
    ), (
        4,
        'site.google_analytics_tracking_id',
        'Google Analytics Tracking ID',
        '',
        '',
        'text',
        4,
        'Site'
    ), (
        5,
        'admin.bg_image',
        'Admin Background Image',
        '',
        '',
        'image',
        5,
        'Admin'
    ), (
        6,
        'admin.title',
        'Admin Title',
        'Voyager',
        '',
        'text',
        1,
        'Admin'
    ), (
        7,
        'admin.description',
        'Admin Description',
        'Welcome to Voyager. The Missing Admin for Laravel',
        '',
        'text',
        2,
        'Admin'
    ), (
        8,
        'admin.loader',
        'Admin Loader',
        '',
        '',
        'image',
        3,
        'Admin'
    ), (
        9,
        'admin.icon_image',
        'Admin Icon Image',
        '',
        '',
        'image',
        4,
        'Admin'
    ), (
        10,
        'admin.google_analytics_client_id',
        'Google Analytics Client ID (used for admin dashboard)',
        '',
        '',
        'text',
        1,
        'Admin'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `students`

--

CREATE TABLE
    `students` (
        `id` int(10) UNSIGNED NOT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Estrutura da tabela `translations`

--

CREATE TABLE
    `translations` (
        `id` int(10) UNSIGNED NOT NULL,
        `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `foreign_key` int(10) UNSIGNED NOT NULL,
        `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `translations`

--

INSERT INTO
    `translations` (
        `id`,
        `table_name`,
        `column_name`,
        `foreign_key`,
        `locale`,
        `value`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        'data_types',
        'display_name_singular',
        5,
        'pt',
        'Post',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        2,
        'data_types',
        'display_name_singular',
        6,
        'pt',
        'Página',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        3,
        'data_types',
        'display_name_singular',
        1,
        'pt',
        'Utilizador',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        4,
        'data_types',
        'display_name_singular',
        4,
        'pt',
        'Categoria',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        5,
        'data_types',
        'display_name_singular',
        2,
        'pt',
        'Menu',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        6,
        'data_types',
        'display_name_singular',
        3,
        'pt',
        'Função',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        7,
        'data_types',
        'display_name_plural',
        5,
        'pt',
        'Posts',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        8,
        'data_types',
        'display_name_plural',
        6,
        'pt',
        'Páginas',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        9,
        'data_types',
        'display_name_plural',
        1,
        'pt',
        'Utilizadores',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        10,
        'data_types',
        'display_name_plural',
        4,
        'pt',
        'Categorias',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        11,
        'data_types',
        'display_name_plural',
        2,
        'pt',
        'Menus',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        12,
        'data_types',
        'display_name_plural',
        3,
        'pt',
        'Funções',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        13,
        'categories',
        'slug',
        1,
        'pt',
        'categoria-1',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        14,
        'categories',
        'name',
        1,
        'pt',
        'Categoria 1',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        15,
        'categories',
        'slug',
        2,
        'pt',
        'categoria-2',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        16,
        'categories',
        'name',
        2,
        'pt',
        'Categoria 2',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        17,
        'pages',
        'title',
        1,
        'pt',
        'Olá Mundo',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        18,
        'pages',
        'slug',
        1,
        'pt',
        'ola-mundo',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        19,
        'pages',
        'body',
        1,
        'pt',
        '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        20,
        'menu_items',
        'title',
        1,
        'pt',
        'Painel de Controle',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        21,
        'menu_items',
        'title',
        2,
        'pt',
        'Media',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        22,
        'menu_items',
        'title',
        12,
        'pt',
        'Publicações',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        23,
        'menu_items',
        'title',
        3,
        'pt',
        'Utilizadores',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        24,
        'menu_items',
        'title',
        11,
        'pt',
        'Categorias',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        25,
        'menu_items',
        'title',
        13,
        'pt',
        'Páginas',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        26,
        'menu_items',
        'title',
        4,
        'pt',
        'Funções',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        27,
        'menu_items',
        'title',
        5,
        'pt',
        'Ferramentas',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        28,
        'menu_items',
        'title',
        6,
        'pt',
        'Menus',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        29,
        'menu_items',
        'title',
        7,
        'pt',
        'Base de dados',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    ), (
        30,
        'menu_items',
        'title',
        10,
        'pt',
        'Configurações',
        '2023-03-05 01:12:47',
        '2023-03-05 01:12:47'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `users`

--

CREATE TABLE
    `users` (
        `id` bigint(20) UNSIGNED NOT NULL,
        `role_id` bigint(20) UNSIGNED DEFAULT NULL,
        `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
        `email_verified_at` timestamp NULL DEFAULT NULL,
        `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
        `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
        `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` timestamp NULL DEFAULT NULL,
        `updated_at` timestamp NULL DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `users`

--

INSERT INTO
    `users` (
        `id`,
        `role_id`,
        `name`,
        `email`,
        `avatar`,
        `email_verified_at`,
        `password`,
        `two_factor_secret`,
        `two_factor_recovery_codes`,
        `two_factor_confirmed_at`,
        `remember_token`,
        `settings`,
        `created_at`,
        `updated_at`
    )
VALUES (
        1,
        1,
        'Admin',
        'admin@admin.com',
        'users/default.png',
        NULL,
        '$2y$10$zURKF5ShlGJPBlFnth63Au/WKzDIl8IsWzbnDMihHI2a1Y4tKgj4m',
        NULL,
        NULL,
        NULL,
        'PWCGNrlbmCgvWBgCSjWhmH4A83zilYOfHUmYFdwhapfiyLJ7pEHDudTOXaHq',
        NULL,
        '2023-03-05 01:12:46',
        '2023-03-05 01:12:46'
    ), (
        2,
        1,
        'João Andrade',
        'joaopaulogomes04@hotmail.com',
        'users/default.png',
        NULL,
        '$2y$10$AI5v1HCjY4ASs.0o256WuuqCaTJvCAs8WPTtvpSRJBLAHoD9RvGem',
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        '2023-03-05 01:13:13',
        '2023-03-05 01:13:13'
    );

-- --------------------------------------------------------

--

-- Estrutura da tabela `user_roles`

--

CREATE TABLE
    `user_roles` (
        `user_id` bigint(20) UNSIGNED NOT NULL,
        `role_id` bigint(20) UNSIGNED NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

-- --------------------------------------------------------

--

-- Estrutura da tabela `vagas`

--

CREATE TABLE
    `vagas` (
        `id` int(10) UNSIGNED NOT NULL,
        `nome` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `ramo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `descricao` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `salario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `tipo_de_emprego` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `setor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `cargo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `experiencia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `formacao_academica` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `beneficios` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
        `created_at` datetime DEFAULT NULL,
        `updated_at` datetime DEFAULT NULL,
        `id_categoria_vagas` int(11) DEFAULT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--

-- Extraindo dados da tabela `vagas`

--

INSERT INTO
    `vagas` (
        `id`,
        `nome`,
        `ramo`,
        `descricao`,
        `salario`,
        `tipo_de_emprego`,
        `setor`,
        `cargo`,
        `experiencia`,
        `formacao_academica`,
        `beneficios`,
        `image`,
        `created_at`,
        `updated_at`,
        `id_categoria_vagas`
    )
VALUES (
        1,
        'Programador Python',
        NULL,
        'Vc vai programar em python confia',
        '8000 mil conto',
        'CLT',
        NULL,
        'Junior',
        'Nenhuma confia otário',
        'Graduação',
        'Muitos confia, um pastel e um caldo de cana',
        'vagas\\March2023\\LbYv0NT8KsujxKSs3R20.jpg',
        '2023-03-06 19:01:54',
        '2023-03-06 19:04:33',
        1
    );

--

-- Índices para tabelas despejadas

--

--

-- Índices para tabela `categorias_vagas`

--

ALTER TABLE `categorias_vagas` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `categories`

--

ALTER TABLE `categories`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `categories_slug_unique` (`slug`),
ADD
    KEY `categories_parent_id_foreign` (`parent_id`);

--

-- Índices para tabela `cidades`

--

ALTER TABLE `cidades` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `data_rows`

--

ALTER TABLE `data_rows`
ADD PRIMARY KEY (`id`),
ADD
    KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--

-- Índices para tabela `data_types`

--

ALTER TABLE `data_types`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `data_types_name_unique` (`name`),
ADD
    UNIQUE KEY `data_types_slug_unique` (`slug`);

--

-- Índices para tabela `empresas`

--

ALTER TABLE `empresas` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `enderecos`

--

ALTER TABLE `enderecos` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `estados`

--

ALTER TABLE `estados` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `failed_jobs`

--

ALTER TABLE `failed_jobs`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--

-- Índices para tabela `menus`

--

ALTER TABLE `menus`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `menus_name_unique` (`name`);

--

-- Índices para tabela `menu_items`

--

ALTER TABLE `menu_items`
ADD PRIMARY KEY (`id`),
ADD
    KEY `menu_items_menu_id_foreign` (`menu_id`);

--

-- Índices para tabela `migrations`

--

ALTER TABLE `migrations` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `pages`

--

ALTER TABLE `pages`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `pages_slug_unique` (`slug`);

--

-- Índices para tabela `password_resets`

--

ALTER TABLE `password_resets`
ADD
    KEY `password_resets_email_index` (`email`);

--

-- Índices para tabela `permissions`

--

ALTER TABLE `permissions`
ADD PRIMARY KEY (`id`),
ADD
    KEY `permissions_key_index` (`key`);

--

-- Índices para tabela `permission_role`

--

ALTER TABLE `permission_role`
ADD
    PRIMARY KEY (`permission_id`, `role_id`),
ADD
    KEY `permission_role_permission_id_index` (`permission_id`),
ADD
    KEY `permission_role_role_id_index` (`role_id`);

--

-- Índices para tabela `personal_access_tokens`

--

ALTER TABLE
    `personal_access_tokens`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
ADD
    KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (
        `tokenable_type`,
        `tokenable_id`
    );

--

-- Índices para tabela `posts`

--

ALTER TABLE `posts`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `posts_slug_unique` (`slug`);

--

-- Índices para tabela `redessociais`

--

ALTER TABLE `redessociais` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `roles`

--

ALTER TABLE `roles`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `roles_name_unique` (`name`);

--

-- Índices para tabela `settings`

--

ALTER TABLE `settings`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `settings_key_unique` (`key`);

--

-- Índices para tabela `students`

--

ALTER TABLE `students` ADD PRIMARY KEY (`id`);

--

-- Índices para tabela `translations`

--

ALTER TABLE `translations`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (
        `table_name`,
        `column_name`,
        `foreign_key`,
        `locale`
    );

--

-- Índices para tabela `users`

--

ALTER TABLE `users`
ADD PRIMARY KEY (`id`),
ADD
    UNIQUE KEY `users_email_unique` (`email`),
ADD
    KEY `users_role_id_foreign` (`role_id`);

--

-- Índices para tabela `user_roles`

--

ALTER TABLE `user_roles`
ADD
    PRIMARY KEY (`user_id`, `role_id`),
ADD
    KEY `user_roles_user_id_index` (`user_id`),
ADD
    KEY `user_roles_role_id_index` (`role_id`);

--

-- Índices para tabela `vagas`

--

ALTER TABLE `vagas` ADD PRIMARY KEY (`id`);

--

-- AUTO_INCREMENT de tabelas despejadas

--

--

-- AUTO_INCREMENT de tabela `categorias_vagas`

--

ALTER TABLE
    `categorias_vagas` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--

-- AUTO_INCREMENT de tabela `categories`

--

ALTER TABLE
    `categories` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--

-- AUTO_INCREMENT de tabela `cidades`

--

ALTER TABLE
    `cidades` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--

-- AUTO_INCREMENT de tabela `data_rows`

--

ALTER TABLE
    `data_rows` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 134;

--

-- AUTO_INCREMENT de tabela `data_types`

--

ALTER TABLE
    `data_types` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 32;

--

-- AUTO_INCREMENT de tabela `empresas`

--

ALTER TABLE
    `empresas` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;

--

-- AUTO_INCREMENT de tabela `enderecos`

--

ALTER TABLE
    `enderecos` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--

-- AUTO_INCREMENT de tabela `estados`

--

ALTER TABLE
    `estados` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--

-- AUTO_INCREMENT de tabela `failed_jobs`

--

ALTER TABLE
    `failed_jobs` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT de tabela `menus`

--

ALTER TABLE
    `menus` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--

-- AUTO_INCREMENT de tabela `menu_items`

--

ALTER TABLE
    `menu_items` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 32;

--

-- AUTO_INCREMENT de tabela `migrations`

--

ALTER TABLE
    `migrations` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 31;

--

-- AUTO_INCREMENT de tabela `pages`

--

ALTER TABLE
    `pages` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--

-- AUTO_INCREMENT de tabela `permissions`

--

ALTER TABLE
    `permissions` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 131;

--

-- AUTO_INCREMENT de tabela `personal_access_tokens`

--

ALTER TABLE
    `personal_access_tokens` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT de tabela `posts`

--

ALTER TABLE
    `posts` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 5;

--

-- AUTO_INCREMENT de tabela `redessociais`

--

ALTER TABLE
    `redessociais` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT de tabela `roles`

--

ALTER TABLE
    `roles` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--

-- AUTO_INCREMENT de tabela `settings`

--

ALTER TABLE
    `settings` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 11;

--

-- AUTO_INCREMENT de tabela `students`

--

ALTER TABLE
    `students` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT de tabela `translations`

--

ALTER TABLE
    `translations` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 31;

--

-- AUTO_INCREMENT de tabela `users`

--

ALTER TABLE
    `users` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

--

-- AUTO_INCREMENT de tabela `vagas`

--

ALTER TABLE
    `vagas` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2;

--

-- Restrições para despejos de tabelas

--

--

-- Limitadores para a tabela `categories`

--

ALTER TABLE `categories`
ADD
    CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE
SET NULL ON UPDATE CASCADE;

--

-- Limitadores para a tabela `data_rows`

--

ALTER TABLE `data_rows`
ADD
    CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--

-- Limitadores para a tabela `menu_items`

--

ALTER TABLE `menu_items`
ADD
    CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--

-- Limitadores para a tabela `permission_role`

--

ALTER TABLE `permission_role`
ADD
    CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
ADD
    CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--

-- Limitadores para a tabela `users`

--

ALTER TABLE `users`
ADD
    CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--

-- Limitadores para a tabela `user_roles`

--

ALTER TABLE `user_roles`
ADD
    CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
ADD
    CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;