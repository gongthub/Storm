using Storm.Domain.IRepository.SystemManage;
using Storm.Domain.IRepository.SystemSecurity;
using Storm.Domain.IRepository.WFManage;
using System;
using System.Reflection;

namespace Storm.RepositoryFactory
{
    public class DataAccess
    {
        #region 属性

        /// <summary>
        /// 调用类命名空间
        /// </summary>
        private static readonly string DLLPATH = "Storm.{0}Repository";

        /// <summary>
        /// 数据库类型
        /// </summary>
        private static readonly string DBTYPE = Storm.Code.ConfigHelp.configHelp.SYSDBTYPE;

        /// <summary>
        /// 命名空间
        /// </summary>
        private static readonly string DLLPATHHASDB = string.Format(DLLPATH, DBTYPE);

        #endregion 属性

        #region 默认方法
        /// <summary>
        /// 创建对象或从缓存获取
        /// </summary>
        public static object CreateObject(string classNamespace)
        {
            //object objType = DataCache.GetCache(classNamespace);//从缓存读取
            object objType = new object();
            //if (objType == null)
            //{
            try
            {
                objType = Assembly.Load(DLLPATHHASDB).CreateInstance(classNamespace);//反射创建
                //DataCache.SetCache(classNamespace, objType);// 写入缓存
            }
            catch (Exception er)
            {
                throw er;
            }
            //}
            return objType;
        }
        #endregion 默认方法

        #region 功能：创建接口通用方法（接口名称必须等于“I”+ 数据库实现层名称）
        /// <summary>
        /// 功能：创建接口通用方法（接口名称必须等于“I”+ 数据库实现层名称） 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static T CreateInterface<T>()
        {
            string ClassNamespace = DLLPATHHASDB + "." + typeof(T).Name.Substring(1);
            object objType = CreateObject(ClassNamespace);
            return (T)objType;
        }
        #endregion

        #region 自定义接口

        /// <summary>
        /// 接口IAreaRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IAreaRepository CreateIAreaRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".AreaRepository";
            object objType = CreateObject(ClassNamespace);
            return (IAreaRepository)objType;
        }
        /// <summary>
        /// 接口IItemsDetailRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IItemsDetailRepository CreateIItemsDetailRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".ItemsDetailRepository";
            object objType = CreateObject(ClassNamespace);
            return (IItemsDetailRepository)objType;
        }
        /// <summary>
        /// 接口IItemsRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IItemsRepository CreateIItemsRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".ItemsRepository";
            object objType = CreateObject(ClassNamespace);
            return (IItemsRepository)objType;
        }
        /// <summary>
        /// 接口IModuleButtonRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IModuleButtonRepository CreateIModuleButtonRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".ModuleButtonRepository";
            object objType = CreateObject(ClassNamespace);
            return (IModuleButtonRepository)objType;
        }
        /// <summary>
        /// 接口IModuleRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IModuleRepository CreateIModuleRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".ModuleRepository";
            object objType = CreateObject(ClassNamespace);
            return (IModuleRepository)objType;
        }
        /// <summary>
        /// 接口IOrganizeRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IOrganizeRepository CreateIOrganizeRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".OrganizeRepository";
            object objType = CreateObject(ClassNamespace);
            return (IOrganizeRepository)objType;
        }
        /// <summary>
        /// 接口IRoleAuthorizeRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IRoleAuthorizeRepository CreateIRoleAuthorizeRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".RoleAuthorizeRepository";
            object objType = CreateObject(ClassNamespace);
            return (IRoleAuthorizeRepository)objType;
        }
        /// <summary>
        /// 接口IRoleRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IRoleRepository CreateIRoleRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".RoleRepository";
            object objType = CreateObject(ClassNamespace);
            return (IRoleRepository)objType;
        }
        /// <summary>
        /// 接口IUserLogOnRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IUserLogOnRepository CreateIUserLogOnRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".UserLogOnRepository";
            object objType = CreateObject(ClassNamespace);
            return (IUserLogOnRepository)objType;
        }
        /// <summary>
        /// 接口IUserRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IUserRepository CreateIUserRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".UserRepository";
            object objType = CreateObject(ClassNamespace);
            return (IUserRepository)objType;
        }
        /// <summary>
        /// 接口IDbBackupRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IDbBackupRepository CreateIDbBackupRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".DbBackupRepository";
            object objType = CreateObject(ClassNamespace);
            return (IDbBackupRepository)objType;
        }
        /// <summary>
        /// 接口IFilterIPRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IFilterIPRepository CreateIFilterIPRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".FilterIPRepository";
            object objType = CreateObject(ClassNamespace);
            return (IFilterIPRepository)objType;
        }
        /// <summary>
        /// 接口ILogRepository映射 
        /// </summary>
        /// <returns></returns>
        public static ILogRepository CreateILogRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".LogRepository";
            object objType = CreateObject(ClassNamespace);
            return (ILogRepository)objType;
        }
        /// <summary>
        /// 接口IFlowRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IFlowRepository CreateIFlowRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".FlowRepository";
            object objType = CreateObject(ClassNamespace);
            return (IFlowRepository)objType;
        }
        /// <summary>
        /// 接口IFlowVersionRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IFlowVersionRepository CreateIFlowVersionRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".FlowVersionRepository";
            object objType = CreateObject(ClassNamespace);
            return (IFlowVersionRepository)objType;
        }
        /// <summary>
        /// 接口IWFItemRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IWFItemRepository CreateIWFItemRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".WFItemRepository";
            object objType = CreateObject(ClassNamespace);
            return (IWFItemRepository)objType;
        }
        /// <summary>
        /// 接口IWFItemDetailRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IWFItemDetailRepository CreateIWFItemDetailRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".WFItemDetailRepository";
            object objType = CreateObject(ClassNamespace);
            return (IWFItemDetailRepository)objType;
        }
        /// <summary>
        /// 接口IFormRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IFormRepository CreateIFormRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".FormRepository";
            object objType = CreateObject(ClassNamespace);
            return (IFormRepository)objType;
        }
        /// <summary>
        /// 接口IWorkRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IWorkRepository CreateIWorkRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".WorkRepository";
            object objType = CreateObject(ClassNamespace);
            return (IWorkRepository)objType;
        }
        /// <summary>
        /// 接口IWorkFlowRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IWorkFlowRepository CreateIWorkFlowRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".WorkFlowRepository";
            object objType = CreateObject(ClassNamespace);
            return (IWorkFlowRepository)objType;
        }
        /// <summary>
        /// 接口IApprovalProcessRepository映射 
        /// </summary>
        /// <returns></returns>
        public static IApprovalProcessRepository CreateIApprovalProcessRepository()
        {
            string ClassNamespace = DLLPATHHASDB + ".ApprovalProcessRepository";
            object objType = CreateObject(ClassNamespace);
            return (IApprovalProcessRepository)objType;
        }
        #endregion
    }
}
