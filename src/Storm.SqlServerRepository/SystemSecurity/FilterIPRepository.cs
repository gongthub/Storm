﻿using Storm.Data;
using Storm.Domain.Entity.SystemSecurity;
using Storm.Domain.IRepository.SystemSecurity;
using Storm.SqlServerRepository;

namespace Storm.SqlServerRepository
{
    public class FilterIPRepository : RepositoryBase<FilterIPEntity>, IFilterIPRepository
    {
       
    }
}
