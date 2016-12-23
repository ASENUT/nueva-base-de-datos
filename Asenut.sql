/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     22/12/2016 19:36:43                          */
/*==============================================================*/


drop table if exists ACTIVIDAD;

drop table if exists ACTIVIDAD_FISICA;

drop table if exists ALERGIAS;

drop table if exists ALIMENTOS;

drop table if exists APETITO;

drop table if exists BEBIDAS_ALCOHOLICAS;

drop table if exists CIRUGIAS;

drop table if exists CITA_MEDICA;

drop table if exists COMIDAS;

drop table if exists CONSUME_ALIMENTOS_FUERA_DE_CASA;

drop table if exists CONSUME_TABACO;

drop table if exists COSMETICO;

drop table if exists DATOS_ANTROPOMETRICOS;

drop table if exists DEPORTES;

drop table if exists DESCRIPCION;

drop table if exists DIAGNOSTICO;

drop table if exists EMPLEADO;

drop table if exists ENFERMEDADES;

drop table if exists ESTADO_CIVIL;

drop table if exists EXAMENES;

drop table if exists FICHA_ECONOMICA;

drop table if exists HISTORIA_ALIMENTICIA;

drop table if exists HISTORIA_CLINICA;

drop table if exists HISTORIA_COSMETOLOGICA;

drop table if exists HISTORIA_DIETETICA;

drop table if exists HORARIO;

drop table if exists HORAS;

drop table if exists IMAGEN_PACIENTE;

drop table if exists MEDICAMENTOS;

drop table if exists MEDIDAS_CORPORALES;

drop table if exists MULTA;

drop table if exists NIVEL;

drop table if exists OBTIENE;

drop table if exists OCUPACION;

drop table if exists OTROSPROBLEMAS;

drop table if exists OTROS_PROBLEMAS;

drop table if exists PACIENTE;

drop table if exists PACIENTE_TRATAMIENTO;

drop table if exists PEELING;

drop table if exists POSEE;

drop table if exists PROBLEMAS_GASTROINTESTINALES;

drop table if exists PRODUCTOS;

drop table if exists PROFESION;

drop table if exists RUBRO;

drop table if exists TIPOTRATAMIENTO_FACIAL;

drop table if exists TIPO_DE_PAGO;

drop table if exists TIPO_DE_PIEL;

drop table if exists TIPO_SANGRE;

drop table if exists TIPO_TRATAMIENTO;

drop table if exists TIPO_USUARIO;

drop table if exists USUARIO;

/*==============================================================*/
/* Table: ACTIVIDAD                                             */
/*==============================================================*/
create table ACTIVIDAD
(
   COD_ACT              int not null AUTO_INCREMENT,
   NOM_ACT              char(10),
   primary key (COD_ACT)
);

/*==============================================================*/
/* Table: ACTIVIDAD_FISICA                                      */
/*==============================================================*/
create table ACTIVIDAD_FISICA
(
   COD_ACTIVIDAD        int not null AUTO_INCREMENT,
   COD_NIV              int,
   COD_OCUP             int,
   COD_PROFESION        int,
   COD_DEPORTE          int,
   COD_ACT              int,
   FECHA_TRATA          date,
   CEDULA               char(13),
   COD_TRATAMIENTO      int,
   primary key (COD_ACTIVIDAD)
);

/*==============================================================*/
/* Table: ALERGIAS                                              */
/*==============================================================*/
create table ALERGIAS
(
   COD_ALERGIAS         int not null AUTO_INCREMENT,
   NOMBRE_ALERGIA       varchar(300),
   primary key (COD_ALERGIAS)
);

/*==============================================================*/
/* Table: ALIMENTOS                                             */
/*==============================================================*/
create table ALIMENTOS
(
   COD_ALIMENTOS        int not null AUTO_INCREMENT,
   NOMBRE_ALIMENTO      varchar(30) not null,
   UNIDAD_ALIMENTO      varchar(20) not null,
   MEDIDA_CASERA        float(5) not null,
   MEDIDA_GRAMOS        float(5) not null,
   primary key (COD_ALIMENTOS)
);

