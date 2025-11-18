create table doc_info_t (
    ID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '主键ID',
    PARENT_ID BIGINT NOT NULL COMMENT '父ID',
    DOC_ID   VARCHAR(32) NOT NULL COMMENT '文档编号',
    DOC_NAME VARCHAR(300) NOT NULL COMMENT '文档名称',
    PATH VARCHAR(300) NOT NULL COMMENT '文档路径',
    DEPTH INT NOT NULL COMMENT '文档深度',
    IS_DIR CHAR(1) NOT NULL COMMENT '是否目录',
    URL TEXT NOT NULL  COMMENT '文档地址',

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文档信息表';

create unique index doc_info_idx_1 on doc_info_t (doc_id);
create index doc_info_idx_2 on doc_info_t (parent_id);
create index doc_info_idx_3 on doc_info_t (doc_name);