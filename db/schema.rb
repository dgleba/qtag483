# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 5016_12_30_223301) do

  create_table "Depts", primary_key: "DeptID", id: :integer, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Department", limit: 20
    t.string "DepartmentState", limit: 20
    t.index ["Department"], name: "Department"
  end

  create_table "DownTimeReasons", primary_key: "DownTimeReasonID", id: :integer, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "DownTimeReasonDesc", limit: 50
    t.index ["DownTimeReasonID"], name: "DownTimeReasonID"
  end

  create_table "Machines", primary_key: "MachineID", id: :integer, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "DeptID", default: 0
    t.string "MachineDesc"
    t.integer "PlantID", default: 0
    t.string "Stamp", limit: 16
    t.index ["DeptID"], name: "DeptID"
    t.index ["PlantID"], name: "PlantID"
    t.index ["Stamp"], name: "Stamp"
  end

  create_table "Mailing List", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "MailingListID", null: false, auto_increment: true
    t.string "FirstName", limit: 50
    t.string "LastName", limit: 50
    t.string "EmailAddress", limit: 50
    t.index ["EmailAddress"], name: "EmailAddress", unique: true
    t.index ["LastName"], name: "LastName"
  end

  create_table "Operations", primary_key: "OperationID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Operation", limit: 40
    t.string "OperationDecp", limit: 50
    t.index ["Operation"], name: "Operation"
    t.index ["OperationDecp"], name: "OperationDecp"
    t.index ["OperationID"], name: "OperationID"
  end

  create_table "PartDepts", primary_key: "PartDeptID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "PartID", limit: 16
    t.integer "DeptID", default: 0
    t.integer "Sequence", default: 0
    t.float "Cost", limit: 53, default: 0.0, null: false
    t.float "Weightlbs", limit: 53, default: 0.0, null: false
    t.integer "Area", default: 0
    t.datetime "DateCost"
    t.index ["Cost"], name: "Cost"
    t.index ["DeptID"], name: "DeptID"
    t.index ["PartDeptID"], name: "PartDeptID"
    t.index ["PartID"], name: "PartID"
    t.index ["Weightlbs"], name: "Weightlbs"
  end

  create_table "Parts", primary_key: "PartID", id: :string, limit: 16, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Description"
    t.boolean "RptScrap"
    t.integer "PlantNumber", default: 0
    t.index ["PlantNumber"], name: "PlantNumber"
    t.index ["RptScrap"], name: "RptScrap"
  end

  create_table "ScrapReasons", primary_key: "ScrapReasonID", id: :integer, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ScrapReasonDesc", limit: 50
    t.integer "OpertionID", default: 0
    t.index ["OpertionID"], name: "OpertionID"
    t.index ["ScrapReasonID"], name: "ScrapReasonID"
  end

  create_table "TBLQualityIssues", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ProblemType", limit: 3
    t.integer "Year", default: 18
    t.datetime "Date", null: false
    t.string "PartID", limit: 16, null: false
    t.string "Issuedby", limit: 20, null: false
    t.string "OpertionHd", limit: 50
    t.string "OpertionTp", limit: 50
    t.string "OpertionSp", limit: 50
    t.string "OpertionQA", limit: 50
    t.string "Reason", limit: 20
    t.text "ReasonNote"
    t.text "Feature"
    t.text "Changed"
    t.text "Comment"
    t.text "SpecialInst"
    t.text "QualityAlert"
    t.text "QualityAlertMemo"
    t.integer "Cost", default: 0
    t.integer "NofPiecesQA", default: 0
    t.integer "NofPiecesHT", default: 0
    t.integer "MachineID", default: 0
    t.integer "CustomerID", default: 0
    t.string "CustomerRefNum", limit: 50
    t.datetime "DateIssued"
    t.string "DispositionCustomer", limit: 30
    t.string "DispositionStackpole", limit: 30
    t.binary "Picture", limit: 4294967295
    t.float "Lengthofchange", limit: 53, default: 1.0, null: false
    t.string "Okdby", limit: 20
    t.boolean "ModWritten"
    t.boolean "SpecialInstWritten"
    t.boolean "HoldTag"
    t.boolean "TPCTag"
    t.boolean "CertTag"
    t.boolean "QualityATag"
    t.boolean "Closed"
    t.boolean "Supplier_Issue"
    t.boolean "ControlPlan"
    t.boolean "LayeredAudit"
    t.boolean "QualityMemo"
    t.string "FeatureNumber", limit: 25
    t.float "CurrentMinSpec", limit: 53
    t.float "CurrentMaxSpec", limit: 53
    t.float "TPCMinSpec", limit: 53
    t.float "TPCMaxSpec", limit: 53
    t.string "OperationNumber"
    t.text "body"
    t.string "operation", limit: 222
    t.integer "qty"
    t.integer "active_status"
    t.datetime "updated_at"
    t.datetime "created_at"
    t.index ["Closed"], name: "Closed"
    t.index ["Cost"], name: "Cost"
    t.index ["CustomerID"], name: "CustomerID"
    t.index ["CustomerRefNum"], name: "CustomerRefNum"
    t.index ["Date"], name: "Date"
    t.index ["DispositionCustomer"], name: "DispositionCustomer"
    t.index ["DispositionStackpole"], name: "DispositionStackpole"
    t.index ["Issuedby"], name: "Issuedby"
    t.index ["MachineID"], name: "MachineID"
    t.index ["NofPiecesHT"], name: "NofPiecesHT"
    t.index ["NofPiecesQA"], name: "NofPiecesQA"
    t.index ["OpertionHd"], name: "OpertionHd"
    t.index ["OpertionQA"], name: "OpertionQA"
    t.index ["OpertionSp"], name: "OpertionSp"
    t.index ["OpertionTp"], name: "OpertionTp"
    t.index ["PartID"], name: "PartID"
    t.index ["ProblemType"], name: "ProblemType"
    t.index ["Reason"], name: "Reason"
  end

  create_table "TblHoldTagSO", primary_key: "HTSOID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "TagNumber", default: 0
    t.datetime "DateClosed"
    t.string "OKtoProcessBy", limit: 8
    t.integer "SortAmt", default: 0
    t.string "SortBy", limit: 8
    t.integer "ReworkAmt", default: 0
    t.string "ReworkBy", limit: 8
    t.integer "ScrapAmt", default: 0
    t.string "ScrapBy", limit: 8
    t.integer "UseAsIsAmt"
    t.string "UseAsIsBy", limit: 8
    t.string "AuthorizedBy", limit: 8
    t.index ["TagNumber"], name: "TagNumber", unique: true
  end

  create_table "TblMailingPlantIssue", primary_key: "MailingPlantIssueID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "MailingListID", default: 0
    t.integer "PlantID", default: 0
    t.index ["MailingPlantIssueID"], name: "MailingPlantIssueID"
    t.index ["PlantID"], name: "PlantID"
  end

  create_table "TimeSelect", primary_key: "TimeID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Time", limit: 40
    t.string "TimeCode", limit: 40
    t.index ["TimeCode"], name: "TimeCode"
  end

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "country_of_origins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "fdate"
    t.integer "active_status"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pfeatures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "fdate"
    t.integer "active_status"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_features", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id"
    t.bigint "pfeature_id"
    t.integer "active_status"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pfeature_id"], name: "index_product_features_on_pfeature_id"
    t.index ["product_id"], name: "index_product_features_on_product_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "country_of_origin_id"
    t.datetime "pdate"
    t.integer "active_status"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_of_origin_id"], name: "index_products_on_country_of_origin_id"
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "active_status"
    t.integer "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tbPartlOp", primary_key: "PartOp", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "PartDeptID", default: 0
    t.integer "OpDeptID", default: 0
    t.index ["OpDeptID"], name: "OpDeptID"
    t.index ["PartDeptID"], name: "PartDeptID"
  end

  create_table "tblCustDispoistions", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Dispoisition", limit: 30
  end

  create_table "tblCustomerContacts", primary_key: "CustContID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "CustomerID", default: 0
    t.string "ContactFirstName", limit: 30
    t.string "ContactLastName", limit: 50
    t.string "PhoneNumber", limit: 30
    t.string "CellNumber", limit: 30
    t.string "ContactEmail", limit: 50
    t.index ["ContactLastName"], name: "ContactLastName"
    t.index ["CustomerID"], name: "CustomerID"
  end

  create_table "tblCustomerReturns", primary_key: "CustReturnID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "TagID"
    t.string "ReturnDisposition", limit: 50
    t.datetime "ReturnDate"
    t.integer "ReturnAmount", default: 0
    t.decimal "ReturnCost", precision: 19, scale: 4
    t.decimal "EstReturnCost", precision: 19, scale: 4
    t.text "Comments"
    t.index ["TagID"], name: "TagID"
  end

  create_table "tblCustomerSalesReps", primary_key: "CustSalesID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "CustomerID", default: 0
    t.string "SalesRepFirstName", limit: 30
    t.string "SalesRepLastName", limit: 50
    t.string "SalesRepPhoneNumber", limit: 30
    t.string "SalesRepEmail", limit: 50
    t.index ["CustomerID"], name: "CustomerID"
    t.index ["SalesRepLastName"], name: "SalesRepLastName"
  end

  create_table "tblCustomerSorters", primary_key: "CustSortID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "CustomerID", default: 0
    t.string "SortCompanyName", limit: 50
    t.string "SortContactFirstName", limit: 30
    t.string "SortContactLastName", limit: 50
    t.string "SortPhoneNumber", limit: 30
    t.string "SortEmail", limit: 50
    t.index ["CustomerID"], name: "CustomerID"
    t.index ["SortCompanyName"], name: "SortCompanyName"
    t.index ["SortContactLastName"], name: "SortContactLastName"
  end

  create_table "tblCustomers", primary_key: "CustomerID", id: :integer, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "CustName", limit: 50
    t.string "CustLocation", limit: 50
    t.boolean "Current", default: false
    t.index ["CustomerID"], name: "CustomerID"
  end

  create_table "tblFSDControl", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "ForceShutDown", default: false
  end

  create_table "tblHTPCReasons", primary_key: "ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Reason", limit: 20
  end

  create_table "tblMthSalesValue", primary_key: "SVID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Monthyears", limit: 25
    t.decimal "SalesValue", precision: 19, scale: 4
    t.string "Actual/Forcast", limit: 5
    t.integer "Monthnuber"
  end

  create_table "tblOpDept", primary_key: "OpDeptID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "PartDeptID", default: 0
    t.integer "OperationID", default: 0
    t.index ["OpDeptID"], name: "OpDeptID"
    t.index ["OperationID"], name: "OperationID"
    t.index ["PartDeptID"], name: "PartDeptID"
  end

  create_table "tblOpMachine", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "OpMachID", null: false, auto_increment: true
    t.integer "OperationID", default: 0
    t.integer "MachineID"
    t.index ["MachineID"], name: "MachineID"
    t.index ["OpMachID"], name: "OpMachID"
    t.index ["OperationID"], name: "OperationID"
  end

  create_table "tblOpScrapReasons", primary_key: "OpScrapReaID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "OperationID", default: 0
    t.integer "ScrapReasonID", default: 0
    t.index ["OpScrapReaID"], name: "OpScrapReaID"
    t.index ["OperationID"], name: "OperationID"
    t.index ["ScrapReasonID"], name: "ScrapReasonID"
  end

  create_table "tblPartMach", primary_key: "PartMach", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "PartDeptID", default: 0
    t.integer "OpMachID", default: 0
    t.index ["OpMachID"], name: "OpMachID"
    t.index ["PartDeptID"], name: "PartDeptID"
  end

  create_table "tblPartsCustomer", primary_key: "PartCustID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "PartID", limit: 16
    t.integer "CustID", default: 0
    t.index ["CustID"], name: "CustID"
    t.index ["PartCustID"], name: "PartCustID"
    t.index ["PartID"], name: "PartID"
  end

  create_table "tblPlantNames", primary_key: "PlantID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "PlantName", limit: 25, null: false
    t.string "PlantDescrp", limit: 50
    t.integer "Area", default: 0
    t.index ["PlantID"], name: "PlantID"
  end

  create_table "tblReportList", primary_key: "reportlistID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "reportname", limit: 50
    t.string "reportdescr", limit: 50
    t.index ["reportname"], name: "reportname"
  end

  create_table "tblReportmonths", primary_key: "monthlog", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "monthnuber", default: 0
    t.integer "monthyear", default: 0
    t.string "monthname", limit: 50
    t.datetime "Monthstart"
    t.datetime "Monthend"
    t.integer "Monthweeks", default: 0
    t.integer "Monthdays", default: 0
  end

  create_table "tblReportsender", primary_key: "ReportsenderID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "reportlistID", default: 0
    t.integer "MailingListID", default: 0
    t.index ["MailingListID"], name: "MailingListID"
    t.index ["ReportsenderID"], name: "ReportsenderID"
    t.index ["reportlistID"], name: "reportlistID"
  end

  create_table "tblReportsender2", primary_key: "ReportsenderID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "reportlistID", default: 0
    t.integer "MailingListID", default: 0
    t.index ["MailingListID"], name: "MailingListID"
    t.index ["ReportsenderID"], name: "ReportsenderID"
    t.index ["reportlistID"], name: "reportlistID"
  end

  create_table "tblShifts", primary_key: "Shift Number", id: :integer, default: 0, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Shift Name", limit: 10
    t.datetime "ShiftTimeStamp"
    t.datetime "ShiftTimeStart"
    t.datetime "ShiftTimeEnd"
  end

  create_table "tblSupplierChargebacks", primary_key: "ChargebackID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "TagID"
    t.string "ReturnDisposition", limit: 50
    t.datetime "ReturnDate"
    t.decimal "EstReturnCost", precision: 19, scale: 4
    t.integer "ReturnAmount", default: 0
    t.string "CostType"
    t.decimal "ReturnCost", precision: 19, scale: 4
    t.text "Comments"
    t.index ["TagID"], name: "TagID"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.string "name"
    t.bigint "role_id", default: 3
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "versions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 4294967295
    t.datetime "created_at"
    t.text "object_changes", limit: 4294967295
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "product_features", "pfeatures"
  add_foreign_key "product_features", "products"
  add_foreign_key "products", "country_of_origins"
  add_foreign_key "users", "roles"
end