/*==============================================================*/
/* Table: APETITO                                               */
/*==============================================================*/
create table APETITO
(
   COD_APETITO          int not null AUTO_INCREMENT,
   DESC_APETITO         varchar(50),
   primary key (COD_APETITO)
);

/*==============================================================*/
/* Table: BEBIDAS_ALCOHOLICAS                                   */
/*==============================================================*/
create table BEBIDAS_ALCOHOLICAS
(
   COD_BEBIDAS          int not null AUTO_INCREMENT,
   DES_CON_BEBIDAS      varchar(50),
   primary key (COD_BEBIDAS)
);

/*==============================================================*/
/* Table: CIRUGIAS                                              */
/*==============================================================*/
create table CIRUGIAS
(
   COD_CIRUGIA          int not null AUTO_INCREMENT,
   NOMBRE_CIRUGIA       char(10),
   primary key (COD_CIRUGIA)
);

/*==============================================================*/
/* Table: CITA_MEDICA                                           */
/*==============================================================*/
create table CITA_MEDICA
(
   COD_CITA             int not null AUTO_INCREMENT,
   CEDULA               char(13),
   COD_HORARIO          int,
   CITA                 varchar(50) not null,
   NUM_SESIONES         int not null,
   TIPO_TRATAMIENTO     varchar(50) not null,
   primary key (COD_CITA)
);

/*==============================================================*/
/* Table: COMIDAS                                               */
/*==============================================================*/
create table COMIDAS
(
   COD_COMIDA           int not null AUTO_INCREMENT,
   HORARIO_COMIDA       varchar(30) not null,
   primary key (COD_COMIDA)
);

/*==============================================================*/
/* Table: CONSUME_ALIMENTOS_FUERA_DE_CASA                       */
/*==============================================================*/
create table CONSUME_ALIMENTOS_FUERA_DE_CASA
(
   COD_CONSU_ALI_FUE_CA int not null AUTO_INCREMENT,
   DES_CON_ALI          varchar(100),
   primary key (COD_CONSU_ALI_FUE_CA)
);

/*==============================================================*/
/* Table: CONSUME_TABACO                                        */
/*==============================================================*/
create table CONSUME_TABACO
(
   COD_CON_TABACO       int not null AUTO_INCREMENT,
   DES_CONS_TABA        varchar(50),
   primary key (COD_CON_TABACO)
);

/*==============================================================*/
/* Table: COSMETICO                                             */
/*==============================================================*/
create table COSMETICO
(
   COD_COSMETICO        int not null AUTO_INCREMENT,
   NOMBRE_COSMETICO     varchar(300),
   primary key (COD_COSMETICO)
);

/*==============================================================*/
/* Table: DATOS_ANTROPOMETRICOS                                 */
/*==============================================================*/
create table DATOS_ANTROPOMETRICOS
(
   COD_ANTROPOMETRICO   int not null AUTO_INCREMENT,
   PESO_ACTUAL          float(5) not null,
   PESO_HABITUAL        float(5) not null,
   PESO_IDEAL           float(5) not null,
   TALLA                float(5) not null,
   CAMBIO_PESO_AUMENTO  float(5),
   CAMBIO_PESO_DISMINUCION float(5),
   PERIMETRO_MUNECA     float(5) not null,
   CONTEXTURA_OSEA      float(5) not null,
   CMB                  float(5) not null,
   IMC                  float(5) not null,
   BICEPS               float(5) not null,
   TRICEPS              float(5) not null,
   SUBESCAPULAR         float(5) not null,
   SPRAILIACO           float(5) not null,
   CINTURA              float(5) not null,
   CADERA               float(5) not null,
   CIN_CADERA           float(5) not null,
   primary key (COD_ANTROPOMETRICO)
);

/*==============================================================*/
/* Table: DEPORTES                                              */
/*==============================================================*/
create table DEPORTES
(
   COD_DEPORTE          int not null AUTO_INCREMENT,
   TIPO_DEPORTE         varchar(25),
   TIEMPO_DEPORTE       time,
   FRECUENCIA           varchar(20),
   primary key (COD_DEPORTE)
);

