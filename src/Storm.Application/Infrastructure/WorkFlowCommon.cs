using Storm.Application.WFManage;
using Storm.Domain.Entity.WFManage;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Storm.Application.Infrastructure
{
    public class WorkFlowCommon
    {
        static WorkFlowCommon()
        {
            InitRegisteredForms();
        }
        public class EndFlowEventArgs : EventArgs
        {
            public string key { get; set; }
        }
        public class RegisteredForm
        {
            public string key { get; set; }
            public int value { get; set; }
        }

        public static List<RegisteredForm> RegisteredFormLst = new List<RegisteredForm>();

        public delegate void EndFlowDelegate(EndFlowEventArgs eventArgs);

        private static void InitRegisteredForms()
        {
            WorkApp workApp = new WorkApp();
            List<WorkEntity> workEntities = workApp.GetSystemFormApplyings();
            RegisteredForm registeredForm = new RegisteredForm();
            workEntities?.ForEach(delegate (WorkEntity workEntity)
            {
                registeredForm = new RegisteredForm();
                registeredForm.key = workEntity.Id;
                RegisteredFormLst.Add(registeredForm);
            });
            RegisteredFormLst = RegisteredFormLst.Distinct().ToList();
        }
    }
    public class WorkFlowAttribute : Attribute
    {
        public SystemForm systemForm { set; get; }
    }
}
