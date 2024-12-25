page 50142 "CSD Seminar Manager RoleCenter"
{
    //Lab 10 task 5
    PageType = RoleCenter;
    Caption = 'Seminar Manager RoleCenter';

    layout
    {
        area(RoleCenter)
        {
            group(Column1)
            {
                part(Activities; "CSD Seminar Manager Activities")
                {

                }
                part(MySeminars; "CSD My Seminar")
                {

                }
            }
            group(Column2)
            {
                part(MyCustomers; "My Customers")
                {

                }
                systempart(MyNotifications; MyNotes)
                {

                }
                part(ReportInbox; "Report Inbox Part")
                {

                }
            }

        }
    }

    actions
    {
        area(Embedding)
        {
            action(SeminarRegistrations)
            {
                Caption = 'Seminar Registrations';
                Image = List;
                RunObject = Page "CSD Seminar Registration List";
                ToolTip = 'Create seminar registration';
            }
            action(Seminars)
            {
                Caption = 'Seminars';
                Image = List;
                RunObject = page "CSD Seminar List";
                ToolTip = 'View all Seminars';
            }
            action(Instructors)
            {
                Caption = 'Instructors';
                Image = List;
                RunObject = page "Resource List";
                RunPageView = where(Type = const(Instructor));
                ToolTip = 'View all resources registeres as Instructor';
            }
            action(Rooms)
            {
                Caption = 'Rooms';
                Image = List;
                RunObject = page "Resource List";
                RunPageView = where(Type = const(Room));

            }
            action("Sales Invoices")
            {
                Caption = 'Sales Invoices';
                ApplicationArea = Basic, Suite;
                Image = Invoice;
                RunObject = page "Sales Invoice List";
                ToolTip = 'Register your sales to customers';

            }
            action("Sales Credit Memos")
            {
                Caption = 'Sales Credit Memos';
                RunObject = page "Sales Credit Memo";
                ToolTip = 'Revert the financial transactions involved when your customers want to cancel a purchase';
            }
            action(Customers)
            {
                Caption = 'Customers';
                Image = Customer;
                RunObject = page "Customer List";
                ToolTip = 'View or edit detailed information for the customers that you trade with';

            }

        }
        area(Sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                ToolTip = 'View history for sales, shipments, and inventory';
                action("Posted Seminar Registrations")
                {
                    Caption = 'Posted Seminar Registrations';
                    Image = Timesheet;
                    RunObject = page "CSD Posted Seminar Reg. List";
                    ToolTip = 'Open the list of posted Registrations';
                }
                action("Posted Sales Invoices")
                {
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Invoices";
                    ToolTip = 'Open the list of posted sales invoices';

                }
                action("Posted Sales Credit Memos")
                {
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = Page "Posted Sales Credit Memos";
                    ToolTip = 'Open the list of posted sales credit memos';
                }

                action("Registers")
                {
                    Caption = 'Seminar Registers';
                    Image = PostedShipment;
                    RunObject = Page "CSD Seminar Registers";
                    ToolTip = 'Open the list of Seminar Registers';
                }
            }
        }
        area(Creation)
        {
            action("NewSeminarRegistration")
            {
                Caption = 'Seminar Registration';
                Image = NewTimesheet;
                RunObject = page "CSD Seminar Registration";
                RunPageMode = Create;
            }
            action("NewSalesInvoice")
            {
                Caption = 'Sales Invoice';
                Image = NewSalesInvoice;
                RunObject = page "Sales Invoice";
                RunPageMode = Create;
            }

        }
        area(Processing)
        {
            action(CreateInvoices)
            {
                Caption = 'Create Invoices';
                Image = CreateJobSalesInvoice;
                RunObject = report "CSD Create Seminar Invoices";
            }
            action(Navigate)
            {
                Caption = 'Navigate';
                Image = Navigate;
                RunObject = page Navigate;
                RunPageMode = Edit;
            }
        }
    }
}