/*==============================================================*/
/* Table: DESCRIPCION                                           */
/*==============================================================*/
create table DESCRIPCION
(
   COD_DESCRIPCION      int not null AUTO_INCREMENT,
   DESCRIPCION          varchar(400),
   primary key (COD_DESCRIPCION)
);

/*==============================================================*/
/* Table: DIAGNOSTICO                                           */
/*==============================================================*/
create table DIAGNOSTICO
(
   COD_DIAGNOSTICO      int not null AUTO_INCREMENT,
   DESC_DIAGNOSTICO     varchar(400),
   primary key (COD_DIAGNOSTICO)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO
(
   CED_EMPLEADO         char(10) not null,
   NOM_EMPLE            varchar(15) not null,
   APE_EMPLE            varchar(15) not null,
   FECHA_NAC_EMPLE      date not null,
   primary key (CED_EMPLEADO)
);

/*==============================================================*/
/* Table: ENFERMEDADES                                          */
/*==============================================================*/
create table ENFERMEDADES
(
   COD_ENFERMEDAD       int not null AUTO_INCREMENT,
   NOMBRE_ENFERMEDAD    varchar(100),
   DESCRIPCION_ENFERMEDAD varchar(200),
   primary key (COD_ENFERMEDAD)
);

/*==============================================================*/
/* Table: ESTADO_CIVIL                                          */
/*==============================================================*/
create table ESTADO_CIVIL
(
   COD_ESTADO           int not null AUTO_INCREMENT,
   NOM_ESTADO           varchar(20) not null,
   primary key (COD_ESTADO)
);

/*==============================================================*/
/* Table: EXAMENES                                              */
/*==============================================================*/
create table EXAMENES
(
   COD_EXAMEN           int not null AUTO_INCREMENT,
   COD_TIPO_SANGRE      int,
   NOMBRE_EXAMEN        char(10),
   primary key (COD_EXAMEN)
);

/*==============================================================*/
/* Table: FICHA_ECONOMICA                                       */
/*==============================================================*/
create table FICHA_ECONOMICA
(
   COD_FICHA            char(10) not null,
   FECHA_TRATA          date,
   CEDULA               char(13),
   COD_TRATAMIENTO      int,
   COD_TIPO_PAGO        int,
   COSTO_TOTAL          float(5) not null,
   ABONO                float(5),
   SALDO                float(5),
   primary key (COD_FICHA)
);

/*==============================================================*/
/* Table: HISTORIA_ALIMENTICIA                                  */
/*==============================================================*/
create table HISTORIA_ALIMENTICIA
(
   FECHA_HISTORIA_ALIMENTICIA date not null,
   COD_COMIDA           int,
   COD_ALIMENTOS        int,
   COD_HORAS            int,
   primary key (FECHA_HISTORIA_ALIMENTICIA)
);

/*==============================================================*/
/* Table: HISTORIA_CLINICA                                      */
/*==============================================================*/
create table HISTORIA_CLINICA
(
   COD_HISTORIA         int not null AUTO_INCREMENT,
   FECHA_HISTORIA_ALIMENTICIA date,
   FECHA_REALIZACION    date,
   FECHA_TRATA          date,
   CEDULA               char(13),
   COD_TRATAMIENTO      int,
   primary key (COD_HISTORIA)
);

/*==============================================================*/
/* Table: HISTORIA_COSMETOLOGICA                                */
/*==============================================================*/
create table HISTORIA_COSMETOLOGICA
(
   FECHA_REALIZACION    date not null,
   COD_MEDICAMENTO      int,
   COD_CIRUGIA          int,
   COD_ENFERMEDAD       int,
   COD_ALERGIAS         int,
   COD_COSMETICO        int,
   COD_TIPO_PIEL        int,
   COD_IMAGEN_PACIENTE  int,
   COD_PEELING          int,
   COD_OTRO_PROBLEM     int,
   primary key (FECHA_REALIZACION)
);

/*==============================================================*/
/* Table: HISTORIA_DIETETICA                                    */
/*==============================================================*/
create table HISTORIA_DIETETICA
(
   COD_HISTORIA_DIETETICA int not null AUTO_INCREMENT,
   COD_CONSU_ALI_FUE_CA int,
   COD_BEBIDAS          int,
   COD_CON_TABACO       int,
   COD_APETITO          int,
   COD_PROBLEMA         int,
   COD_EXAMEN           int,
   COD_OTRO             int,
   COD_HISTORIA         int,
   FECHA_HISTORIA       date,
   ALIMENTOS_MAYOR_FRECUENCIA varchar(200) not null,
   ALIMENTOS_MAS_AGRADA varchar(200) not null,
   ALIMENTOS_DESAGRADAN varchar(200) not null,
   ALERGIA_ALIMENTARIA  varchar(200) not null,
   PERSONA_PREPARA_SIRVE_ALIMENTACION varchar(200) not null,
   CONSUME_ALIMENTOS_FUERA_CASA varchar(200) not null,
   ACCESO_VORACIDAD     bool not null,
   HORAS_BULIMIA        varchar(30) not null,
   SUFRE_ANSIEDAD_NERVIOSA varchar(100) not null,
   SUFRE_FALTA_APETITO  varchar(100) not null,
   COME_DESHORAS        varchar(100) not null,
   SUPLEMENTOS_VITAMINICOS varchar(100) not null,
   CONSUME_ALIMENTOS_SALADOS varchar(200) not null,
   CONSUME_FRECUENCIA_FRITURAS varchar(200) not null,
   CONSUME_FRECUENCIA_ENLATADOS varchar(200) not null,
   CONSUME_FRECUENCIA_EMBUTIDOS varchar(200) not null,
   CONSUME_FRUTAS       varchar(200) not null,
   CONSUME_ALIMENTOS_CONDIMENTADOS varchar(200) not null,
   CONSUME_GASEOSAS     varchar(200) not null,
   primary key (COD_HISTORIA_DIETETICA)
);

/*==============================================================*/
/* Table: HORARIO                                               */
/*==============================================================*/
create table HORARIO
(
   COD_HORARIO          int not null AUTO_INCREMENT,
   HORARIO              datetime not null,
   primary key (COD_HORARIO)
);

/*==============================================================*/
/* Table: HORAS                                                 */
/*==============================================================*/
create table HORAS
(
   COD_HORAS            int not null AUTO_INCREMENT,
   TIEMPO               varchar(10) not null,
   primary key (COD_HORAS)
);

/*==============================================================*/
/* Table: IMAGEN_PACIENTE                                       */
/*==============================================================*/
create table IMAGEN_PACIENTE
(
   COD_IMAGEN_PACIENTE  int not null AUTO_INCREMENT,
   DIRECCION_URL        varchar(100) not null,
   primary key (COD_IMAGEN_PACIENTE)
);

/*==============================================================*/
/* Table: MEDICAMENTOS                                          */
/*==============================================================*/
create table MEDICAMENTOS
(
   COD_MEDICAMENTO      int not null AUTO_INCREMENT,
   NOM_MEDICAMENTO      varchar(100),
   primary key (COD_MEDICAMENTO)
);

/*==============================================================*/
/* Table: MEDIDAS_CORPORALES                                    */
/*==============================================================*/
create table MEDIDAS_CORPORALES
(
   FECHA_MEDICION       date not null,
   FECHA_TRATA          date,
   CEDULA               char(13),
   COD_TRATAMIENTO      int,
   BUSTO                float(5) not null,
   ESTOMAGO             float(5) not null,
   CINTURA              float(5) not null,
   ABDOMEN              float(5) not null,
   CADERAS              float(5) not null,
   MUSLO_IZ             float(5) not null,
   MUSLO_DER            float(5) not null,
   ENTREPIERNA_IZ       float(5) not null,
   ENTREPIERNA_DER      float(5) not null,
   BRAZO_IZ             float(5) not null,
   BRAZO_DER            float(5) not null,
   primary key (FECHA_MEDICION)
);

/*==============================================================*/
/* Table: MULTA                                                 */
/*==============================================================*/
create table MULTA
(
   COD_MULTA            int not null AUTO_INCREMENT,
   COD_RUBRO            int, 
   CED_EMPLEADO         char(10),
   MULTA                varchar(50),
   primary key (COD_MULTA)
);

/*==============================================================*/
/* Table: NIVEL                                                 */
/*==============================================================*/
create table NIVEL
(
   COD_NIV              int not null AUTO_INCREMENT,
   NOMB_NIV             char(10),
   primary key (COD_NIV)
);

/*==============================================================*/
/* Table: OBTIENE                                               */
/*==============================================================*/
create table OBTIENE
(
   COD_HISTORIA         int not null,
   COD_DIAGNOSTICO      int not null,
   COD_DESCRIPCION      int not null,
   FECHA                date,
   primary key (COD_HISTORIA, COD_DIAGNOSTICO, COD_DESCRIPCION)
);

/*==============================================================*/
/* Table: OCUPACION                                             */
/*==============================================================*/
create table OCUPACION
(
   COD_OCUP             int not null AUTO_INCREMENT,
   NOM_OCUP             varchar(20),
   primary key (COD_OCUP)
);

/*==============================================================*/
/* Table: OTROSPROBLEMAS                                        */
/*==============================================================*/
create table OTROSPROBLEMAS
(
   COD_OTRO_PROBLEM     int not null AUTO_INCREMENT,
   DESC_PROBLEM         varchar(300),
   primary key (COD_OTRO_PROBLEM)
);

/*==============================================================*/
/* Table: OTROS_PROBLEMAS                                       */
/*==============================================================*/
create table OTROS_PROBLEMAS
(
   COD_OTRO             int not null AUTO_INCREMENT,
   NOMBRE_OTRO_PROBLEMA varchar(300),
   primary key (COD_OTRO)
);

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE
(
   CEDULA               char(13) not null,
   COD_ESTADO           int,
   NOM_PAC              varchar(15) not null,
   APE_PAC              varchar(15) not null,
   TELF_CONVEN          char(9),
   TELF_MOVIL           char(10),
   FECH_NACI            date not null,
   CORREO_PACI          varchar(20),
   FACEBOOK             varchar(30),
   GEN_PACI             char(10) not null,
   NUM_HIJOS            int,
   primary key (CEDULA)
);

/*==============================================================*/
/* Table: PACIENTE_TRATAMIENTO                                  */
/*==============================================================*/
create table PACIENTE_TRATAMIENTO
(
   FECHA_TRATA          date not null,
   CEDULA               char(13) not null,
   COD_TRATAMIENTO      int not null,
   CED_EMPLEADO         char(10),
   COD_PRODUCTO         int,
   primary key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO)
);

