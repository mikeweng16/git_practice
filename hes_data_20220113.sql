USE [hesapp]
GO
INSERT [dbo].[SOA_USR_ACCS] ([USR_ID], [USR_NAME], [USR_PWD], [USR_REAL_NAME], [EMAIL], [AD_AUTH], [ENABLED], [CHANNELS], [ERRCNT]) VALUES (N'1', N'admin', N'$2a$10$pM1KPIdFNAa9OAdYwQOe/OuKDx1g2jHHLHINwF8vAlgJ60eedUxoC', N'administrtator', N'admin@iisigroup.com', N'0', N'1', NULL, CAST(0 AS Decimal(10, 0)))
INSERT [dbo].[SOA_USR_ACCS] ([USR_ID], [USR_NAME], [USR_PWD], [USR_REAL_NAME], [EMAIL], [AD_AUTH], [ENABLED], [CHANNELS], [ERRCNT]) VALUES (N'39254466-2bd2-4', N'admin2', N'$2a$10$mS.h21GywqcYNutcJXqdD.D.vlgn5Ft9vHa754wFtjUwVQgWXwCUC', N'roger2', N'kengcheng.lin@iisigroup.com', N'0', N'1', NULL, CAST(0 AS Decimal(10, 0)))
GO
INSERT [dbo].[SOA_ROLES] ([ROLE_ID], [ROLE_CD], [ROLE_DESC], [ENABLED]) VALUES (N'1', N'ROLE_ADMIN', N'Administrator', NULL)
INSERT [dbo].[SOA_ROLES] ([ROLE_ID], [ROLE_CD], [ROLE_DESC], [ENABLED]) VALUES (N'2', N'ROLE_SM', N'Service Maintainer', NULL)
INSERT [dbo].[SOA_ROLES] ([ROLE_ID], [ROLE_CD], [ROLE_DESC], [ENABLED]) VALUES (N'441de9e4-e666-4e9d-a0f3-2ee5a2724b45', N'ROLE_RM', N'Resource Monitor', NULL)
INSERT [dbo].[SOA_ROLES] ([ROLE_ID], [ROLE_CD], [ROLE_DESC], [ENABLED]) VALUES (N'83aa915b-8fcb-4e9e-af0d-758baac2cca2', N'ROLE_LI', N'Log Inspector', NULL)
GO
INSERT [dbo].[SOA_USR_ROLES] ([ROLE_ID], [USR_ID], [ENABLED]) VALUES (N'1', N'1', NULL)
INSERT [dbo].[SOA_USR_ROLES] ([ROLE_ID], [USR_ID], [ENABLED]) VALUES (N'1', N'39254466-2bd2-4', NULL)
GO
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'ha-config', N'ha.clusterMembers', N'127.0.0.1')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'ha-config', N'ha.tcpPort', N'9999')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'kafka.groupid', N'iisigroup')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'kafka.serverurl', N'confluentkafka1:9092\,confluentkafka2:9092\,confluentkafka3:9092')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'krb.client.config.location', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'krb.jaas.conf.location', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'security.protocol', N'PLAINTEXT')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'ssl.key.password', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'ssl.keystore.location', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'ssl.keystore.password', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'ssl.truststore.location', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'kafka-config', N'ssl.truststore.password', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'ldap-config', N'ldap.user-dn', N'')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'ldap-config', N'ldap.user-search-base', N'DC=iead')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'mdms-config', N'account', N'111')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'mdms-config', N'password', N'R3b7se4ziFg0SGzX/srHQld7i4E=')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'mdms-config', N'url', N'1111')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'meter-config', N'frequency', N'0.0')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'meter-config', N'read.freq', N'3.0')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'ntp-config', N'ntp.server', N'time.stdtime.gov.tw')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'purge-config', N'purge.days-audit-log', N'14')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'purge-config', N'purge.hour-schedule-up', N'3')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'purge-config', N'purge.miunte-schedule-up', N'0')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'sb-config', N'createDcuCmd', N'0 */2 * * * ?')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'sb-config', N'sendMeterReading', N'0 */1 * * * ?')
INSERT [dbo].[SOA_BS_CONFIG] ([NAME], [KEY], [VALUE]) VALUES (N'system-config', N'host.whitelist', N'*')
GO
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'18cdf676-b7ef-4961-bdd8-4a1e1e12f150', N'1', N'HESMETER_INFO', N'IMPORT,DELETE,CREATE,QUERY,EXPORT,UPDATE')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'2ad5a0a1-ede8-467c-a541-c24b67d1b17d', N'1', N'BASIC_SETTING_MGR', N'QUERY,UPDATE,IMPORT,EXPORT')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'3ad5a0a1-ede8-467c-a541-c24b67d1b17d', N'1', N'AUDIT_LOG', N'QUERY')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'40e114ce-a6c0-4584-bab4-f9652e37b2b9', N'1', N'DCU_INFO', N'IMPORT,DELETE,CREATE,QUERY,EXPORT,UPDATE')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'63d0d3fb-be13-4b57-9e48-1a67442c7ba3', N'1', N'HESMETER_STATUS', N'DELETE,QUERY,EXPORT,UPDATE')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'a335636f-d771-4150-b1ce-f0b361562c17', N'1', N'DCU_STATUS', N'DELETE,QUERY,EXPORT,UPDATE')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'b72e30ae-22b6-4ec2-8981-18b957414a32', N'1', N'ROLE_MGR', N'QUERY,CREATE,UPDATE,DELETE')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'd8852418-bb47-41ea-95ef-efe529689637', N'1', N'ACCOUNT_MGR', N'DELETE,CREATE,QUERY,EXPORT,UPDATE')
INSERT [dbo].[SOA_ACLS] ([UUID], [ROLE_ID], [MODULE_NAME], [PERMISSION]) VALUES (N'f04743b1-07d8-41a0-9e25-45b9c07c592e', N'1', N'HESMETER_CMD', N'QUERY,EXPORT,UPDATE')
GO
test