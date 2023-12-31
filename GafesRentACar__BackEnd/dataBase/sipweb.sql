PGDMP     2    /                {            sipweb    15.3 (Debian 15.3-1.pgdg120+1)    15.0 U    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16386    sipweb    DATABASE     q   CREATE DATABASE sipweb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE sipweb;
                postgres    false            �            1259    16387    grupos_autorizacoes    TABLE     �   CREATE TABLE public.grupos_autorizacoes (
    id bigint NOT NULL,
    nome character varying(50) NOT NULL,
    descricao character varying(200),
    sigla character varying(10) NOT NULL
);
 '   DROP TABLE public.grupos_autorizacoes;
       public         heap    postgres    false            �            1259    16390    autorizacoes_acesso_id_seq    SEQUENCE     �   CREATE SEQUENCE public.autorizacoes_acesso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.autorizacoes_acesso_id_seq;
       public          postgres    false    214            �           0    0    autorizacoes_acesso_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.autorizacoes_acesso_id_seq OWNED BY public.grupos_autorizacoes.id;
          public          postgres    false    215            �            1259    16391    autorizacoes_usuarios    TABLE     r   CREATE TABLE public.autorizacoes_usuarios (
    autorizacao_id bigint NOT NULL,
    usuario_id bigint NOT NULL
);
 )   DROP TABLE public.autorizacoes_usuarios;
       public         heap    postgres    false            �            1259    16432    endpoints_api    TABLE     �   CREATE TABLE public.endpoints_api (
    uri character varying(300) NOT NULL,
    metodo integer DEFAULT 1 NOT NULL,
    autorizacao_id bigint NOT NULL
);
 !   DROP TABLE public.endpoints_api;
       public         heap    postgres    false            �            1259    16394    pessoas    TABLE     M  CREATE TABLE public.pessoas (
    id bigint NOT NULL,
    nome character varying(200) NOT NULL,
    razao_social character varying(300),
    documento character varying(24),
    inscricao_estadual character varying(100),
    telefone character varying(20),
    email character varying(200),
    responsavel character varying(200)
);
    DROP TABLE public.pessoas;
       public         heap    postgres    false            �            1259    16399    pessoas_id_seq    SEQUENCE     w   CREATE SEQUENCE public.pessoas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pessoas_id_seq;
       public          postgres    false    217            �           0    0    pessoas_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pessoas_id_seq OWNED BY public.pessoas.id;
          public          postgres    false    218            �            1259    16514    precos_horas    TABLE     �   CREATE TABLE public.precos_horas (
    id bigint NOT NULL,
    nome character varying(100) NOT NULL,
    descricao character varying(400),
    valor numeric(12,2) NOT NULL
);
     DROP TABLE public.precos_horas;
       public         heap    postgres    false            �            1259    16456    projetos    TABLE     �  CREATE TABLE public.projetos (
    id bigint NOT NULL,
    cliente_id bigint NOT NULL,
    status_id integer NOT NULL,
    data_abertura date NOT NULL,
    data_aprovacao date,
    valor_original numeric(12,2),
    valor_aprovado numeric(12,2),
    esforso_estimado bigint,
    prazo_estimado integer,
    data_entrega date,
    vendedor_id bigint,
    titulo character varying(300) NOT NULL,
    descricao character varying(2000) NOT NULL
);
    DROP TABLE public.projetos;
       public         heap    postgres    false            �            1259    16455    projetos_id_seq    SEQUENCE     x   CREATE SEQUENCE public.projetos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.projetos_id_seq;
       public          postgres    false    223            �           0    0    projetos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.projetos_id_seq OWNED BY public.projetos.id;
          public          postgres    false    222            �            1259    16463    recursos_consumidos_projeto    TABLE     �   CREATE TABLE public.recursos_consumidos_projeto (
    id bigint NOT NULL,
    pessoa_id bigint NOT NULL,
    tipo integer NOT NULL,
    descricao character varying(200) NOT NULL,
    valor numeric(12,2) NOT NULL
);
 /   DROP TABLE public.recursos_consumidos_projeto;
       public         heap    postgres    false            �            1259    16462 "   recursos_consumidos_projeto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recursos_consumidos_projeto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.recursos_consumidos_projeto_id_seq;
       public          postgres    false    225            �           0    0 "   recursos_consumidos_projeto_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.recursos_consumidos_projeto_id_seq OWNED BY public.recursos_consumidos_projeto.id;
          public          postgres    false    224            �            1259    16495    requisitos_projeto    TABLE     �   CREATE TABLE public.requisitos_projeto (
    id bigint NOT NULL,
    nome character varying(300) NOT NULL,
    descricao character varying,
    tamanho_id integer,
    preco_hora_id integer,
    valor numeric(12,2),
    projeto_id bigint NOT NULL
);
 &   DROP TABLE public.requisitos_projeto;
       public         heap    postgres    false            �            1259    16494    requisitos_projeto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requisitos_projeto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.requisitos_projeto_id_seq;
       public          postgres    false    228            �           0    0    requisitos_projeto_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.requisitos_projeto_id_seq OWNED BY public.requisitos_projeto.id;
          public          postgres    false    227            �            1259    16479    status_projeto    TABLE     �   CREATE TABLE public.status_projeto (
    id integer NOT NULL,
    nome character varying(150) NOT NULL,
    descricao character varying(300)
);
 "   DROP TABLE public.status_projeto;
       public         heap    postgres    false            �            1259    16513    tabela_precos_horas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tabela_precos_horas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tabela_precos_horas_id_seq;
       public          postgres    false    231            �           0    0    tabela_precos_horas_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.tabela_precos_horas_id_seq OWNED BY public.precos_horas.id;
          public          postgres    false    230            �            1259    16508    tamanhos_requisitos    TABLE     �   CREATE TABLE public.tamanhos_requisitos (
    id integer NOT NULL,
    nome character(50) NOT NULL,
    descricao character varying(300),
    qtd_horas bigint NOT NULL
);
 '   DROP TABLE public.tamanhos_requisitos;
       public         heap    postgres    false            �            1259    16400    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id bigint NOT NULL,
    email_acesso character varying(200) NOT NULL,
    senha character varying(100) NOT NULL,
    pessoa_id bigint,
    ativo boolean NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16403    usuarios_id_seq    SEQUENCE     x   CREATE SEQUENCE public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    219            �           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    220            �            1259    16533 
   vendedores    TABLE     �   CREATE TABLE public.vendedores (
    id bigint NOT NULL,
    pessoa_id bigint NOT NULL,
    percentual_comissao integer NOT NULL
);
    DROP TABLE public.vendedores;
       public         heap    postgres    false            �            1259    16532    vendedor_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vendedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vendedor_id_seq;
       public          postgres    false    233            �           0    0    vendedor_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.vendedor_id_seq OWNED BY public.vendedores.id;
          public          postgres    false    232            �           2604    16404    grupos_autorizacoes id    DEFAULT     �   ALTER TABLE ONLY public.grupos_autorizacoes ALTER COLUMN id SET DEFAULT nextval('public.autorizacoes_acesso_id_seq'::regclass);
 E   ALTER TABLE public.grupos_autorizacoes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16405 
   pessoas id    DEFAULT     h   ALTER TABLE ONLY public.pessoas ALTER COLUMN id SET DEFAULT nextval('public.pessoas_id_seq'::regclass);
 9   ALTER TABLE public.pessoas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    16517    precos_horas id    DEFAULT     y   ALTER TABLE ONLY public.precos_horas ALTER COLUMN id SET DEFAULT nextval('public.tabela_precos_horas_id_seq'::regclass);
 >   ALTER TABLE public.precos_horas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16459    projetos id    DEFAULT     j   ALTER TABLE ONLY public.projetos ALTER COLUMN id SET DEFAULT nextval('public.projetos_id_seq'::regclass);
 :   ALTER TABLE public.projetos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16466    recursos_consumidos_projeto id    DEFAULT     �   ALTER TABLE ONLY public.recursos_consumidos_projeto ALTER COLUMN id SET DEFAULT nextval('public.recursos_consumidos_projeto_id_seq'::regclass);
 M   ALTER TABLE public.recursos_consumidos_projeto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16498    requisitos_projeto id    DEFAULT     ~   ALTER TABLE ONLY public.requisitos_projeto ALTER COLUMN id SET DEFAULT nextval('public.requisitos_projeto_id_seq'::regclass);
 D   ALTER TABLE public.requisitos_projeto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    16406    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    16536    vendedores id    DEFAULT     l   ALTER TABLE ONLY public.vendedores ALTER COLUMN id SET DEFAULT nextval('public.vendedor_id_seq'::regclass);
 <   ALTER TABLE public.vendedores ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            q          0    16391    autorizacoes_usuarios 
   TABLE DATA           K   COPY public.autorizacoes_usuarios (autorizacao_id, usuario_id) FROM stdin;
    public          postgres    false    216   lg       v          0    16432    endpoints_api 
   TABLE DATA           D   COPY public.endpoints_api (uri, metodo, autorizacao_id) FROM stdin;
    public          postgres    false    221   �g       o          0    16387    grupos_autorizacoes 
   TABLE DATA           I   COPY public.grupos_autorizacoes (id, nome, descricao, sigla) FROM stdin;
    public          postgres    false    214   �g       r          0    16394    pessoas 
   TABLE DATA           v   COPY public.pessoas (id, nome, razao_social, documento, inscricao_estadual, telefone, email, responsavel) FROM stdin;
    public          postgres    false    217   �g       �          0    16514    precos_horas 
   TABLE DATA           B   COPY public.precos_horas (id, nome, descricao, valor) FROM stdin;
    public          postgres    false    231   �h       x          0    16456    projetos 
   TABLE DATA           �   COPY public.projetos (id, cliente_id, status_id, data_abertura, data_aprovacao, valor_original, valor_aprovado, esforso_estimado, prazo_estimado, data_entrega, vendedor_id, titulo, descricao) FROM stdin;
    public          postgres    false    223   i       z          0    16463    recursos_consumidos_projeto 
   TABLE DATA           \   COPY public.recursos_consumidos_projeto (id, pessoa_id, tipo, descricao, valor) FROM stdin;
    public          postgres    false    225    i       }          0    16495    requisitos_projeto 
   TABLE DATA           o   COPY public.requisitos_projeto (id, nome, descricao, tamanho_id, preco_hora_id, valor, projeto_id) FROM stdin;
    public          postgres    false    228   =i       {          0    16479    status_projeto 
   TABLE DATA           =   COPY public.status_projeto (id, nome, descricao) FROM stdin;
    public          postgres    false    226   Zi       ~          0    16508    tamanhos_requisitos 
   TABLE DATA           M   COPY public.tamanhos_requisitos (id, nome, descricao, qtd_horas) FROM stdin;
    public          postgres    false    229   �i       t          0    16400    usuarios 
   TABLE DATA           M   COPY public.usuarios (id, email_acesso, senha, pessoa_id, ativo) FROM stdin;
    public          postgres    false    219   Aj       �          0    16533 
   vendedores 
   TABLE DATA           H   COPY public.vendedores (id, pessoa_id, percentual_comissao) FROM stdin;
    public          postgres    false    233   �j       �           0    0    autorizacoes_acesso_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.autorizacoes_acesso_id_seq', 1, false);
          public          postgres    false    215            �           0    0    pessoas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pessoas_id_seq', 2, true);
          public          postgres    false    218            �           0    0    projetos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.projetos_id_seq', 1, false);
          public          postgres    false    222            �           0    0 "   recursos_consumidos_projeto_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.recursos_consumidos_projeto_id_seq', 1, false);
          public          postgres    false    224            �           0    0    requisitos_projeto_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.requisitos_projeto_id_seq', 1, false);
          public          postgres    false    227            �           0    0    tabela_precos_horas_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.tabela_precos_horas_id_seq', 2, true);
          public          postgres    false    230            �           0    0    usuarios_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, true);
          public          postgres    false    220            �           0    0    vendedor_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vendedor_id_seq', 1, true);
          public          postgres    false    232            �           2606    16438    endpoints_api endpoints_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.endpoints_api
    ADD CONSTRAINT endpoints_pkey PRIMARY KEY (uri);
 F   ALTER TABLE ONLY public.endpoints_api DROP CONSTRAINT endpoints_pkey;
       public            postgres    false    221            �           2606    16408 ,   grupos_autorizacoes grupos_autorizacoes_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.grupos_autorizacoes
    ADD CONSTRAINT grupos_autorizacoes_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.grupos_autorizacoes DROP CONSTRAINT grupos_autorizacoes_pkey;
       public            postgres    false    214            �           2606    16410    pessoas pessoas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pessoas DROP CONSTRAINT pessoas_pkey;
       public            postgres    false    217            �           2606    16461    projetos projetos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT projetos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projetos DROP CONSTRAINT projetos_pkey;
       public            postgres    false    223            �           2606    16468 <   recursos_consumidos_projeto recursos_consumidos_projeto_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.recursos_consumidos_projeto
    ADD CONSTRAINT recursos_consumidos_projeto_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.recursos_consumidos_projeto DROP CONSTRAINT recursos_consumidos_projeto_pkey;
       public            postgres    false    225            �           2606    16502 *   requisitos_projeto requisitos_projeto_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.requisitos_projeto
    ADD CONSTRAINT requisitos_projeto_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.requisitos_projeto DROP CONSTRAINT requisitos_projeto_pkey;
       public            postgres    false    228            �           2606    16483 "   status_projeto status_projeto_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.status_projeto
    ADD CONSTRAINT status_projeto_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.status_projeto DROP CONSTRAINT status_projeto_pkey;
       public            postgres    false    226            �           2606    16521 %   precos_horas tabela_precos_horas_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.precos_horas
    ADD CONSTRAINT tabela_precos_horas_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.precos_horas DROP CONSTRAINT tabela_precos_horas_pkey;
       public            postgres    false    231            �           2606    16512 ,   tamanhos_requisitos tamanhos_requisitos_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tamanhos_requisitos
    ADD CONSTRAINT tamanhos_requisitos_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tamanhos_requisitos DROP CONSTRAINT tamanhos_requisitos_pkey;
       public            postgres    false    229            �           2606    16412    usuarios un_email_acesso 
   CONSTRAINT     [   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT un_email_acesso UNIQUE (email_acesso);
 B   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT un_email_acesso;
       public            postgres    false    219            �           2606    16414 0   autorizacoes_usuarios usuarios_autorizacoes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.autorizacoes_usuarios
    ADD CONSTRAINT usuarios_autorizacoes_pkey PRIMARY KEY (autorizacao_id, usuario_id);
 Z   ALTER TABLE ONLY public.autorizacoes_usuarios DROP CONSTRAINT usuarios_autorizacoes_pkey;
       public            postgres    false    216    216            �           2606    16416    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    219            �           2606    16538    vendedores vendedores_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.vendedores
    ADD CONSTRAINT vendedores_pkey PRIMARY KEY (id, pessoa_id);
 D   ALTER TABLE ONLY public.vendedores DROP CONSTRAINT vendedores_pkey;
       public            postgres    false    233    233            �           2606    16417 $   autorizacoes_usuarios autorizacao_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizacoes_usuarios
    ADD CONSTRAINT autorizacao_fk FOREIGN KEY (autorizacao_id) REFERENCES public.grupos_autorizacoes(id) NOT VALID;
 N   ALTER TABLE ONLY public.autorizacoes_usuarios DROP CONSTRAINT autorizacao_fk;
       public          postgres    false    214    216    3260            �           2606    16444    endpoints_api fk_autorizacao    FK CONSTRAINT     �   ALTER TABLE ONLY public.endpoints_api
    ADD CONSTRAINT fk_autorizacao FOREIGN KEY (autorizacao_id) REFERENCES public.grupos_autorizacoes(id) NOT VALID;
 F   ALTER TABLE ONLY public.endpoints_api DROP CONSTRAINT fk_autorizacao;
       public          postgres    false    214    221    3260            �           2606    16469    projetos fk_cliente    FK CONSTRAINT     �   ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES public.pessoas(id) NOT VALID;
 =   ALTER TABLE ONLY public.projetos DROP CONSTRAINT fk_cliente;
       public          postgres    false    223    3264    217            �           2606    16422    usuarios fk_pessoa    FK CONSTRAINT     u   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT fk_pessoa FOREIGN KEY (pessoa_id) REFERENCES public.pessoas(id);
 <   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT fk_pessoa;
       public          postgres    false    219    217    3264            �           2606    16489 %   recursos_consumidos_projeto fk_pessoa    FK CONSTRAINT     �   ALTER TABLE ONLY public.recursos_consumidos_projeto
    ADD CONSTRAINT fk_pessoa FOREIGN KEY (pessoa_id) REFERENCES public.pessoas(id) NOT VALID;
 O   ALTER TABLE ONLY public.recursos_consumidos_projeto DROP CONSTRAINT fk_pessoa;
       public          postgres    false    225    217    3264            �           2606    16539    vendedores fk_pessoa    FK CONSTRAINT     w   ALTER TABLE ONLY public.vendedores
    ADD CONSTRAINT fk_pessoa FOREIGN KEY (pessoa_id) REFERENCES public.pessoas(id);
 >   ALTER TABLE ONLY public.vendedores DROP CONSTRAINT fk_pessoa;
       public          postgres    false    217    3264    233            �           2606    16503    requisitos_projeto fk_projeto    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_projeto
    ADD CONSTRAINT fk_projeto FOREIGN KEY (projeto_id) REFERENCES public.projetos(id) NOT VALID;
 G   ALTER TABLE ONLY public.requisitos_projeto DROP CONSTRAINT fk_projeto;
       public          postgres    false    228    223    3272            �           2606    16484    projetos fk_status    FK CONSTRAINT     �   ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT fk_status FOREIGN KEY (status_id) REFERENCES public.status_projeto(id) NOT VALID;
 <   ALTER TABLE ONLY public.projetos DROP CONSTRAINT fk_status;
       public          postgres    false    223    226    3276            �           2606    16522    requisitos_projeto fk_tabela    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_projeto
    ADD CONSTRAINT fk_tabela FOREIGN KEY (preco_hora_id) REFERENCES public.precos_horas(id) NOT VALID;
 F   ALTER TABLE ONLY public.requisitos_projeto DROP CONSTRAINT fk_tabela;
       public          postgres    false    3282    228    231            �           2606    16527    requisitos_projeto fk_tamanho    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisitos_projeto
    ADD CONSTRAINT fk_tamanho FOREIGN KEY (tamanho_id) REFERENCES public.tamanhos_requisitos(id) NOT VALID;
 G   ALTER TABLE ONLY public.requisitos_projeto DROP CONSTRAINT fk_tamanho;
       public          postgres    false    228    229    3280            �           2606    16474    projetos fk_vendedor    FK CONSTRAINT     �   ALTER TABLE ONLY public.projetos
    ADD CONSTRAINT fk_vendedor FOREIGN KEY (vendedor_id) REFERENCES public.pessoas(id) NOT VALID;
 >   ALTER TABLE ONLY public.projetos DROP CONSTRAINT fk_vendedor;
       public          postgres    false    217    223    3264            �           2606    16427     autorizacoes_usuarios usuario_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizacoes_usuarios
    ADD CONSTRAINT usuario_fk FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id) NOT VALID;
 J   ALTER TABLE ONLY public.autorizacoes_usuarios DROP CONSTRAINT usuario_fk;
       public          postgres    false    216    3268    219            q      x�3�4����� ]      v       x�+3�H-.�Oԯ�L��4�4����� _�\      o   .   x�3�tL����,.)JL�/B�)��+9�����.��~\1z\\\ ��      r   u   x�3�tN,��/VpM)M,J�W���+I�,���"SKsKSK#c��ĔR�\�����Ԣ�ļ���Ғ���b���\��"�..#N�����T$s,,A�8��rP��a3!F��� �2�      �   s   x�3���/JTpI-N�+��9��a�9�E
)�
 ɒ����D�@AQ~VjI~�����*L��������Y����Q(HrR���s�2sS�J���RK��9���f��qqq ��0�      x      x������ � �      z      x������ � �      }      x������ � �      {   T   x�3��/:�<175�$�3-�8U��(U�,5/%QG!?/%U!(���Z���M�*R8�R�47$X�_\���3.�(3�+F��� U�$�      ~   s   x�3�twW p��fg��+��*�$�&�e�+�%����ˈ�d���if�e�@%C���y�
�F&\��$�jj.Ш"�� �9���9}����ԔL��Ʀ\1z\\\ K!Z�      t   O   x��I�  �sy�J��|���bb"4a��3��:�W������Z^�z�@[V�P
�4��P,Y a��;�~�5�      �      x�3�4�44����� 
��     