/*==============================================================*/
/* Table: PEELING                                               */
/*==============================================================*/
create table PEELING
(
   COD_PEELING          int not null AUTO_INCREMENT,
   DES_PEELING          varchar(300),
   primary key (COD_PEELING)
);

/*==============================================================*/
/* Table: POSEE                                                 */
/*==============================================================*/
create table POSEE
(
   FECHA_TRATA          date not null,
   CEDULA               char(13) not null,
   COD_TRATAMIENTO      int not null,
   COD_ANTROPOMETRICO   int not null,
   FECHA                date not null,
   primary key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO, COD_ANTROPOMETRICO)
);

/*==============================================================*/
/* Table: PROBLEMAS_GASTROINTESTINALES                          */
/*==============================================================*/
create table PROBLEMAS_GASTROINTESTINALES
(
   COD_PROBLEMA         int not null AUTO_INCREMENT,
   NOM_PROBLEMA         varchar(100),
   primary key (COD_PROBLEMA)
);

/*==============================================================*/
/* Table: PRODUCTOS                                             */
/*==============================================================*/
create table PRODUCTOS
(
   COD_PRODUCTO         int not null AUTO_INCREMENT,
   NOM_PRODUCTO         varchar(300) not null,
   DESCR_PRODUCTO       varchar(200) not null,
   STOCK                bigint not null,
   FECHA_ENTREGA        date not null,
   primary key (COD_PRODUCTO)
);

