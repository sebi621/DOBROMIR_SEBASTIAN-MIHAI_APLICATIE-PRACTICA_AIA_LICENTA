namespace School_Tickets.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test2 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Thickets",
                c => new
                    {
                        ThicketID = c.Int(nullable: false, identity: true),
                        Status = c.String(),
                        CreatedDate = c.DateTime(nullable: false),
                        Message = c.String(),
                        EndDate = c.DateTime(nullable: false),
                        ApplicationUsers_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.ThicketID)
                .ForeignKey("dbo.AspNetUsers", t => t.ApplicationUsers_Id)
                .Index(t => t.ApplicationUsers_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Thickets", "ApplicationUsers_Id", "dbo.AspNetUsers");
            DropIndex("dbo.Thickets", new[] { "ApplicationUsers_Id" });
            DropTable("dbo.Thickets");
        }
    }
}
