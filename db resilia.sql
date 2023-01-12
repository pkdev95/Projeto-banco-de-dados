CREATE TABLE `cursos` (
  `id` int PRIMARY KEY,
  `tipo` varchar(70),
  `duracao` varchar(20)
);

CREATE TABLE `areas_de_formacao` (
  `id` int PRIMARY KEY,
  `tecnologia` varchar(60),
  `administrativo` varchar(60),
  `curso_id` int
);

CREATE TABLE `professores` (
  `id` int PRIMARY KEY,
  `nome` varchar(70),
  `especializacao` varchar(60),
  `areas_de_formacao_id` int(60)
);

CREATE TABLE `turmas` (
  `id` int PRIMARY KEY,
  `turno` varchar(70),
  `inicio` date(15),
  `professores_id` int
);

CREATE TABLE `alunos` (
  `id` int PRIMARY KEY,
  `nome` varchar(100),
  `idade` int(20),
  `turmas_id` int
);

ALTER TABLE `cursos` ADD FOREIGN KEY (`id`) REFERENCES `areas_de_formacao` (`curso_id`);

ALTER TABLE `areas_de_formacao` ADD FOREIGN KEY (`id`) REFERENCES `professores` (`areas_de_formacao_id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`professores_id`) REFERENCES `professores` (`id`);

ALTER TABLE `turmas` ADD FOREIGN KEY (`id`) REFERENCES `alunos` (`turmas_id`);