/*==============================================================*/
/* Table: PROFESION                                             */
/*==============================================================*/
create table PROFESION
(
   COD_PROFESION        int not null AUTO_INCREMENT,
   NOM_PROFESION        varchar(20),
   primary key (COD_PROFESION)
);

/*==============================================================*/
/* Table: RUBRO                                                 */
/*==============================================================*/
create table RUBRO
(
   COD_RUBRO            int not null AUTO_INCREMENT,
   SUELDO_BASE          float(5) not null,
   primary key (COD_RUBRO)
);

/*==============================================================*/
/* Table: TIPOTRATAMIENTO_FACIAL                                */
/*==============================================================*/
create table TIPOTRATAMIENTO_FACIAL
(
   COD_TRATA_FACIAL     int not null AUTO_INCREMENT,
   TIPO_TRATA_FACIAL    varchar(100),
   primary key (COD_TRATA_FACIAL)
);

/*==============================================================*/
/* Table: TIPO_DE_PAGO                                          */
/*==============================================================*/
create table TIPO_DE_PAGO
(
   COD_TIPO_PAGO        int not null AUTO_INCREMENT,
   TIPO_PAGO            varchar(15) not null,
   primary key (COD_TIPO_PAGO)
);

/*==============================================================*/
/* Table: TIPO_DE_PIEL                                          */
/*==============================================================*/
create table TIPO_DE_PIEL
(
   COD_TIPO_PIEL        int not null AUTO_INCREMENT,
   TIPO_PIEL            varchar(100),
   primary key (COD_TIPO_PIEL)
);

