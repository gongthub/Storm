using Storm.Data;
using Storm.Domain.Entity.SystemSecurity;
using Storm.Domain.IRepository.SystemSecurity;
using Storm.MySqlRepository;

namespace Storm.MySqlRepository
{
    public class LogRepository : RepositoryBase<LogEntity>, ILogRepository
    {
       
    }
}
