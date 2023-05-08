import {BasicColumn} from '/@/components/Table';
import {FormSchema} from '/@/components/Table';
import { rules} from '/@/utils/helper/validator';
import { render } from '/@/utils/common/renderUtils';
//列表数据
export const columns: BasicColumn[] = [
   {
    title: '商品名称',
    align:"center",
    dataIndex: 'shopName'
   },
   {
    title: '商品描述',
    align:"center",
    dataIndex: 'shopContext',
    slots: { customRender: 'htmlSlot' },
   },
   {
    title: '商品地址',
    align:"center",
    dataIndex: 'shopAddress_dictText'
   },
   {
    title: '商品id',
    align:"center",
    dataIndex: 'shopId'
   },
   {
    title: '商品图片',
    align:"center",
    dataIndex: 'shopPic',
    customRender:render.renderImage,
   },
];
//查询数据
export const searchFormSchema: FormSchema[] = [
];
//表单数据
export const formSchema: FormSchema[] = [
  {
    label: '商品名称',
    field: 'shopName',
    component: 'Input',
  },
  {
    label: '商品描述',
    field: 'shopContext',
    component: 'JEditor',
  },
  {
    label: '商品地址',
    field: 'shopAddress',
    component: 'JDictSelectTag',
    componentProps:{
        dictCode:""
     },
  },
  {
    label: '商品id',
    field: 'shopId',
    component: 'Input',
  },
  {
    label: '商品图片',
    field: 'shopPic',
     component: 'JImageUpload',
     componentProps:{
      },
  },
	// TODO 主键隐藏字段，目前写死为ID
	{
	  label: '',
	  field: 'id',
	  component: 'Input',
	  show: false
	},
];



/**
* 流程表单调用这个方法获取formSchema
* @param param
*/
export function getBpmFormSchema(_formData): FormSchema[]{
  // 默认和原始表单保持一致 如果流程中配置了权限数据，这里需要单独处理formSchema
  return formSchema;
}