/*==============================================================*/
/* Table: TIPO_SANGRE                                           */
/*==============================================================*/
create table TIPO_SANGRE
(
   COD_TIPO_SANGRE      int not null AUTO_INCREMENT,
   TIPO_SANGRE          varchar(50) not null,
   primary key (COD_TIPO_SANGRE)
);

/*==============================================================*/
/* Table: TIPO_TRATAMIENTO                                      */
/*==============================================================*/
create table TIPO_TRATAMIENTO
(
   COD_TRATAMIENTO      int not null AUTO_INCREMENT,
   COD_TRATA_FACIAL     int,
   NOM_TRATA            varchar(50) not null,
   primary key (COD_TRATAMIENTO)
);

/*==============================================================*/
/* Table: TIPO_USUARIO                                          */
/*==============================================================*/
create table TIPO_USUARIO
(
   COD_TIPO_USUARIO     int not null AUTO_INCREMENT,
   TIPO_USUARIO         varchar(20),
   primary key (COD_TIPO_USUARIO)
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO
(
   COD_USUARIO          int not null AUTO_INCREMENT,
   COD_TIPO_USUARIO     int,
   CED_EMPLEADO         char(10),
   NOM_USUARIO          varchar(10) not null,
   APELLIDO_USUARIO     varchar(10) not null,
   FECHA_NAC_USU        date not null,
   CONTRASENA           varchar(20) not null,
   primary key (COD_USUARIO)
);

alter table ACTIVIDAD_FISICA add constraint FK_REALIZA foreign key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO)
      references PACIENTE_TRATAMIENTO (FECHA_TRATA, CEDULA, COD_TRATAMIENTO) on delete restrict on update restrict;

alter table ACTIVIDAD_FISICA add constraint FK_RELATIONSHIP_4 foreign key (COD_NIV)
      references NIVEL (COD_NIV) on delete restrict on update restrict;

alter table ACTIVIDAD_FISICA add constraint FK_RELATIONSHIP_5 foreign key (COD_OCUP)
      references OCUPACION (COD_OCUP) on delete restrict on update restrict;

alter table ACTIVIDAD_FISICA add constraint FK_RELATIONSHIP_6 foreign key (COD_PROFESION)
      references PROFESION (COD_PROFESION) on delete restrict on update restrict;

alter table ACTIVIDAD_FISICA add constraint FK_RELATIONSHIP_7 foreign key (COD_DEPORTE)
      references DEPORTES (COD_DEPORTE) on delete restrict on update restrict;

alter table ACTIVIDAD_FISICA add constraint FK_RELATIONSHIP_8 foreign key (COD_ACT)
      references ACTIVIDAD (COD_ACT) on delete restrict on update restrict;

