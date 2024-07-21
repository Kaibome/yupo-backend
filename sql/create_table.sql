-- 标签
CREATE TABLE `tag` (
                       `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                       `tagName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签名称',
                       `userId` bigint DEFAULT NULL COMMENT '用户 id',
                       `parentId` bigint DEFAULT NULL COMMENT '父标签id',
                       `isParent` tinyint DEFAULT NULL COMMENT '0 - 不是，1 - 是',
                       `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                       `updataTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                       `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除',
                       PRIMARY KEY (`id`),
                       UNIQUE KEY `uniIdx_tagName` (`tagName`),
                       KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='标签'

-- 用户
CREATE TABLE `user` (
                        `username` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户昵称',
                        `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
                        `userAccount` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '账号',
                        `avatarUrl` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
                        `gender` tinyint DEFAULT NULL COMMENT '性别',
                        `userPassword` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
                        `phone` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电话',
                        `email` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
                        `userStatus` int NOT NULL DEFAULT '0' COMMENT '状态 0 - 正常',
                        `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                        `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                        `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除',
                        `userRole` int NOT NULL DEFAULT '0' COMMENT '用户角色 0 - 普通用户 1 - 管理员',
                        `planetCode` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '星球编号',
                        `tags` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标签 json 列表',
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户'

