using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Storm.Code
{
    public class ConfigHelp
    {
        #region 单例模式创建对象
        //单例模式创建对象
        private static ConfigHelp _configHelp = null;
        // Creates an syn object.
        private static readonly object SynObject = new object();
        ConfigHelp()
        {
        }

        public static ConfigHelp configHelp
        {
            get
            {
                // Double-Checked Locking
                if (null == _configHelp)
                {
                    lock (SynObject)
                    {
                        if (null == _configHelp)
                        {
                            _configHelp = new ConfigHelp();
                        }
                    }
                }
                return _configHelp;
            }
        }
        #endregion

        #region 系统相关
        /// <summary>
        /// 系统数据库类型
        /// </summary>
        public string SYSDBTYPE
        {
            get
            {
                return Code.Configs.GetValue("Sys_DBType").ToString();
            }
        }
        #endregion

        /// <summary>
        /// 工作流文件上传路径
        /// </summary>
        public string WFFILEPATHS
        {
            get
            {
                return Code.Configs.GetValue("WFFilePaths").ToString();
            }
        }
    }
}