alter table CITA_MEDICA add constraint FK_SOLICITA foreign key (CEDULA)
      references PACIENTE (CEDULA) on delete restrict on update restrict;

alter table CITA_MEDICA add constraint FK_TIENE_HORARIOS foreign key (COD_HORARIO)
      references HORARIO (COD_HORARIO) on delete restrict on update restrict;

alter table EXAMENES add constraint FK_RELATIONSHIP_30 foreign key (COD_TIPO_SANGRE)
      references TIPO_SANGRE (COD_TIPO_SANGRE) on delete restrict on update restrict;

alter table FICHA_ECONOMICA add constraint FK_PAGADO foreign key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO)
      references PACIENTE_TRATAMIENTO (FECHA_TRATA, CEDULA, COD_TRATAMIENTO) on delete restrict on update restrict;

alter table FICHA_ECONOMICA add constraint FK_TIPO_PAGO foreign key (COD_TIPO_PAGO)
      references TIPO_DE_PAGO (COD_TIPO_PAGO) on delete restrict on update restrict;

alter table HISTORIA_ALIMENTICIA add constraint FK_RELATIONSHIP_19 foreign key (COD_COMIDA)
      references COMIDAS (COD_COMIDA) on delete restrict on update restrict;

alter table HISTORIA_ALIMENTICIA add constraint FK_RELATIONSHIP_20 foreign key (COD_ALIMENTOS)
      references ALIMENTOS (COD_ALIMENTOS) on delete restrict on update restrict;

alter table HISTORIA_ALIMENTICIA add constraint FK_RELATIONSHIP_21 foreign key (COD_HORAS)
      references HORAS (COD_HORAS) on delete restrict on update restrict;

alter table HISTORIA_CLINICA add constraint FK_SIGUE foreign key (FECHA_HISTORIA_ALIMENTICIA)
      references HISTORIA_ALIMENTICIA (FECHA_HISTORIA_ALIMENTICIA) on delete restrict on update restrict;

alter table HISTORIA_CLINICA add constraint FK_TENER foreign key (FECHA_REALIZACION)
      references HISTORIA_COSMETOLOGICA (FECHA_REALIZACION) on delete restrict on update restrict;

alter table HISTORIA_CLINICA add constraint FK_TENER_HISTORIA foreign key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO)
      references PACIENTE_TRATAMIENTO (FECHA_TRATA, CEDULA, COD_TRATAMIENTO) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_POSEE foreign key (COD_TIPO_PIEL)
      references TIPO_DE_PIEL (COD_TIPO_PIEL) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_32 foreign key (COD_MEDICAMENTO)
      references MEDICAMENTOS (COD_MEDICAMENTO) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_33 foreign key (COD_CIRUGIA)
      references CIRUGIAS (COD_CIRUGIA) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_34 foreign key (COD_ENFERMEDAD)
      references ENFERMEDADES (COD_ENFERMEDAD) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_35 foreign key (COD_ALERGIAS)
      references ALERGIAS (COD_ALERGIAS) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_36 foreign key (COD_COSMETICO)
      references COSMETICO (COD_COSMETICO) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_43 foreign key (COD_IMAGEN_PACIENTE)
      references IMAGEN_PACIENTE (COD_IMAGEN_PACIENTE) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_44 foreign key (COD_PEELING)
      references PEELING (COD_PEELING) on delete restrict on update restrict;

alter table HISTORIA_COSMETOLOGICA add constraint FK_RELATIONSHIP_45 foreign key (COD_OTRO_PROBLEM)
      references OTROSPROBLEMAS (COD_OTRO_PROBLEM) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_23 foreign key (COD_CONSU_ALI_FUE_CA)
      references CONSUME_ALIMENTOS_FUERA_DE_CASA (COD_CONSU_ALI_FUE_CA) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_24 foreign key (COD_BEBIDAS)
      references BEBIDAS_ALCOHOLICAS (COD_BEBIDAS) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_25 foreign key (COD_CON_TABACO)
      references CONSUME_TABACO (COD_CON_TABACO) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_26 foreign key (COD_APETITO)
      references APETITO (COD_APETITO) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_27 foreign key (COD_PROBLEMA)
      references PROBLEMAS_GASTROINTESTINALES (COD_PROBLEMA) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_28 foreign key (COD_EXAMEN)
      references EXAMENES (COD_EXAMEN) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_RELATIONSHIP_29 foreign key (COD_OTRO)
      references OTROS_PROBLEMAS (COD_OTRO) on delete restrict on update restrict;

