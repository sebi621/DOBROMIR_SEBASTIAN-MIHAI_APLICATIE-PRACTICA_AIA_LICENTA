namespace School_Tickets.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Thickets", "ApplicationUsers_Id", "dbo.AspNetUsers");
            DropIndex("dbo.Thickets", new[] { "ApplicationUsers_Id" });
            DropTable("dbo.Thickets");
        }
        
        public override void Down()
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
                .PrimaryKey(t => t.ThicketID);
            
            CreateIndex("dbo.Thickets", "ApplicationUsers_Id");
            AddForeignKey("dbo.Thickets", "ApplicationUsers_Id", "dbo.AspNetUsers", "Id");
        }
    }
}
