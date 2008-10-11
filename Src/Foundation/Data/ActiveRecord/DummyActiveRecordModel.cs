using Castle.ActiveRecord;

namespace Foundation.Data.ActiveRecord
{
    [ActiveRecord]
    public class DummyActiveRecordModel
    {
        [PrimaryKey]
        public int Id { get; set; }

        [Property]
        public string Name { get; set; }
    }
}