alter table HISTORIA_DIETETICA add constraint FK_TIENE_DIETETICA foreign key (COD_HISTORIA)
      references HISTORIA_CLINICA (COD_HISTORIA) on delete restrict on update restrict;

alter table MEDIDAS_CORPORALES add constraint FK_MIDE foreign key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO)
      references PACIENTE_TRATAMIENTO (FECHA_TRATA, CEDULA, COD_TRATAMIENTO) on delete restrict on update restrict;

alter table MULTA add constraint FK_COBRA foreign key (COD_RUBRO)
      references RUBRO (COD_RUBRO) on delete restrict on update restrict;

alter table MULTA add constraint FK_PUEDE_TENER foreign key (CED_EMPLEADO)
      references EMPLEADO (CED_EMPLEADO) on delete restrict on update restrict;

alter table OBTIENE add constraint FK_OBTIENE foreign key (COD_DESCRIPCION)
      references DESCRIPCION (COD_DESCRIPCION) on delete restrict on update restrict;

alter table OBTIENE add constraint FK_OBTIENE2 foreign key (COD_HISTORIA)
      references HISTORIA_CLINICA (COD_HISTORIA) on delete restrict on update restrict;

alter table OBTIENE add constraint FK_OBTIENE3 foreign key (COD_DIAGNOSTICO)
      references DIAGNOSTICO (COD_DIAGNOSTICO) on delete restrict on update restrict;

alter table PACIENTE add constraint FK_TIENE foreign key (COD_ESTADO)
      references ESTADO_CIVIL (COD_ESTADO) on delete restrict on update restrict;

alter table PACIENTE_TRATAMIENTO add constraint FK_HACE foreign key (CEDULA)
      references PACIENTE (CEDULA) on delete restrict on update restrict;

alter table PACIENTE_TRATAMIENTO add constraint FK_PUEDE_COMPRAR foreign key (COD_PRODUCTO)
      references PRODUCTOS (COD_PRODUCTO) on delete restrict on update restrict;

alter table PACIENTE_TRATAMIENTO add constraint FK_REALIZARSE foreign key (COD_TRATAMIENTO)
      references TIPO_TRATAMIENTO (COD_TRATAMIENTO) on delete restrict on update restrict;

alter table PACIENTE_TRATAMIENTO add constraint FK_REALIZA_TRATA foreign key (CED_EMPLEADO)
      references EMPLEADO (CED_EMPLEADO) on delete restrict on update restrict;

alter table POSEE add constraint FK_POSEE2 foreign key (FECHA_TRATA, CEDULA, COD_TRATAMIENTO)
      references PACIENTE_TRATAMIENTO (FECHA_TRATA, CEDULA, COD_TRATAMIENTO) on delete restrict on update restrict;

alter table POSEE add constraint FK_POSEE3 foreign key (COD_ANTROPOMETRICO)
      references DATOS_ANTROPOMETRICOS (COD_ANTROPOMETRICO) on delete restrict on update restrict;

alter table TIPO_TRATAMIENTO add constraint FK_RELATIONSHIP_41 foreign key (COD_TRATA_FACIAL)
      references TIPOTRATAMIENTO_FACIAL (COD_TRATA_FACIAL) on delete restrict on update restrict;

alter table USUARIO add constraint FK_ES foreign key (COD_TIPO_USUARIO)
      references TIPO_USUARIO (COD_TIPO_USUARIO) on delete restrict on update restrict;

alter table USUARIO add constraint FK_TIENECUENTA foreign key (CED_EMPLEADO)
      references EMPLEADO (CED_EMPLEADO) on delete restrict on update restrict;

