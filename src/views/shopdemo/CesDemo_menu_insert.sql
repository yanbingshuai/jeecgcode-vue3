-- 注意：该页面对应的前台目录为views/shopin文件夹下
-- 如果你想更改到其他目录，请修改sql中component字段对应的值


INSERT INTO sys_permission(id, parent_id, name, url, component, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_route, is_leaf, keep_alive, hidden, hide_tab, description, status, del_flag, rule_flag, create_by, create_time, update_by, update_time, internal_or_external) 
VALUES ('2023031609217840010', NULL, '商品信息', '/shopin/cesDemoList', 'shopin/CesDemoList', NULL, NULL, 0, NULL, '1', 0.00, 0, NULL, 1, 0, 0, 0, 0, NULL, '1', 0, 0, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0);

-- 权限控制sql
-- 新增
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023031609217840011', '2023031609217840010', '添加商品信息', NULL, NULL, 0, NULL, NULL, 2, 'shopin:ces_demo:add', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0, 0, '1', 0);
-- 编辑
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023031609217840012', '2023031609217840010', '编辑商品信息', NULL, NULL, 0, NULL, NULL, 2, 'shopin:ces_demo:edit', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0, 0, '1', 0);
-- 删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023031609217840013', '2023031609217840010', '删除商品信息', NULL, NULL, 0, NULL, NULL, 2, 'shopin:ces_demo:delete', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0, 0, '1', 0);
-- 批量删除
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023031609217840014', '2023031609217840010', '批量删除商品信息', NULL, NULL, 0, NULL, NULL, 2, 'shopin:ces_demo:deleteBatch', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0, 0, '1', 0);
-- 导出excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023031609217840015', '2023031609217840010', '导出excel_商品信息', NULL, NULL, 0, NULL, NULL, 2, 'shopin:ces_demo:exportXls', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0, 0, '1', 0);
-- 导入excel
INSERT INTO sys_permission(id, parent_id, name, url, component, is_route, component_name, redirect, menu_type, perms, perms_type, sort_no, always_show, icon, is_leaf, keep_alive, hidden, hide_tab, description, create_by, create_time, update_by, update_time, del_flag, rule_flag, status, internal_or_external)
VALUES ('2023031609217840016', '2023031609217840010', '导入excel_商品信息', NULL, NULL, 0, NULL, NULL, 2, 'shopin:ces_demo:importExcel', '1', NULL, 0, NULL, 1, 0, 0, 0, NULL, 'admin', '2023-03-16 21:21:01', NULL, NULL, 0, 0, '1', 0);