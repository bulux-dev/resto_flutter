///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
	late final TranslationsExceptionsEn exceptions = TranslationsExceptionsEn._(_root);
	late final TranslationsPromptEn prompt = TranslationsPromptEn._(_root);
	late final TranslationsFormEn form = TranslationsFormEn._(_root);
	late final TranslationsActionEn action = TranslationsActionEn._(_root);
	late final TranslationsPagesEn pages = TranslationsPagesEn._(_root);
	late final TranslationsEnumsEn enums = TranslationsEnumsEn._(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sign In'
	String get signIn => 'Sign In';

	/// en: 'Sign Up'
	String get signUp => 'Sign Up';

	/// en: 'Verify Email'
	String get verifyEmail => 'Verify Email';

	/// en: 'Customize Profile'
	String get customizeProfile => 'Customize Profile';

	/// en: 'Logo or Image'
	String get imageOrLogo => 'Logo or Image';

	/// en: 'Create New Password'
	String get createNewPassword => 'Create New Password';

	/// en: 'Items List'
	String get itemsList => 'Items List';

	/// en: 'Search Items Name'
	String get searchItemsName => 'Search Items Name';

	/// en: 'Category List'
	String get categoryList => 'Category List';

	/// en: 'Brand List'
	String get brandList => 'Brand List';

	/// en: 'Unit List'
	String get unitList => 'Unit List';

	/// en: 'Item Details'
	String get itemDetails => 'Item Details';

	/// en: 'Add Stock'
	String get addStock => 'Add Stock';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Terms & Conditions'
	String get termsAndConditions => 'Terms & Conditions';

	/// en: 'About Us'
	String get aboutUs => 'About Us';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'Full Name'
	String get fullName => 'Full Name';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Mobile Number'
	String get mobileNumber => 'Mobile Number';

	/// en: 'Address'
	String get address => 'Address';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Forgot password'
	String get forgotPassword => 'Forgot password';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Add Items'
	String get addItems => 'Add Items';

	/// en: 'Stock'
	String get stock => 'Stock';

	/// en: 'Current Stock'
	String get currentStock => 'Current Stock';

	/// en: 'Value'
	String get value => 'Value';

	/// en: 'Sales'
	String get sales => 'Sales';

	/// en: 'Purchase'
	String get purchase => 'Purchase';

	/// en: 'Price'
	String get price => 'Price';

	/// en: 'Image'
	String get image => 'Image';

	/// en: 'Upload'
	String get upload => 'Upload';

	/// en: 'Add New'
	String get addNew => 'Add New';

	/// en: 'Pricing'
	String get pricing => 'Pricing';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Category'
	String get category => 'Category';

	/// en: 'Brand'
	String get brand => 'Brand';

	/// en: 'Low Stock'
	String get lowStock => 'Low Stock';

	/// en: 'Unit'
	String get unit => 'Unit';

	/// en: 'Vat'
	String get vat => 'Vat';

	/// en: 'Tax type'
	String get taxType => 'Tax type';

	/// en: 'Purchase Price'
	String get purchasePrice => 'Purchase Price';

	/// en: 'Selling Price'
	String get sellingPrice => 'Selling Price';

	/// en: 'Whole Sale Price'
	String get wholeSalePrice => 'Whole Sale Price';

	/// en: 'Dealer Price'
	String get dealerPrice => 'Dealer Price';

	/// en: 'Search Here'
	String get searchHere => 'Search Here';

	/// en: 'Total Items'
	String get totalItems => 'Total Items';

	/// en: 'Stock Value'
	String get stockValue => 'Stock Value';

	/// en: 'Congratulation'
	String get congratulation => 'Congratulation';

	/// en: 'Sales List'
	String get salesList => 'Sales List';

	/// en: 'Search invoice no'
	String get searchInvoiceNumber => 'Search invoice no';

	/// en: 'View'
	String get view => 'View';

	/// en: 'For'
	String get kFor => 'For';

	/// en: 'Total'
	String get total => 'Total';

	/// en: 'Sub Total'
	String get subTotal => 'Sub Total';

	/// en: 'Insufficient stock, available stock'
	String get insufficientStockAvailableStock => 'Insufficient stock, available stock';

	/// en: 'Discount'
	String get discount => 'Discount';

	/// en: 'Select one'
	String get selectOne => 'Select one';

	/// en: 'All Category'
	String get allCategory => 'All Category';

	/// en: 'Details'
	String get details => 'Details';

	/// en: 'Parcel'
	String get parcel => 'Parcel';

	/// en: 'KOT'
	String get kot => 'KOT';

	/// en: 'Table'
	String get table => 'Table';

	/// en: 'Hold Table'
	String get holdTable => 'Hold Table';

	/// en: 'Capacity'
	String get capacity => 'Capacity';

	/// en: 'Ex: 10'
	String get commonHint => 'Ex: 10';

	/// en: 'Please enter quantity'
	String get pleaseEnterQuantity => 'Please enter quantity';

	/// en: 'Quantity must be greater than 0'
	String get quantityMustBeGreaterThanZero => 'Quantity must be greater than 0';

	/// en: 'Mobile'
	String get mobile => 'Mobile';

	/// en: 'Order No'
	String get orderNo => 'Order No';

	/// en: 'Date & Time'
	String get dateAndTime => 'Date & Time';

	/// en: 'Items'
	String get items => 'Items';

	/// en: 'Total Amount'
	String get totalAmount => 'Total Amount';

	/// en: 'Paid Amount'
	String get paidAmount => 'Paid Amount';

	/// en: 'Due Amount'
	String get dueAmount => 'Due Amount';

	/// en: 'Payment Type'
	String get paymentType => 'Payment Type';

	/// en: 'Thank you'
	String get thankYou => 'Thank you';

	/// en: 'Developed by ${domain: String}'
	String developedBy({required String domain}) => 'Developed by ${domain}';

	/// en: 'Price'
	String get qty => 'Price';

	/// en: 'Amount'
	String get amount => 'Amount';

	/// en: 'Dashboard'
	String get dashboard => 'Dashboard';

	/// en: 'Reports'
	String get reports => 'Reports';

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Parties'
	String get parties => 'Parties';

	/// en: 'Subscription Plan'
	String get subscriptionPlan => 'Subscription Plan';

	/// en: 'Estimate List'
	String get estimateList => 'Estimate List';

	/// en: 'Purchase List'
	String get purchaseList => 'Purchase List';

	/// en: 'Due List'
	String get dueList => 'Due List';

	/// en: 'Loss/Profit'
	String get lossOrProfit => 'Loss/Profit';

	/// en: 'Stocks'
	String get stocks => 'Stocks';

	/// en: 'Money In List'
	String get moneyInList => 'Money In List';

	/// en: 'Money Out List'
	String get moneyOutList => 'Money Out List';

	/// en: 'Transaction List'
	String get transactionList => 'Transaction List';

	/// en: 'Income'
	String get income => 'Income';

	/// en: 'Expense'
	String get expense => 'Expense';

	/// en: 'Quick View'
	String get quickView => 'Quick View';

	/// en: 'to'
	String get to => 'to';

	/// en: 'Total Sales'
	String get totalSales => 'Total Sales';

	/// en: 'Total Purchase'
	String get totalPurchase => 'Total Purchase';

	/// en: 'Hold Orders'
	String get holdNumber => 'Hold Orders';

	/// en: 'Total Expense'
	String get totalExpense => 'Total Expense';

	/// en: 'Loss'
	String get loss => 'Loss';

	/// en: 'Profit'
	String get profit => 'Profit';

	/// en: 'Recent Transactions'
	String get recentTransaction => 'Recent Transactions';

	/// en: 'Invoice'
	String get invoice => 'Invoice';

	/// en: 'Money In'
	String get moneyIn => 'Money In';

	/// en: 'Money Out'
	String get moneyOut => 'Money Out';

	/// en: 'Paid'
	String get paid => 'Paid';

	/// en: 'Due'
	String get due => 'Due';

	/// en: 'Partial'
	String get partial => 'Partial';

	/// en: 'Print'
	String get print => 'Print';

	/// en: 'Add Category'
	String get addCategory => 'Add Category';

	/// en: 'Add Expense'
	String get addExpense => 'Add Expense';

	/// en: 'Search...'
	String get search => 'Search...';

	/// en: 'View Details'
	String get viewDetails => 'View Details';

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Date'
	String get date => 'Date';

	/// en: 'Note'
	String get note => 'Note';

	/// en: 'Phone Number'
	String get phoneNumber => 'Phone Number';

	/// en: 'Type'
	String get type => 'Type';

	/// en: 'Select the contact type'
	String get selectContactSType => 'Select the contact type';

	/// en: 'More info'
	String get moreInfo => 'More info';

	/// en: 'Payment Received'
	String get paymentReceived => 'Payment Received';

	/// en: 'Select supplier'
	String get selectSupplier => 'Select supplier';

	/// en: 'Supplier'
	String get supplier => 'Supplier';

	/// en: 'Received'
	String get received => 'Received';

	/// en: 'Balance Due'
	String get balanceDue => 'Balance Due';

	/// en: 'Add Purchase'
	String get addPurchase => 'Add Purchase';

	/// en: 'Selected items will be cleared.'
	String get selectedItemWillBeCleared => 'Selected items will be cleared.';

	/// en: 'Search items name'
	String get searchItemName => 'Search items name';

	/// en: 'Bill Items'
	String get billItems => 'Bill Items';

	/// en: 'Add More Items'
	String get addMoreItems => 'Add More Items';

	/// en: 'Pay Amount'
	String get payAmount => 'Pay Amount';

	/// en: 'Sales Report'
	String get salesReport => 'Sales Report';

	/// en: 'Purchase Report'
	String get purchaseReport => 'Purchase Report';

	/// en: 'Stock Report'
	String get stockReport => 'Stock Report';

	/// en: 'Due Report'
	String get dueReport => 'Due Report';

	/// en: 'Due Collection Report'
	String get dueCollectionReport => 'Due Collection Report';

	/// en: 'Transaction Report'
	String get transactionReport => 'Transaction Report';

	/// en: 'Income Report'
	String get incomeReport => 'Income Report';

	/// en: 'Due Collection List'
	String get dueCollectionList => 'Due Collection List';

	/// en: 'Expense Reports'
	String get expenseReport => 'Expense Reports';

	/// en: 'Due Collection'
	String get dueCollection => 'Due Collection';

	/// en: 'My Profile'
	String get myProfile => 'My Profile';

	/// en: 'Printing Option'
	String get printingOption => 'Printing Option';

	/// en: 'Currency'
	String get currency => 'Currency';

	/// en: 'Payment Method'
	String get paymentMethod => 'Payment Method';

	/// en: 'Rate us'
	String get rateUs => 'Rate us';

	/// en: 'Terms & Conditions'
	String get termAndCondition => 'Terms & Conditions';

	/// en: 'Table List'
	String get tableList => 'Table List';

	/// en: 'Add Table'
	String get addTable => 'Add Table';

	/// en: 'VAT rate %'
	String get vatRate => 'VAT rate %';

	/// en: 'Action'
	String get action => 'Action';

	/// en: 'Status'
	String get status => 'Status';

	/// en: 'Active'
	String get active => 'Active';

	/// en: 'Inactive'
	String get inActive => 'Inactive';

	/// en: 'Sub VATs'
	String get subVats => 'Sub VATs';

	/// en: 'Add'
	String get add => 'Add';

	/// en: 'Tax rate %'
	String get taxRate => 'Tax rate %';

	/// en: 'Sub Taxes'
	String get subTaxes => 'Sub Taxes';

	/// en: 'group'
	String get group => 'group';

	/// en: 'VAT'
	String get VAT => 'VAT';

	/// en: 'Sub Tax List'
	String get subTaxList => 'Sub Tax List';

	/// en: 'VAT Percent'
	String get vatPercent => 'VAT Percent';

	/// en: 'Status cannot be inactive if VAT is on sales.'
	String get statusIsCannotInActive => 'Status cannot be inactive if VAT is on sales.';

	/// en: 'VAT On Sales'
	String get vatOnSales => 'VAT On Sales';

	/// en: 'Transaction'
	String get transaction => 'Transaction';

	/// en: 'Version ${version: String}'
	String version({required String version}) => 'Version ${version}';

	/// en: 'Hold'
	String get hold => 'Hold';

	/// en: 'Empty'
	String get empty => 'Empty';

	/// en: 'Michoacana SP'
	String get appName => 'Michoacana SP';

	/// en: 'Due Payment'
	String get duePayment => 'Due Payment';

	/// en: 'Orders'
	String get orders => 'Orders';

	/// en: 'All'
	String get all => 'All';

	/// en: 'Ingredient'
	String get ingredient => 'Ingredient';

	/// en: 'Menus'
	String get menus => 'Menus';

	/// en: 'Modifier Groups'
	String get modifierGroups => 'Modifier Groups';

	/// en: 'Item Modifiers'
	String get itemModifiers => 'Item Modifiers';

	/// en: 'Staff'
	String get staff => 'Staff';

	/// en: 'Coupon'
	String get coupon => 'Coupon';

	/// en: 'Pay'
	String get pay => 'Pay';

	/// en: 'Pending Orders'
	String get pendingOrders => 'Pending Orders';

	/// en: 'Order'
	String get order => 'Order';

	/// en: 'Pay Now'
	String get payNow => 'Pay Now';

	/// en: 'Add Staff'
	String get addStaff => 'Add Staff';

	/// en: 'Designation'
	String get designation => 'Designation';

	/// en: 'Item Added'
	String get itemAdded => 'Item Added';

	/// en: 'No Item Added'
	String get noItemAdded => 'No Item Added';

	/// en: 'Save & Print'
	String get saveNPrint => 'Save & Print';

	/// en: 'Allow multiple section'
	String get allowMultiSelection => 'Allow multiple section';

	/// en: 'Required'
	String get required => 'Required';

	/// en: 'Optional'
	String get optional => 'Optional';

	/// en: 'Allow Multiple Selection For Sales'
	String get allowMultiSelectionForSale => 'Allow Multiple Selection For Sales';

	/// en: 'Is Required'
	String get isRequired => 'Is Required';

	/// en: 'Modifier'
	String get modifier => 'Modifier';

	/// en: 'Full Payment'
	String get fullPayment => 'Full Payment';

	/// en: 'Payment'
	String get payment => 'Payment';

	/// en: 'Add Tip'
	String get addTip => 'Add Tip';

	/// en: 'Net Payable'
	String get netPayable => 'Net Payable';

	/// en: 'Receive Amount'
	String get receiveAmount => 'Receive Amount';

	/// en: 'Change Amount'
	String get changeAmount => 'Change Amount';

	/// en: 'Quotation List'
	String get quotationList => 'Quotation List';

	/// en: 'Add Quotation'
	String get addQuotation => 'Add Quotation';

	/// en: 'Convert'
	String get convert => 'Convert';

	/// en: 'Variations'
	String get variations => 'Variations';

	/// en: 'Instructions'
	String get instructions => 'Instructions';

	/// en: 'Unavailable'
	String get unavailable => 'Unavailable';

	/// en: 'Tip'
	String get tip => 'Tip';

	/// en: 'Sales Quotation Report'
	String get salesQuotationReport => 'Sales Quotation Report';

	/// en: 'Order Type'
	String get orderType => 'Order Type';

	/// en: 'Delivery Charge'
	String get deliveryCharge => 'Delivery Charge';

	/// en: 'Receipt No'
	String get receiptNo => 'Receipt No';

	/// en: 'Paid By'
	String get paidBy => 'Paid By';

	/// en: 'Received By'
	String get receivedBy => 'Received By';

	/// en: 'Payment Amount'
	String get paymentAmount => 'Payment Amount';

	/// en: 'Remaining Due'
	String get remainingDue => 'Remaining Due';

	/// en: 'Role & Permission'
	String get roleNPermission => 'Role & Permission';

	/// en: 'SL'
	String get sl => 'SL';

	/// en: 'Features'
	String get features => 'Features';

	/// en: 'Create'
	String get create => 'Create';

	/// en: 'Update'
	String get update => 'Update';

	/// en: 'Quotations'
	String get quotations => 'Quotations';

	/// en: 'Restaurant'
	String get restaurant => 'Restaurant';
}

// Path: exceptions
class TranslationsExceptionsEn {
	TranslationsExceptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Something went wrong, please try again'
	String get somethingWentWrong => 'Something went wrong, please try again';

	/// en: 'No category found! Please try adding a category.'
	String get noCategoryFound => 'No category found!\n Please try adding a category.';

	/// en: 'Do you want to delete this category?'
	String get doYouWantToDeleteThisCategory => 'Do you want to delete this category?';

	/// en: 'No brand found! Please try adding a brand.'
	String get noBrandFound => 'No brand found!\n Please try adding a brand.';

	/// en: 'Do you want to delete this brand?'
	String get doYouWantToDeleteThisBrand => 'Do you want to delete this brand?';

	/// en: 'No item stock found! Please try adding an item.'
	String get noItemStockFound => 'No item stock found!\n Please try adding an item.';

	/// en: 'No unit found! Please try adding an unit.'
	String get noUnitFound => 'No unit found!\n Please try adding an unit.';

	/// en: 'Do you want to delete this unit?'
	String get doYouDeleteThisUnit => 'Do you want to delete this unit?';

	/// en: 'No sale found! Please try adding a sale.'
	String get noSaleFoundPleaseSAddProduct => 'No sale found!\n Please try adding a sale.';

	/// en: 'Do you want to delete this sale?'
	String get doYouWantToDeleteThisSale => 'Do you want to delete this sale?';

	/// en: 'Please add items to cart first'
	String get pleaseAddItemToTheCartFirst => 'Please add items to cart first';

	/// en: 'No Items Added'
	String get noItemAdded => 'No Items Added';

	/// en: 'Cannot edit other table.'
	String get cannotEditOthersTable => 'Cannot edit other table.';

	/// en: 'Table is already booked.'
	String get tableIsAlreadyBlocked => 'Table is already booked.';

	/// en: 'Failed to get customer details.'
	String get failedToGetCustomerDetails => 'Failed to get customer details.';

	/// en: 'No Tables found! Please try adding a table.'
	String get noTableFoundPleaseTryAgain => 'No Tables found!\n Please try adding a table.';

	/// en: 'No due invoice found! You can see due invoices when available.'
	String get noDueCollectionFound => 'No due invoice found!\n You can see due invoices when available.';

	/// en: 'No expense found! Please try adding an expense.'
	String get noExpenseFoundPleaseTryAddingExpense => 'No expense found!\n Please try adding an expense.';

	/// en: 'Do you want to delete this expense?'
	String get doYouWantToDeleteThisExpense => 'Do you want to delete this expense?';

	/// en: 'No expense category found! Please try adding an expense category.'
	String get noExpenseCategoryFound => 'No expense category found!\n Please try adding an expense category.';

	/// en: 'No transactions found, please try again later!'
	String get noTransactionFound => 'No transactions found, please try again later!';

	/// en: 'Please select a category'
	String get pleaseSelectACategory => 'Please select a category';

	/// en: 'No income found! Please try adding an income'
	String get noIncomeFound => 'No income found!\n Please try adding an income';

	/// en: 'Do you want to delete this income?'
	String get doYouWantToDeleteThisIncome => 'Do you want to delete this income?';

	/// en: 'No income category found! Please try adding an income category.'
	String get noIncomeCategoryFoundAddingAIncome => 'No income category found!\n Please try adding an income category.';

	/// en: 'No item found! Please try adding an item.'
	String get noItemFoundPleaseTryAddingItem => 'No item found!\n Please try adding an item.';

	/// en: 'No parties found'
	String get noPartiesFound => 'No parties found';

	/// en: 'Do you want to delete this party'
	String get doYouWantToDeleteThisParty => 'Do you want to delete this party';

	/// en: 'No ledger found! Please try adding a ${transactionType: String}'
	String noLedgerFound({required String transactionType}) => 'No ledger found!\n Please try adding a ${transactionType}';

	/// en: 'Are you sure you want to delete this ${taxType: String}?'
	String areYouSureYouSureWantToDeleteThisTaxType({required String taxType}) => 'Are you sure you want to delete this ${taxType}?';

	/// en: 'No item found! Please try adding an purchase.'
	String get noItemFoundPleaseSTryAddingAnPurchase => 'No item found!\n Please try adding an purchase.';

	/// en: 'Do you want to delete this purchase?'
	String get doYouWantToDeleteThisPurchase => 'Do you want to delete this purchase?';

	/// en: 'No transaction found! You see transactions here when available.'
	String get noTransactionFoundYouSeeTransactionHereWhenAvailable => 'No transaction found!\n You see transactions here when available.';

	/// en: 'No sale found! Please try adding a sale.'
	String get noSaleFoundPleaseTryAddingSale => 'No sale found!\n Please try adding a sale.';

	/// en: 'No purchase found! Please try adding a purchase.'
	String get noPurchaseFoundPleaseTryAddingPurchase => 'No purchase found!\n Please try adding a purchase.';

	/// en: 'No item income found! You can see income data when available.'
	String get noItemIncomeFound => 'No item income found!\n You can see income data when available.';

	/// en: 'No item expense found! You can see expense data when available.'
	String get noItemExpenseFound => 'No item expense found!\n You can see expense data when available.';

	/// en: 'No item due invoice found! You can see due invoices when available.'
	String get noItemDueInvoiceFound => 'No item due invoice found!\n You can see due invoices when available.';

	/// en: ''No item due collection invoice found! You can see due collection invoices when available.'
	String get noItemDueCollectionInvoiceFound => '\'No item due collection invoice found!\n You can see due collection invoices when available.';

	/// en: 'Do you want to delete this table?''
	String get doYouWantToDeleteThisTable => 'Do you want to delete this table?\'';

	/// en: 'This VAT is being used on sales!'
	String get thisVatIsBeingUsedOnSales => 'This VAT is being used on sales!';

	/// en: 'No payment method found! Please try adding a payment method.'
	String get noPaymentMethodFoundPleaseTryAddingAPaymentMethod => 'No payment method found!\n Please try adding a payment method.';

	/// en: 'Please select a customer first.'
	String get pleaseSelectACustomerFirst => 'Please select a customer first.';

	/// en: 'Please select a table to create a kot.'
	String get pleaseSelectATableToCreateAKot => 'Please select a table to create a kot.';

	/// en: 'No staff found!\n Please try adding a staff'
	String get noStaffFound => 'No staff found!\n Please try adding a staff';

	/// en: 'No ingredient found!\n Please try adding a ingredient.'
	String get noIngredientFound => 'No ingredient found!\n Please try adding a ingredient.';

	/// en: 'Received amount should not be greater than payable amount'
	String get exceedsPaymentAmount => 'Received amount should not be greater than payable amount';

	/// en: 'No item modifier found!\n Please try adding a item modifier.'
	String get noItemModifierFound => 'No item modifier found!\n Please try adding a item modifier.';

	/// en: 'No modifier group found!\n Please try adding a modifier group.'
	String get noModifierGroupFound => 'No modifier group found!\n Please try adding a modifier group.';

	/// en: 'No options found!'
	String get noOptionsFound => 'No options found!';

	/// en: 'You can only select up to 5 images.'
	String get maxImageCountLimit => 'You can only select up to 5 images.';

	/// en: 'No quotation found!\n Please try adding a quotation.'
	String get noQuotationFound => 'No quotation found!\n Please try adding a quotation.';

	/// en: 'No permitted user found!\n Please try adding an user.'
	String get noPermittedUserFound => 'No permitted user found!\n Please try adding an user.';
}

// Path: prompt
class TranslationsPromptEn {
	TranslationsPromptEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPromptLogoutEn logout = TranslationsPromptLogoutEn._(_root);
	late final TranslationsPromptUnsavedWarningEn unsavedWarning = TranslationsPromptUnsavedWarningEn._(_root);
	late final TranslationsPromptVerifyEn verify = TranslationsPromptVerifyEn._(_root);
	late final TranslationsPromptSubscriptionExpiredEn subscriptionExpired = TranslationsPromptSubscriptionExpiredEn._(_root);
	late final TranslationsPromptItemsEn items = TranslationsPromptItemsEn._(_root);
	late final TranslationsPromptCheckInternetEn checkInternet = TranslationsPromptCheckInternetEn._(_root);
	late final TranslationsPromptBackEn back = TranslationsPromptBackEn._(_root);
	late final TranslationsPromptStockModelSheetEn stockModelSheet = TranslationsPromptStockModelSheetEn._(_root);
	late final TranslationsPromptPaymentMethodEn paymentMethod = TranslationsPromptPaymentMethodEn._(_root);
	late final TranslationsPromptExtMsgEn extMsg = TranslationsPromptExtMsgEn._(_root);

	/// en: 'Do you want to delete this staff?'
	String get deleteStaff => 'Do you want to delete this staff?';

	/// en: 'Do you want to delete this ingredient?'
	String get deleteIngredient => 'Do you want to delete this ingredient?';

	/// en: 'Do you want to delete this item modifier?'
	String get deleteItemModifier => 'Do you want to delete this item modifier?';

	/// en: 'Do you want to delete this modifier group?'
	String get deleteModifierGroup => 'Do you want to delete this modifier group?';

	/// en: 'Do you want to delete this quotation?'
	String get deleteQuotation => 'Do you want to delete this quotation?';
}

// Path: form
class TranslationsFormEn {
	TranslationsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormFullNameEn fullName = TranslationsFormFullNameEn._(_root);
	late final TranslationsFormEmailEn email = TranslationsFormEmailEn._(_root);
	late final TranslationsFormPasswordEn password = TranslationsFormPasswordEn._(_root);
	late final TranslationsFormConfirmPasswordEn confirmPassword = TranslationsFormConfirmPasswordEn._(_root);
	late final TranslationsFormOtpEn otp = TranslationsFormOtpEn._(_root);
	late final TranslationsFormProfileEn profile = TranslationsFormProfileEn._(_root);
	late final TranslationsFormVatEn vat = TranslationsFormVatEn._(_root);
	late final TranslationsFormCategoryEn category = TranslationsFormCategoryEn._(_root);
	late final TranslationsFormItemsEn items = TranslationsFormItemsEn._(_root);
	late final TranslationsFormItemCartEn itemCart = TranslationsFormItemCartEn._(_root);
	late final TranslationsFormSalesEn sales = TranslationsFormSalesEn._(_root);
	late final TranslationsFormBillEn bill = TranslationsFormBillEn._(_root);
	late final TranslationsFormSupplierEn supplier = TranslationsFormSupplierEn._(_root);
	late final TranslationsFormPhoneEn phone = TranslationsFormPhoneEn._(_root);
	late final TranslationsFormAddressEn address = TranslationsFormAddressEn._(_root);
	late final TranslationsFormPaymentEn payment = TranslationsFormPaymentEn._(_root);
	late final TranslationsFormExpenseEn expense = TranslationsFormExpenseEn._(_root);
	late final TranslationsFormIncomeEn income = TranslationsFormIncomeEn._(_root);
	late final TranslationsFormNoteEn note = TranslationsFormNoteEn._(_root);
	late final TranslationsFormPartiesEn parties = TranslationsFormPartiesEn._(_root);
	late final TranslationsFormTableEn table = TranslationsFormTableEn._(_root);
	late final TranslationsFormDesignationEn designation = TranslationsFormDesignationEn._(_root);
	late final TranslationsFormIngredientNameEn ingredientName = TranslationsFormIngredientNameEn._(_root);
	late final TranslationsFormItemEn item = TranslationsFormItemEn._(_root);
	late final TranslationsFormModifierGroupEn modifierGroup = TranslationsFormModifierGroupEn._(_root);
	late final TranslationsFormDescriptionEn description = TranslationsFormDescriptionEn._(_root);
	late final TranslationsFormStaffEn staff = TranslationsFormStaffEn._(_root);
	late final TranslationsFormLoginUserNameEn loginUserName = TranslationsFormLoginUserNameEn._(_root);
}

// Path: action
class TranslationsActionEn {
	TranslationsActionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Select'
	String get select => 'Select';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Verify'
	String get verify => 'Verify';

	/// en: 'Sign In'
	String get signIn => _root.common.signIn;

	/// en: 'Sign Up'
	String get signUp => _root.common.signUp;

	/// en: 'Continue'
	String get kContinue => 'Continue';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'Okay'
	String get okay => 'Okay';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Try Again'
	String get tryAgain => 'Try Again';

	/// en: 'Reset'
	String get reset => 'Reset';

	/// en: 'Apply'
	String get apply => 'Apply';

	/// en: 'Adjust Stock'
	String get stockAdjust => 'Adjust Stock';

	/// en: 'Add More Items'
	String get addMoreItems => 'Add More Items';

	/// en: 'Hold'
	String get hold => 'Hold';

	/// en: 'Parcel'
	String get parcel => _root.common.parcel;

	/// en: 'Buy Now'
	String get buyNow => 'Buy Now';

	/// en: 'View All'
	String get viewAll => 'View All';

	/// en: 'View ledger'
	String get viewLedger => 'View ledger';

	/// en: 'Submit'
	String get submit => 'Submit';

	/// en: 'Selected'
	String get selected => 'Selected';

	/// en: 'Add to Cart'
	String get addToCart => 'Add to Cart';

	/// en: 'Select All'
	String get selectAll => 'Select All';

	/// en: 'Update'
	String get update => _root.common.update;

	/// en: 'Add Role'
	String get addRole => 'Add Role';
}

// Path: pages
class TranslationsPagesEn {
	TranslationsPagesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesLanguageEn language = TranslationsPagesLanguageEn._(_root);
	late final TranslationsPagesOnboardEn onboard = TranslationsPagesOnboardEn._(_root);
	late final TranslationsPagesSignInEn signIn = TranslationsPagesSignInEn._(_root);
	late final TranslationsPagesSignUpEn signUp = TranslationsPagesSignUpEn._(_root);
	late final TranslationsPagesForgotPasswordEn forgotPassword = TranslationsPagesForgotPasswordEn._(_root);
	late final TranslationsPagesOtpVerificationEn otpVerification = TranslationsPagesOtpVerificationEn._(_root);
	late final TranslationsPagesResetPasswordEn resetPassword = TranslationsPagesResetPasswordEn._(_root);
	late final TranslationsPagesItemsEn items = TranslationsPagesItemsEn._(_root);
	late final TranslationsPagesCategoryEn category = TranslationsPagesCategoryEn._(_root);
	late final TranslationsPagesBrandEn brand = TranslationsPagesBrandEn._(_root);
	late final TranslationsPagesUnitEn unit = TranslationsPagesUnitEn._(_root);
	late final TranslationsPagesStockEn stock = TranslationsPagesStockEn._(_root);
	late final TranslationsPagesAboutUsEn aboutUs = TranslationsPagesAboutUsEn._(_root);
	late final TranslationsPagesPrivacyPolicyEn privacyPolicy = TranslationsPagesPrivacyPolicyEn._(_root);
	late final TranslationsPagesTermAndConditionEn termAndCondition = TranslationsPagesTermAndConditionEn._(_root);
	late final TranslationsPagesOrdersEn orders = TranslationsPagesOrdersEn._(_root);
	late final TranslationsPagesOnlinePaymentEn onlinePayment = TranslationsPagesOnlinePaymentEn._(_root);
	late final TranslationsPagesPaymentStatusEn paymentStatus = TranslationsPagesPaymentStatusEn._(_root);
	late final TranslationsPagesConfirmationDialogEn confirmationDialog = TranslationsPagesConfirmationDialogEn._(_root);
	late final TranslationsPagesPaymentEn payment = TranslationsPagesPaymentEn._(_root);
	late final TranslationsPagesSubscriptionPlanEn subscriptionPlan = TranslationsPagesSubscriptionPlanEn._(_root);
	late final TranslationsPagesInvoicePreviewEn invoicePreview = TranslationsPagesInvoicePreviewEn._(_root);
	late final TranslationsPagesCurrencyEn currency = TranslationsPagesCurrencyEn._(_root);
	late final TranslationsPagesDashboardEn dashboard = TranslationsPagesDashboardEn._(_root);
	late final TranslationsPagesDueEn due = TranslationsPagesDueEn._(_root);
	late final TranslationsPagesExpenseEn expense = TranslationsPagesExpenseEn._(_root);
	late final TranslationsPagesLossProfitEn lossProfit = TranslationsPagesLossProfitEn._(_root);
	late final TranslationsPagesIncomeEn income = TranslationsPagesIncomeEn._(_root);
	late final TranslationsPagesMoneyInEn moneyIn = TranslationsPagesMoneyInEn._(_root);
	late final TranslationsPagesMoneyOutEn moneyOut = TranslationsPagesMoneyOutEn._(_root);
	late final TranslationsPagesProfileEn profile = TranslationsPagesProfileEn._(_root);
	late final TranslationsPagesPartiesEn parties = TranslationsPagesPartiesEn._(_root);
	late final TranslationsPagesLedgerEn ledger = TranslationsPagesLedgerEn._(_root);
	late final TranslationsPagesPurchaseEn purchase = TranslationsPagesPurchaseEn._(_root);
	late final TranslationsPagesReportsEn reports = TranslationsPagesReportsEn._(_root);
	late final TranslationsPagesTableEn table = TranslationsPagesTableEn._(_root);
	late final TranslationsPagesTaxEn tax = TranslationsPagesTaxEn._(_root);
	late final TranslationsPagesVatEn vat = TranslationsPagesVatEn._(_root);
	late final TranslationsPagesOrderListEn orderList = TranslationsPagesOrderListEn._(_root);
	late final TranslationsPagesStaffsEn staffs = TranslationsPagesStaffsEn._(_root);
	late final TranslationsPagesIngredientEn ingredient = TranslationsPagesIngredientEn._(_root);
	late final TranslationsPagesItemModifierEn itemModifier = TranslationsPagesItemModifierEn._(_root);
	late final TranslationsPagesQuotationEn quotation = TranslationsPagesQuotationEn._(_root);
	late final TranslationsPagesRolePermissionEn rolePermission = TranslationsPagesRolePermissionEn._(_root);
}

// Path: enums
class TranslationsEnumsEn {
	TranslationsEnumsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsEnumsDropdownDateFilterEn dropdownDateFilter = TranslationsEnumsDropdownDateFilterEn._(_root);
	late final TranslationsEnumsOrderTypesEn orderTypes = TranslationsEnumsOrderTypesEn._(_root);
	late final TranslationsEnumsPaymentStatusEn paymentStatus = TranslationsEnumsPaymentStatusEn._(_root);
	late final TranslationsEnumsStaffTypesEn staffTypes = TranslationsEnumsStaffTypesEn._(_root);
	late final TranslationsEnumsItemFoodTypesEn itemFoodTypes = TranslationsEnumsItemFoodTypesEn._(_root);
	late final TranslationsEnumsItemTypesEn itemTypes = TranslationsEnumsItemTypesEn._(_root);
	late final TranslationsEnumsQuotationStatusEn quotationStatus = TranslationsEnumsQuotationStatusEn._(_root);
}

// Path: prompt.logout
class TranslationsPromptLogoutEn {
	TranslationsPromptLogoutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Logout'
	String get title => _root.common.logout;

	/// en: 'Are you sure to logout?'
	String get message => 'Are you sure to logout?';
}

// Path: prompt.unsavedWarning
class TranslationsPromptUnsavedWarningEn {
	TranslationsPromptUnsavedWarningEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Do you want to go back?'
	String get title => 'Do you want to go back?';

	/// en: 'Fields that are changed may not be saved!'
	String get message => 'Fields that are changed may not be saved!';
}

// Path: prompt.verify
class TranslationsPromptVerifyEn {
	TranslationsPromptVerifyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Verify Your Email'
	String get title => 'Verify Your Email';

	/// en: 'We have sent a verification code email${emailSpan}\n\nIt may be that the mail ended up in your spam folder.'
	TextSpan description({required InlineSpan emailSpan}) => TextSpan(children: [
		const TextSpan(text: 'We have sent a verification code email'),
		emailSpan,
		const TextSpan(text: '\n\nIt may be that the mail ended up in your spam folder.'),
	]);
}

// Path: prompt.subscriptionExpired
class TranslationsPromptSubscriptionExpiredEn {
	TranslationsPromptSubscriptionExpiredEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Subscription Expired!'
	String get title => 'Subscription Expired!';

	/// en: 'Please subscribe to continue.'
	String get message => 'Please subscribe to continue.';

	/// en: 'Subscribe'
	String get action => 'Subscribe';
}

// Path: prompt.items
class TranslationsPromptItemsEn {
	TranslationsPromptItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPromptItemsDeleteEn delete = TranslationsPromptItemsDeleteEn._(_root);
	late final TranslationsPromptItemsFilterEn filter = TranslationsPromptItemsFilterEn._(_root);
}

// Path: prompt.checkInternet
class TranslationsPromptCheckInternetEn {
	TranslationsPromptCheckInternetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No Internet Connection'
	String get title => 'No Internet Connection';

	/// en: 'Please check your Wi-Fi mobile network connection and try again'
	String get message => 'Please check your Wi-Fi mobile network connection and try again';
}

// Path: prompt.back
class TranslationsPromptBackEn {
	TranslationsPromptBackEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Press back again to exit.'
	String get title => 'Press back again to exit.';
}

// Path: prompt.stockModelSheet
class TranslationsPromptStockModelSheetEn {
	TranslationsPromptStockModelSheetEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Stock'
	String get title => 'Add New Stock';
}

// Path: prompt.paymentMethod
class TranslationsPromptPaymentMethodEn {
	TranslationsPromptPaymentMethodEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Do you want to delete this payment method?'
	String get title => 'Do you want to delete this payment method?';
}

// Path: prompt.extMsg
class TranslationsPromptExtMsgEn {
	TranslationsPromptExtMsgEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'KOT saved successfully'
	String get kotSavedSuccessfully => 'KOT saved successfully';
}

// Path: form.fullName
class TranslationsFormFullNameEn {
	TranslationsFormFullNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Full Name'
	String get label => _root.common.fullName;

	/// en: 'Enter Full Name'
	String get hint => 'Enter ${_root.common.fullName}';

	late final TranslationsFormFullNameErrorsEn errors = TranslationsFormFullNameErrorsEn._(_root);
}

// Path: form.email
class TranslationsFormEmailEn {
	TranslationsFormEmailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Email'
	String get label => _root.common.email;

	/// en: 'Enter your Email'
	String get hint => 'Enter your ${_root.common.email}';

	late final TranslationsFormEmailErrorsEn errors = TranslationsFormEmailErrorsEn._(_root);
}

// Path: form.password
class TranslationsFormPasswordEn {
	TranslationsFormPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Password'
	String get label => _root.common.password;

	/// en: '* * * * * * * *'
	String get hint => '* * * * * * * *';

	late final TranslationsFormPasswordErrorsEn errors = TranslationsFormPasswordErrorsEn._(_root);
}

// Path: form.confirmPassword
class TranslationsFormConfirmPasswordEn {
	TranslationsFormConfirmPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Confirm Password'
	String get label => 'Confirm Password';

	/// en: '* * * * * * * *'
	String get hint => '* * * * * * * *';

	late final TranslationsFormConfirmPasswordErrorsEn errors = TranslationsFormConfirmPasswordErrorsEn._(_root);
}

// Path: form.otp
class TranslationsFormOtpEn {
	TranslationsFormOtpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormOtpErrorsEn errors = TranslationsFormOtpErrorsEn._(_root);
}

// Path: form.profile
class TranslationsFormProfileEn {
	TranslationsFormProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormProfileBusinessCategoryEn businessCategory = TranslationsFormProfileBusinessCategoryEn._(_root);
	late final TranslationsFormProfileShopOrStoreEn shopOrStore = TranslationsFormProfileShopOrStoreEn._(_root);
	late final TranslationsFormProfileOpeningBalanceEn openingBalance = TranslationsFormProfileOpeningBalanceEn._(_root);
	late final TranslationsFormProfileVatGstTitleEn vatGstTitle = TranslationsFormProfileVatGstTitleEn._(_root);
	late final TranslationsFormProfileVatGstNumberEn vatGstNumber = TranslationsFormProfileVatGstNumberEn._(_root);
}

// Path: form.vat
class TranslationsFormVatEn {
	TranslationsFormVatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormVatNameEn name = TranslationsFormVatNameEn._(_root);
	late final TranslationsFormVatSubVatEn subVat = TranslationsFormVatSubVatEn._(_root);
	late final TranslationsFormVatRateEn rate = TranslationsFormVatRateEn._(_root);
}

// Path: form.category
class TranslationsFormCategoryEn {
	TranslationsFormCategoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Category'
	String get label => _root.common.category;

	/// en: 'Select item category'
	String get hint => 'Select item category';

	late final TranslationsFormCategoryErrorEn error = TranslationsFormCategoryErrorEn._(_root);
}

// Path: form.items
class TranslationsFormItemsEn {
	TranslationsFormItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormItemsBarcodeEn barcode = TranslationsFormItemsBarcodeEn._(_root);
	late final TranslationsFormItemsItemNameEn itemName = TranslationsFormItemsItemNameEn._(_root);
	late final TranslationsFormItemsItemCategoryEn itemCategory = TranslationsFormItemsItemCategoryEn._(_root);
	late final TranslationsFormItemsBrandEn brand = TranslationsFormItemsBrandEn._(_root);
	late final TranslationsFormItemsUnitEn unit = TranslationsFormItemsUnitEn._(_root);
	late final TranslationsFormItemsStockEn stock = TranslationsFormItemsStockEn._(_root);
	late final TranslationsFormItemsLowStockEn lowStock = TranslationsFormItemsLowStockEn._(_root);
	late final TranslationsFormItemsPurchasePriceEn purchasePrice = TranslationsFormItemsPurchasePriceEn._(_root);
	late final TranslationsFormItemsSalePriceEn salePrice = TranslationsFormItemsSalePriceEn._(_root);
	late final TranslationsFormItemsTotalSalePriceEn totalSalePrice = TranslationsFormItemsTotalSalePriceEn._(_root);
	late final TranslationsFormItemsWholeSalePriceEn wholeSalePrice = TranslationsFormItemsWholeSalePriceEn._(_root);
	late final TranslationsFormItemsDealerPriceEn dealerPrice = TranslationsFormItemsDealerPriceEn._(_root);
	late final TranslationsFormItemsDiscountEn discount = TranslationsFormItemsDiscountEn._(_root);
	late final TranslationsFormItemsApplicableTaxEn applicableTax = TranslationsFormItemsApplicableTaxEn._(_root);
	late final TranslationsFormItemsVatTypeEn vatType = TranslationsFormItemsVatTypeEn._(_root);
	late final TranslationsFormItemsMenuEn menu = TranslationsFormItemsMenuEn._(_root);
	late final TranslationsFormItemsModifierItemsEn modifierItems = TranslationsFormItemsModifierItemsEn._(_root);
	late final TranslationsFormItemsPreparationTimeEn preparationTime = TranslationsFormItemsPreparationTimeEn._(_root);
	late final TranslationsFormItemsVariationEn variation = TranslationsFormItemsVariationEn._(_root);
}

// Path: form.itemCart
class TranslationsFormItemCartEn {
	TranslationsFormItemCartEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ex: 10'
	String get hint => _root.common.commonHint;

	late final TranslationsFormItemCartErrorEn error = TranslationsFormItemCartErrorEn._(_root);
}

// Path: form.sales
class TranslationsFormSalesEn {
	TranslationsFormSalesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormSalesAutoGenerateInvoiceEn autoGenerateInvoice = TranslationsFormSalesAutoGenerateInvoiceEn._(_root);
	late final TranslationsFormSalesDateEn date = TranslationsFormSalesDateEn._(_root);
	late final TranslationsFormSalesCustomerEn customer = TranslationsFormSalesCustomerEn._(_root);
	late final TranslationsFormSalesPhoneEn phone = TranslationsFormSalesPhoneEn._(_root);
	late final TranslationsFormSalesAddressEn address = TranslationsFormSalesAddressEn._(_root);
	late final TranslationsFormSalesDeliveryChargeEn deliveryCharge = TranslationsFormSalesDeliveryChargeEn._(_root);
	late final TranslationsFormSalesTableEn table = TranslationsFormSalesTableEn._(_root);
	late final TranslationsFormSalesWaiterEn waiter = TranslationsFormSalesWaiterEn._(_root);
}

// Path: form.bill
class TranslationsFormBillEn {
	TranslationsFormBillEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bill No'
	String get label => 'Bill No';

	/// en: 'P-00001'
	String get hint => 'P-00001';
}

// Path: form.supplier
class TranslationsFormSupplierEn {
	TranslationsFormSupplierEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Supplier'
	String get label => 'Supplier';

	/// en: 'Select Supplier'
	String get hint => 'Select Supplier';

	late final TranslationsFormSupplierExtraEn extra = TranslationsFormSupplierExtraEn._(_root);
}

// Path: form.phone
class TranslationsFormPhoneEn {
	TranslationsFormPhoneEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Phone Number'
	String get label => 'Phone Number';

	/// en: 'Enter phone number'
	String get hint => 'Enter phone number';

	late final TranslationsFormPhoneErrorsEn errors = TranslationsFormPhoneErrorsEn._(_root);
}

// Path: form.address
class TranslationsFormAddressEn {
	TranslationsFormAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Address'
	String get label => 'Address';

	/// en: 'Enter address'
	String get hint => 'Enter address';
}

// Path: form.payment
class TranslationsFormPaymentEn {
	TranslationsFormPaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Name'
	String get label => 'Name';

	/// en: 'Enter payment name'
	String get hint => 'Enter payment name';

	late final TranslationsFormPaymentErrorEn error = TranslationsFormPaymentErrorEn._(_root);
}

// Path: form.expense
class TranslationsFormExpenseEn {
	TranslationsFormExpenseEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Expense Category'
	String get label => 'Expense Category';

	/// en: 'Select expense category'
	String get hint => 'Select expense category';

	late final TranslationsFormExpenseErrorEn error = TranslationsFormExpenseErrorEn._(_root);
}

// Path: form.income
class TranslationsFormIncomeEn {
	TranslationsFormIncomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Income Category'
	String get label => 'Income Category';

	/// en: 'Enter category name'
	String get hint => 'Enter category name';

	late final TranslationsFormIncomeErrorEn error = TranslationsFormIncomeErrorEn._(_root);
	late final TranslationsFormIncomeIncomeTitleEn incomeTitle = TranslationsFormIncomeIncomeTitleEn._(_root);
	late final TranslationsFormIncomeIncomeCategoryEn incomeCategory = TranslationsFormIncomeIncomeCategoryEn._(_root);
	late final TranslationsFormIncomePaymentEn payment = TranslationsFormIncomePaymentEn._(_root);
}

// Path: form.note
class TranslationsFormNoteEn {
	TranslationsFormNoteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Note (Optional)'
	String get label => 'Note (Optional)';

	/// en: 'Enter Text'
	String get hint => 'Enter Text';
}

// Path: form.parties
class TranslationsFormPartiesEn {
	TranslationsFormPartiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormPartiesPartyNameEn partyName = TranslationsFormPartiesPartyNameEn._(_root);
	late final TranslationsFormPartiesPartyPhoneEn partyPhone = TranslationsFormPartiesPartyPhoneEn._(_root);
}

// Path: form.table
class TranslationsFormTableEn {
	TranslationsFormTableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormTableNameEn name = TranslationsFormTableNameEn._(_root);
	late final TranslationsFormTableCapacityEn capacity = TranslationsFormTableCapacityEn._(_root);
}

// Path: form.designation
class TranslationsFormDesignationEn {
	TranslationsFormDesignationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Designation'
	String get label => _root.common.designation;

	/// en: 'Select a designation'
	String get hint => 'Select a designation';

	late final TranslationsFormDesignationErrorsEn errors = TranslationsFormDesignationErrorsEn._(_root);
}

// Path: form.ingredientName
class TranslationsFormIngredientNameEn {
	TranslationsFormIngredientNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ingredient Name'
	String get label => 'Ingredient Name';

	/// en: 'Enter ingredient name'
	String get hint => 'Enter ingredient name';

	late final TranslationsFormIngredientNameErrorsEn errors = TranslationsFormIngredientNameErrorsEn._(_root);
}

// Path: form.item
class TranslationsFormItemEn {
	TranslationsFormItemEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Item'
	String get label => 'Item';

	/// en: 'Select item'
	String get hint => 'Select item';

	late final TranslationsFormItemErrorsEn errors = TranslationsFormItemErrorsEn._(_root);
}

// Path: form.modifierGroup
class TranslationsFormModifierGroupEn {
	TranslationsFormModifierGroupEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Modifier Group'
	String get label => 'Modifier Group';

	/// en: 'Select modifier group'
	String get hint => 'Select modifier group';

	late final TranslationsFormModifierGroupErrorsEn errors = TranslationsFormModifierGroupErrorsEn._(_root);
}

// Path: form.description
class TranslationsFormDescriptionEn {
	TranslationsFormDescriptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Description'
	String get label => 'Description';

	/// en: 'Enter description'
	String get hint => 'Enter description';
}

// Path: form.staff
class TranslationsFormStaffEn {
	TranslationsFormStaffEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Staff'
	String get label => _root.common.staff;

	/// en: 'Select a staff'
	String get hint => 'Select a staff';

	late final TranslationsFormStaffErrorsEn errors = TranslationsFormStaffErrorsEn._(_root);
}

// Path: form.loginUserName
class TranslationsFormLoginUserNameEn {
	TranslationsFormLoginUserNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login User Name'
	String get label => 'Login User Name';

	/// en: 'Enter user name or email address'
	String get hint => 'Enter user name or email address';

	late final TranslationsFormLoginUserNameErrorsEn errors = TranslationsFormLoginUserNameErrorsEn._(_root);
}

// Path: pages.language
class TranslationsPagesLanguageEn {
	TranslationsPagesLanguageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Language'
	String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class TranslationsPagesOnboardEn {
	TranslationsPagesOnboardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesOnboardOnboardDataEn onboardData = TranslationsPagesOnboardOnboardDataEn._(_root);
}

// Path: pages.signIn
class TranslationsPagesSignInEn {
	TranslationsPagesSignInEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Welcome Back'
	String get title => 'Welcome Back';

	/// en: 'Please enter your details.'
	String get subtitle => 'Please enter your details.';

	late final TranslationsPagesSignInExtraEn extra = TranslationsPagesSignInExtraEn._(_root);
}

// Path: pages.signUp
class TranslationsPagesSignUpEn {
	TranslationsPagesSignUpEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create An Account'
	String get title => 'Create An Account';

	/// en: 'Please enter your details'
	String get subtitle => 'Please enter your details';

	late final TranslationsPagesSignUpExtraEn extra = TranslationsPagesSignUpExtraEn._(_root);
}

// Path: pages.forgotPassword
class TranslationsPagesForgotPasswordEn {
	TranslationsPagesForgotPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Forgot password'
	String get title => _root.common.forgotPassword;

	/// en: 'Enter your email Address to recover your password.'
	String get subtitle => 'Enter your email Address to recover your password.';
}

// Path: pages.otpVerification
class TranslationsPagesOtpVerificationEn {
	TranslationsPagesOtpVerificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Verification'
	String get title => 'Verification';

	/// en: '6 digits pin has been sent to your email address'
	String get subtitle => '6 digits pin has been sent to your email address';

	late final TranslationsPagesOtpVerificationExtraEn extra = TranslationsPagesOtpVerificationExtraEn._(_root);
}

// Path: pages.resetPassword
class TranslationsPagesResetPasswordEn {
	TranslationsPagesResetPasswordEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reset password'
	String get title => 'Reset password';

	/// en: 'Reset your password to recovery and log in your account'
	String get subtitle => 'Reset your password to recovery and log in your account';

	late final TranslationsPagesResetPasswordExtraEn extra = TranslationsPagesResetPasswordExtraEn._(_root);
}

// Path: pages.items
class TranslationsPagesItemsEn {
	TranslationsPagesItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesItemsItemListEn itemList = TranslationsPagesItemsItemListEn._(_root);
	late final TranslationsPagesItemsManageItemsEn manageItems = TranslationsPagesItemsManageItemsEn._(_root);
	late final TranslationsPagesItemsItemDetailsEn itemDetails = TranslationsPagesItemsItemDetailsEn._(_root);
}

// Path: pages.category
class TranslationsPagesCategoryEn {
	TranslationsPagesCategoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Category'
	String get addNewCategory => 'Add New Category';

	/// en: 'Edit Category'
	String get editCategory => 'Edit Category';
}

// Path: pages.brand
class TranslationsPagesBrandEn {
	TranslationsPagesBrandEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Brand'
	String get addNewBrand => 'Add New Brand';

	/// en: 'Edit Brand'
	String get editBrand => 'Edit Brand';
}

// Path: pages.unit
class TranslationsPagesUnitEn {
	TranslationsPagesUnitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Unit'
	String get addNewUnit => 'Add New Unit';

	/// en: 'Edit Unit'
	String get editUnit => 'Edit Unit';
}

// Path: pages.stock
class TranslationsPagesStockEn {
	TranslationsPagesStockEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Stock List'
	String get stockList => 'Stock List';
}

// Path: pages.aboutUs
class TranslationsPagesAboutUsEn {
	TranslationsPagesAboutUsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'About Us'
	String get title => 'About Us';
}

// Path: pages.privacyPolicy
class TranslationsPagesPrivacyPolicyEn {
	TranslationsPagesPrivacyPolicyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Privacy Policy'
	String get title => 'Privacy Policy';
}

// Path: pages.termAndCondition
class TranslationsPagesTermAndConditionEn {
	TranslationsPagesTermAndConditionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Terms & Conditions'
	String get title => _root.common.termAndCondition;
}

// Path: pages.orders
class TranslationsPagesOrdersEn {
	TranslationsPagesOrdersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesOrdersManageOrdersEn manageOrders = TranslationsPagesOrdersManageOrdersEn._(_root);
}

// Path: pages.onlinePayment
class TranslationsPagesOnlinePaymentEn {
	TranslationsPagesOnlinePaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Online Payment'
	String get title => 'Online Payment';
}

// Path: pages.paymentStatus
class TranslationsPagesPaymentStatusEn {
	TranslationsPagesPaymentStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesPaymentStatusSuccessEn success = TranslationsPagesPaymentStatusSuccessEn._(_root);
	late final TranslationsPagesPaymentStatusFailEn fail = TranslationsPagesPaymentStatusFailEn._(_root);
}

// Path: pages.confirmationDialog
class TranslationsPagesConfirmationDialogEn {
	TranslationsPagesConfirmationDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Log out'
	String get title => 'Log out';

	/// en: 'Are you sure to logout?'
	String get message => 'Are you sure to logout?';

	/// en: 'No'
	String get acceptationText => 'No';

	/// en: 'Log Out'
	String get rejectionText => 'Log Out';
}

// Path: pages.payment
class TranslationsPagesPaymentEn {
	TranslationsPagesPaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Payment Method'
	String get title => _root.common.paymentMethod;

	/// en: 'Add New Payment Method'
	String get addPaymentMethod => 'Add New Payment Method';

	/// en: 'Edit Payment Method'
	String get editPaymentMethod => 'Edit Payment Method';

	/// en: 'Choose Online Payment'
	String get choseOnlinePayment => 'Choose Online Payment';

	/// en: 'Select Payment Method'
	String get selectPaymentMethod => 'Select Payment Method';

	/// en: 'lease select a payment method.'
	String get pleaseSelectAPaymentMethod => 'lease select a payment method.';

	late final TranslationsPagesPaymentMethodStatusEn methodStatus = TranslationsPagesPaymentMethodStatusEn._(_root);
}

// Path: pages.subscriptionPlan
class TranslationsPagesSubscriptionPlanEn {
	TranslationsPagesSubscriptionPlanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Purchase Premium Plan'
	String get title => 'Purchase Premium Plan';

	late final TranslationsPagesSubscriptionPlanExtraEn extra = TranslationsPagesSubscriptionPlanExtraEn._(_root);
}

// Path: pages.invoicePreview
class TranslationsPagesInvoicePreviewEn {
	TranslationsPagesInvoicePreviewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invoice Preview'
	String get title => 'Invoice Preview';

	/// en: 'PDF Preview Coming Soon'
	String get message => 'PDF Preview Coming Soon';
}

// Path: pages.currency
class TranslationsPagesCurrencyEn {
	TranslationsPagesCurrencyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Currency'
	String get title => _root.common.currency;
}

// Path: pages.dashboard
class TranslationsPagesDashboardEn {
	TranslationsPagesDashboardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Overview'
	String get overview => 'Overview';

	/// en: 'Dashboard Privacy'
	String get dashboardPrivacy => 'Dashboard Privacy';

	/// en: 'Money In & Money Out'
	String get moneyInAndMoneyOut => 'Money In & Money Out';

	/// en: 'Profit & Loss Overview'
	String get lossAndProfitOverView => 'Profit & Loss Overview';
}

// Path: pages.due
class TranslationsPagesDueEn {
	TranslationsPagesDueEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Due List'
	String get title => _root.common.dueList;

	/// en: 'Collection List'
	String get collectionList => 'Collection List';

	/// en: 'Due Collection'
	String get dueCollection => 'Due Collection';
}

// Path: pages.expense
class TranslationsPagesExpenseEn {
	TranslationsPagesExpenseEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Expense'
	String get title => _root.common.expense;

	/// en: 'Edit expense'
	String get editExpense => 'Edit expense';

	/// en: 'Add new expense'
	String get addNewExpense => 'Add new expense';

	/// en: 'Edit expense category'
	String get editExpenseCategory => 'Edit expense category';

	/// en: 'Add new expense category'
	String get addNewExpenseCategory => 'Add new expense category';

	/// en: 'Payment'
	String get payment => 'Payment';

	/// en: 'Expense category'
	String get expenseCategory => 'Expense category';

	/// en: 'Select category'
	String get selectCategory => 'Select category';

	/// en: 'All expenses'
	String get allExpense => 'All expenses';

	/// en: 'Please select a category'
	String get pleaseSelectACategory => 'Please select a category';

	late final TranslationsPagesExpenseExpenseTitleEn expenseTitle = TranslationsPagesExpenseExpenseTitleEn._(_root);
}

// Path: pages.lossProfit
class TranslationsPagesLossProfitEn {
	TranslationsPagesLossProfitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loss/Profit list'
	String get title => 'Loss/Profit list';

	/// en: 'No loss/profit found! Please try to create sales.'
	String get noLossProfitFound => 'No loss/profit found!\nPlease try to create sales.';
}

// Path: pages.income
class TranslationsPagesIncomeEn {
	TranslationsPagesIncomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Income Category'
	String get editIncomeCategory => 'Edit Income Category';

	/// en: 'Add New Income Category'
	String get addNewIncomeCategory => 'Add New Income Category';

	/// en: 'Income Category'
	String get incomeCategory => 'Income Category';

	/// en: 'All Income'
	String get allIncome => 'All Income';

	/// en: 'Edit Income'
	String get editIncome => 'Edit Income';

	/// en: 'Edit Income'
	String get addNewIncome => 'Edit Income';

	/// en: 'Add Income'
	String get addIncome => 'Add Income';
}

// Path: pages.moneyIn
class TranslationsPagesMoneyInEn {
	TranslationsPagesMoneyInEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Money In List'
	String get title => 'Money In List';

	/// en: 'Total Money In'
	String get totalPaymentIn => 'Total Money In';
}

// Path: pages.moneyOut
class TranslationsPagesMoneyOutEn {
	TranslationsPagesMoneyOutEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Money Out List'
	String get title => 'Money Out List';

	/// en: 'Total Money Out'
	String get totalMoneyOut => 'Total Money Out';
}

// Path: pages.profile
class TranslationsPagesProfileEn {
	TranslationsPagesProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'My Profile'
	String get title => 'My Profile';

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'Business Information'
	String get businessInformation => 'Business Information';

	/// en: 'Profile Information'
	String get profileInformation => 'Profile Information';
}

// Path: pages.parties
class TranslationsPagesPartiesEn {
	TranslationsPagesPartiesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Parties List'
	String get title => 'Parties List';

	/// en: 'All Parties'
	String get allParties => 'All Parties';

	/// en: 'Customer'
	String get customer => 'Customer';

	/// en: 'Supplier'
	String get supplier => 'Supplier';

	/// en: 'Add Parties'
	String get addParties => 'Add Parties';

	/// en: 'Edit Parties'
	String get editParties => 'Edit Parties';

	/// en: 'Parties Details'
	String get partiesDetails => 'Parties Details';

	/// en: 'Personal Info'
	String get personalInfo => 'Personal Info';
}

// Path: pages.ledger
class TranslationsPagesLedgerEn {
	TranslationsPagesLedgerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ledger'
	String get subTitle => 'Ledger';
}

// Path: pages.purchase
class TranslationsPagesPurchaseEn {
	TranslationsPagesPurchaseEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Purchase'
	String get title => 'Add New Purchase';

	/// en: 'Edit Purchase'
	String get editPurchase => 'Edit Purchase';
}

// Path: pages.reports
class TranslationsPagesReportsEn {
	TranslationsPagesReportsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reports'
	String get title => 'Reports';
}

// Path: pages.table
class TranslationsPagesTableEn {
	TranslationsPagesTableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Table'
	String get title => 'Add New Table';

	/// en: 'Edit Table'
	String get editTable => 'Edit Table';
}

// Path: pages.tax
class TranslationsPagesTaxEn {
	TranslationsPagesTaxEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'VAT Rates'
	String get title => 'VAT Rates';

	/// en: 'VAT rates - Manage your VAT rates'
	String get buildHeaderTitle => 'VAT rates - Manage your VAT rates';

	late final TranslationsPagesTaxVatGroupEn vatGroup = TranslationsPagesTaxVatGroupEn._(_root);
}

// Path: pages.vat
class TranslationsPagesVatEn {
	TranslationsPagesVatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Vat'
	String get addNewVat => 'Add New Vat';

	/// en: 'Edit VAT'
	String get editVat => 'Edit VAT';

	/// en: 'Add New VAT Group'
	String get addNewVatGroup => 'Add New VAT Group';

	/// en: 'Edit VAT Group'
	String get editVatGroup => 'Edit VAT Group';
}

// Path: pages.orderList
class TranslationsPagesOrderListEn {
	TranslationsPagesOrderListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Order List'
	String get title => 'Order List';

	late final TranslationsPagesOrderListFiltersEn filters = TranslationsPagesOrderListFiltersEn._(_root);
}

// Path: pages.staffs
class TranslationsPagesStaffsEn {
	TranslationsPagesStaffsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesStaffsStaffListEn staffList = TranslationsPagesStaffsStaffListEn._(_root);
	late final TranslationsPagesStaffsManageStaffEn manageStaff = TranslationsPagesStaffsManageStaffEn._(_root);
}

// Path: pages.ingredient
class TranslationsPagesIngredientEn {
	TranslationsPagesIngredientEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesIngredientIngredientListEn ingredientList = TranslationsPagesIngredientIngredientListEn._(_root);
	late final TranslationsPagesIngredientManageIngredientEn manageIngredient = TranslationsPagesIngredientManageIngredientEn._(_root);
}

// Path: pages.itemModifier
class TranslationsPagesItemModifierEn {
	TranslationsPagesItemModifierEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesItemModifierItemModifierListEn itemModifierList = TranslationsPagesItemModifierItemModifierListEn._(_root);
	late final TranslationsPagesItemModifierManageItemModifierEn manageItemModifier = TranslationsPagesItemModifierManageItemModifierEn._(_root);
}

// Path: pages.quotation
class TranslationsPagesQuotationEn {
	TranslationsPagesQuotationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesQuotationManageQuotationEn manageQuotation = TranslationsPagesQuotationManageQuotationEn._(_root);
}

// Path: pages.rolePermission
class TranslationsPagesRolePermissionEn {
	TranslationsPagesRolePermissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesRolePermissionRolePermissionListEn rolePermissionList = TranslationsPagesRolePermissionRolePermissionListEn._(_root);
	late final TranslationsPagesRolePermissionManageRolePermissionEn manageRolePermission = TranslationsPagesRolePermissionManageRolePermissionEn._(_root);
}

// Path: enums.dropdownDateFilter
class TranslationsEnumsDropdownDateFilterEn {
	TranslationsEnumsDropdownDateFilterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Daily'
	String get daily => 'Daily';

	/// en: 'Weekly'
	String get weekly => 'Weekly';

	/// en: 'Monthly'
	String get monthly => 'Monthly';

	/// en: 'Yearly'
	String get yearly => 'Yearly';

	/// en: 'Custom'
	String get custom => 'Custom';
}

// Path: enums.orderTypes
class TranslationsEnumsOrderTypesEn {
	TranslationsEnumsOrderTypesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dine In'
	String get dineIn => 'Dine In';

	/// en: 'Pick Up'
	String get pickUp => 'Pick Up';

	/// en: 'Delivery'
	String get delivery => 'Delivery';

	/// en: 'Reservation'
	String get reservation => 'Reservation';

	/// en: 'Quotation'
	String get quotation => 'Quotation';
}

// Path: enums.paymentStatus
class TranslationsEnumsPaymentStatusEn {
	TranslationsEnumsPaymentStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Paid'
	String get paid => 'Paid';

	/// en: 'Unpaid'
	String get unpaid => 'Unpaid';
}

// Path: enums.staffTypes
class TranslationsEnumsStaffTypesEn {
	TranslationsEnumsStaffTypesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Manager'
	String get manager => 'Manager';

	/// en: 'Waiter'
	String get waiter => 'Waiter';

	/// en: 'Chef'
	String get chef => 'Chef';

	/// en: 'Cleaner'
	String get cleaner => 'Cleaner';

	/// en: 'Driver'
	String get driver => 'Driver';

	/// en: 'Delivery Boy'
	String get deliveryBoy => 'Delivery Boy';
}

// Path: enums.itemFoodTypes
class TranslationsEnumsItemFoodTypesEn {
	TranslationsEnumsItemFoodTypesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Veg'
	String get veg => 'Veg';

	/// en: 'Non Veg'
	String get nonVeg => 'Non Veg';

	/// en: 'Egg'
	String get egg => 'Egg';

	/// en: 'Drink'
	String get drink => 'Drink';

	/// en: 'Others'
	String get others => 'Others';
}

// Path: enums.itemTypes
class TranslationsEnumsItemTypesEn {
	TranslationsEnumsItemTypesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Single'
	String get single => 'Single';

	/// en: 'Variation'
	String get variation => 'Variation';
}

// Path: enums.quotationStatus
class TranslationsEnumsQuotationStatusEn {
	TranslationsEnumsQuotationStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Open'
	String get open => 'Open';

	/// en: 'Closed'
	String get closed => 'Closed';
}

// Path: prompt.items.delete
class TranslationsPromptItemsDeleteEn {
	TranslationsPromptItemsDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Do you want to delete this item?'
	String get title => 'Do you want to delete this item?';
}

// Path: prompt.items.filter
class TranslationsPromptItemsFilterEn {
	TranslationsPromptItemsFilterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Filter By'
	String get title => 'Filter By';

	late final TranslationsPromptItemsFilterExtraEn extra = TranslationsPromptItemsFilterExtraEn._(_root);
}

// Path: form.fullName.errors
class TranslationsFormFullNameErrorsEn {
	TranslationsFormFullNameErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter your Full Name'
	String get required => 'Please enter your ${_root.common.fullName}';
}

// Path: form.email.errors
class TranslationsFormEmailErrorsEn {
	TranslationsFormEmailErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter your Email address'
	String get required => 'Please enter your ${_root.common.email} address';

	/// en: '⦸ Invalid Email, Please Try Again'
	String get invalid => '⦸ Invalid Email, Please Try Again';
}

// Path: form.password.errors
class TranslationsFormPasswordErrorsEn {
	TranslationsFormPasswordErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter your Password'
	String get required => 'Please enter your ${_root.common.password}';

	/// en: 'Password must be at least ${count} characters!'
	String minLength({required Object count}) => 'Password must be at least ${count} characters!';
}

// Path: form.confirmPassword.errors
class TranslationsFormConfirmPasswordErrorsEn {
	TranslationsFormConfirmPasswordErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter your Password'
	String get required => 'Please enter your ${_root.common.password}';

	/// en: ''Confirm password doesn't match!'
	String get invalid => '\'Confirm password doesn\'t match!';
}

// Path: form.otp.errors
class TranslationsFormOtpErrorsEn {
	TranslationsFormOtpErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter the otp.'
	String get required => 'Please enter the otp.';

	/// en: 'Please enter current otp.'
	String get invalid => 'Please enter current otp.';
}

// Path: form.profile.businessCategory
class TranslationsFormProfileBusinessCategoryEn {
	TranslationsFormProfileBusinessCategoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Business Category'
	String get label => 'Business Category';

	/// en: 'Select business category'
	String get hint => 'Select business category';

	late final TranslationsFormProfileBusinessCategoryErrorsEn errors = TranslationsFormProfileBusinessCategoryErrorsEn._(_root);
}

// Path: form.profile.shopOrStore
class TranslationsFormProfileShopOrStoreEn {
	TranslationsFormProfileShopOrStoreEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Shop/Store Name*'
	String get label => 'Shop/Store Name*';

	/// en: 'Enter shop or store name'
	String get hint => 'Enter shop or store name';

	late final TranslationsFormProfileShopOrStoreErrorsEn errors = TranslationsFormProfileShopOrStoreErrorsEn._(_root);
}

// Path: form.profile.openingBalance
class TranslationsFormProfileOpeningBalanceEn {
	TranslationsFormProfileOpeningBalanceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Opening Balance'
	String get label => 'Opening Balance';

	/// en: 'Enter opening balance'
	String get hint => 'Enter opening balance';
}

// Path: form.profile.vatGstTitle
class TranslationsFormProfileVatGstTitleEn {
	TranslationsFormProfileVatGstTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'VAT/GST Title'
	String get label => 'VAT/GST Title';

	/// en: 'Enter vat/gst'
	String get hint => 'Enter vat/gst';
}

// Path: form.profile.vatGstNumber
class TranslationsFormProfileVatGstNumberEn {
	TranslationsFormProfileVatGstNumberEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'VAT/GST Number'
	String get label => 'VAT/GST Number';

	/// en: 'Enter vat/gst number'
	String get hint => 'Enter vat/gst number';
}

// Path: form.vat.name
class TranslationsFormVatNameEn {
	TranslationsFormVatNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Name'
	String get label => 'Name';

	/// en: 'Enter VAT name'
	String get hint => 'Enter VAT name';

	late final TranslationsFormVatNameErrorEn error = TranslationsFormVatNameErrorEn._(_root);
}

// Path: form.vat.subVat
class TranslationsFormVatSubVatEn {
	TranslationsFormVatSubVatEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sub VAT'
	String get label => 'Sub VAT';

	/// en: 'Select sub VAT'
	String get hint => 'Select sub VAT';

	late final TranslationsFormVatSubVatErrorsEn errors = TranslationsFormVatSubVatErrorsEn._(_root);
}

// Path: form.vat.rate
class TranslationsFormVatRateEn {
	TranslationsFormVatRateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'VAT rate %'
	String get label => 'VAT rate %';

	/// en: 'Enter VAT rate'
	String get hint => 'Enter VAT rate';

	late final TranslationsFormVatRateErrorsEn errors = TranslationsFormVatRateErrorsEn._(_root);
}

// Path: form.category.error
class TranslationsFormCategoryErrorEn {
	TranslationsFormCategoryErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter category name'
	String get required => 'Please enter category name';
}

// Path: form.items.barcode
class TranslationsFormItemsBarcodeEn {
	TranslationsFormItemsBarcodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Barcode'
	String get label => 'Barcode';

	/// en: 'Select one'
	String get hint => _root.common.selectOne;
}

// Path: form.items.itemName
class TranslationsFormItemsItemNameEn {
	TranslationsFormItemsItemNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Item Name'
	String get label => 'Item Name';

	/// en: 'Enter item name'
	String get hint => 'Enter item name';

	late final TranslationsFormItemsItemNameExtraEn extra = TranslationsFormItemsItemNameExtraEn._(_root);
}

// Path: form.items.itemCategory
class TranslationsFormItemsItemCategoryEn {
	TranslationsFormItemsItemCategoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Item Category'
	String get label => 'Item Category';

	/// en: 'Item Category'
	String get hint => 'Item Category';

	late final TranslationsFormItemsItemCategoryExtraEn extra = TranslationsFormItemsItemCategoryExtraEn._(_root);
}

// Path: form.items.brand
class TranslationsFormItemsBrandEn {
	TranslationsFormItemsBrandEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Brand'
	String get label => _root.common.brand;

	/// en: 'Select one'
	String get hint => _root.common.selectOne;

	late final TranslationsFormItemsBrandExtraEn extra = TranslationsFormItemsBrandExtraEn._(_root);
}

// Path: form.items.unit
class TranslationsFormItemsUnitEn {
	TranslationsFormItemsUnitEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Unit'
	String get label => _root.common.unit;

	/// en: 'Select one'
	String get hint => _root.common.selectOne;

	late final TranslationsFormItemsUnitErrorEn error = TranslationsFormItemsUnitErrorEn._(_root);
}

// Path: form.items.stock
class TranslationsFormItemsStockEn {
	TranslationsFormItemsStockEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Opening Stock'
	String get label => 'Opening Stock';

	/// en: 'Ex: 10'
	String get hint => _root.common.commonHint;

	late final TranslationsFormItemsStockExtraEn extra = TranslationsFormItemsStockExtraEn._(_root);
}

// Path: form.items.lowStock
class TranslationsFormItemsLowStockEn {
	TranslationsFormItemsLowStockEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Low Stock'
	String get label => _root.common.lowStock;

	/// en: 'Ex: 5'
	String get hint => 'Ex: 5';
}

// Path: form.items.purchasePrice
class TranslationsFormItemsPurchasePriceEn {
	TranslationsFormItemsPurchasePriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Purchase Price'
	String get label => _root.common.purchasePrice;

	/// en: 'Ex: \$40'
	String get hint => 'Ex: \$40';

	late final TranslationsFormItemsPurchasePriceErrorEn error = TranslationsFormItemsPurchasePriceErrorEn._(_root);
}

// Path: form.items.salePrice
class TranslationsFormItemsSalePriceEn {
	TranslationsFormItemsSalePriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Sale Price'
	String get label => 'Sale Price';

	/// en: 'Ex: \$60'
	String get hint => 'Ex: \Q60';

	late final TranslationsFormItemsSalePriceErrorEn error = TranslationsFormItemsSalePriceErrorEn._(_root);
}

// Path: form.items.totalSalePrice
class TranslationsFormItemsTotalSalePriceEn {
	TranslationsFormItemsTotalSalePriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Total Sale Price'
	String get label => 'Total Sale Price';

	/// en: 'Ex: \$100'
	String get hint => 'Ex: \$100';
}

// Path: form.items.wholeSalePrice
class TranslationsFormItemsWholeSalePriceEn {
	TranslationsFormItemsWholeSalePriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Whole Sale Price'
	String get label => _root.common.wholeSalePrice;

	/// en: 'Enter wholesale price'
	String get hint => 'Enter wholesale price';
}

// Path: form.items.dealerPrice
class TranslationsFormItemsDealerPriceEn {
	TranslationsFormItemsDealerPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dealer Price'
	String get label => _root.common.dealerPrice;

	/// en: 'Enter dealer price'
	String get hint => 'Enter dealer price';
}

// Path: form.items.discount
class TranslationsFormItemsDiscountEn {
	TranslationsFormItemsDiscountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Discount (%)'
	String get label => 'Discount (%)';

	/// en: 'Ex: 10'
	String get hint => _root.common.commonHint;
}

// Path: form.items.applicableTax
class TranslationsFormItemsApplicableTaxEn {
	TranslationsFormItemsApplicableTaxEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Applicable Tax'
	String get label => 'Applicable Tax';

	/// en: 'Select one'
	String get hint => _root.common.selectOne;
}

// Path: form.items.vatType
class TranslationsFormItemsVatTypeEn {
	TranslationsFormItemsVatTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Tax type'
	String get label => _root.common.taxType;

	late final TranslationsFormItemsVatTypeErrorTextEn errorText = TranslationsFormItemsVatTypeErrorTextEn._(_root);
}

// Path: form.items.menu
class TranslationsFormItemsMenuEn {
	TranslationsFormItemsMenuEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Choose Menu'
	String get label => 'Choose Menu';

	late final TranslationsFormItemsMenuErrorsEn errors = TranslationsFormItemsMenuErrorsEn._(_root);

	/// en: 'Select a menu'
	String get hint => 'Select a menu';

	late final TranslationsFormItemsMenuExtraEn extra = TranslationsFormItemsMenuExtraEn._(_root);
}

// Path: form.items.modifierItems
class TranslationsFormItemsModifierItemsEn {
	TranslationsFormItemsModifierItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Modifier Items'
	String get label => 'Modifier Items';

	/// en: 'Select modifier items'
	String get hint => 'Select modifier items';
}

// Path: form.items.preparationTime
class TranslationsFormItemsPreparationTimeEn {
	TranslationsFormItemsPreparationTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Preparation Time ${minutes(Minutes)}'
	TextSpan label({required InlineSpanBuilder minutes}) => TextSpan(children: [
		const TextSpan(text: 'Preparation Time '),
		minutes('Minutes'),
	]);

	/// en: 'Ex: 30'
	String get hint => 'Ex: 30';
}

// Path: form.items.variation
class TranslationsFormItemsVariationEn {
	TranslationsFormItemsVariationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormItemsVariationNameEn name = TranslationsFormItemsVariationNameEn._(_root);
	late final TranslationsFormItemsVariationPriceEn price = TranslationsFormItemsVariationPriceEn._(_root);
}

// Path: form.itemCart.error
class TranslationsFormItemCartErrorEn {
	TranslationsFormItemCartErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter quantity'
	String get required => _root.common.pleaseEnterQuantity;

	/// en: 'Quantity must be greater than 0'
	String get noZero => _root.common.quantityMustBeGreaterThanZero;
}

// Path: form.sales.autoGenerateInvoice
class TranslationsFormSalesAutoGenerateInvoiceEn {
	TranslationsFormSalesAutoGenerateInvoiceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bill No'
	String get label => 'Bill No';

	/// en: 'P-00001'
	String get hint => 'P-00001';
}

// Path: form.sales.date
class TranslationsFormSalesDateEn {
	TranslationsFormSalesDateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Date'
	String get label => 'Date';
}

// Path: form.sales.customer
class TranslationsFormSalesCustomerEn {
	TranslationsFormSalesCustomerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Customer'
	String get label => 'Customer';

	/// en: 'Select Customer'
	String get hint => 'Select Customer';
}

// Path: form.sales.phone
class TranslationsFormSalesPhoneEn {
	TranslationsFormSalesPhoneEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Phone Number'
	String get label => 'Phone Number';

	/// en: 'Enter phone number'
	String get hint => 'Enter phone number';
}

// Path: form.sales.address
class TranslationsFormSalesAddressEn {
	TranslationsFormSalesAddressEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Address'
	String get label => 'Address';

	/// en: 'Enter address'
	String get hint => 'Enter address';
}

// Path: form.sales.deliveryCharge
class TranslationsFormSalesDeliveryChargeEn {
	TranslationsFormSalesDeliveryChargeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delivery Charge'
	String get label => _root.common.deliveryCharge;

	/// en: 'Ex: \$20'
	String get hint => 'Ex: \$20';

	/// en: 'Charge Ex: \$10'
	String get hint2 => 'Charge Ex: \$10';
}

// Path: form.sales.table
class TranslationsFormSalesTableEn {
	TranslationsFormSalesTableEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Table'
	String get hint => 'Select Table';
}

// Path: form.sales.waiter
class TranslationsFormSalesWaiterEn {
	TranslationsFormSalesWaiterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Waiter'
	String get hint => 'Select Waiter';
}

// Path: form.supplier.extra
class TranslationsFormSupplierExtraEn {
	TranslationsFormSupplierExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select a supplier'
	String get required => 'Please select a supplier';
}

// Path: form.phone.errors
class TranslationsFormPhoneErrorsEn {
	TranslationsFormPhoneErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter phone number.'
	String get required => 'Please enter phone number.';
}

// Path: form.payment.error
class TranslationsFormPaymentErrorEn {
	TranslationsFormPaymentErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter a payment method name'
	String get required => 'Please enter a payment method name';
}

// Path: form.expense.error
class TranslationsFormExpenseErrorEn {
	TranslationsFormExpenseErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter expense category'
	String get required => 'Please enter expense category';
}

// Path: form.income.error
class TranslationsFormIncomeErrorEn {
	TranslationsFormIncomeErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter category name'
	String get required => 'Please enter category name';
}

// Path: form.income.incomeTitle
class TranslationsFormIncomeIncomeTitleEn {
	TranslationsFormIncomeIncomeTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Income Title'
	String get label => 'Income Title';

	/// en: 'Enter income'
	String get hint => 'Enter income';
}

// Path: form.income.incomeCategory
class TranslationsFormIncomeIncomeCategoryEn {
	TranslationsFormIncomeIncomeCategoryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Income Category'
	String get label => 'Income Category';

	/// en: 'Select category'
	String get hint => 'Select category';
}

// Path: form.income.payment
class TranslationsFormIncomePaymentEn {
	TranslationsFormIncomePaymentEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Payment'
	String get label => 'Payment';

	/// en: 'Ex: \$10'
	String get hint => 'Ex: \$10';
}

// Path: form.parties.partyName
class TranslationsFormPartiesPartyNameEn {
	TranslationsFormPartiesPartyNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Party Name'
	String get label => 'Party Name';

	/// en: 'Enter party name'
	String get hint => 'Enter party name';

	late final TranslationsFormPartiesPartyNameErrorEn error = TranslationsFormPartiesPartyNameErrorEn._(_root);
}

// Path: form.parties.partyPhone
class TranslationsFormPartiesPartyPhoneEn {
	TranslationsFormPartiesPartyPhoneEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Phone Number'
	String get label => 'Phone Number';

	/// en: 'Enter phone number'
	String get hint => 'Enter phone number';

	late final TranslationsFormPartiesPartyPhoneErrorEn error = TranslationsFormPartiesPartyPhoneErrorEn._(_root);
}

// Path: form.table.name
class TranslationsFormTableNameEn {
	TranslationsFormTableNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Table Name'
	String get label => 'Table Name';

	/// en: 'Enter table name'
	String get hint => 'Enter table name';

	late final TranslationsFormTableNameErrorEn error = TranslationsFormTableNameErrorEn._(_root);
}

// Path: form.table.capacity
class TranslationsFormTableCapacityEn {
	TranslationsFormTableCapacityEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Capacity'
	String get label => 'Capacity';

	/// en: 'Enter capacity'
	String get hint => 'Enter capacity';

	late final TranslationsFormTableCapacityErrorEn error = TranslationsFormTableCapacityErrorEn._(_root);
}

// Path: form.designation.errors
class TranslationsFormDesignationErrorsEn {
	TranslationsFormDesignationErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select a designation.'
	String get required => 'Please select a designation.';
}

// Path: form.ingredientName.errors
class TranslationsFormIngredientNameErrorsEn {
	TranslationsFormIngredientNameErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter ingredient name'
	String get required => 'Please enter ingredient name';
}

// Path: form.item.errors
class TranslationsFormItemErrorsEn {
	TranslationsFormItemErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select an item.'
	String get required => 'Please select an item.';
}

// Path: form.modifierGroup.errors
class TranslationsFormModifierGroupErrorsEn {
	TranslationsFormModifierGroupErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select a modifier group.'
	String get required => 'Please select a modifier group.';
}

// Path: form.staff.errors
class TranslationsFormStaffErrorsEn {
	TranslationsFormStaffErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select a staff'
	String get required => 'Please select a staff';
}

// Path: form.loginUserName.errors
class TranslationsFormLoginUserNameErrorsEn {
	TranslationsFormLoginUserNameErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter user name or email address'
	String get required => 'Please enter user name or email address';
}

// Path: pages.onboard.onboardData
class TranslationsPagesOnboardOnboardDataEn {
	TranslationsPagesOnboardOnboardDataEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesOnboardOnboardDataData1En data1 = TranslationsPagesOnboardOnboardDataData1En._(_root);
	late final TranslationsPagesOnboardOnboardDataData2En data2 = TranslationsPagesOnboardOnboardDataData2En._(_root);
	late final TranslationsPagesOnboardOnboardDataData3En data3 = TranslationsPagesOnboardOnboardDataData3En._(_root);
}

// Path: pages.signIn.extra
class TranslationsPagesSignInExtraEn {
	TranslationsPagesSignInExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Remember Me'
	String get rememberMe => 'Remember Me';

	/// en: 'Don't have a account? ${getStarted(Get Started)}'
	TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(children: [
		const TextSpan(text: 'Don\'t have a account? '),
		getStarted(_root.action.getStarted),
	]);

	/// en: 'Forgot password?'
	String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.signUp.extra
class TranslationsPagesSignUpExtraEn {
	TranslationsPagesSignUpExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Already have an account? ${signIn(Sign In)}'
	TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(children: [
		const TextSpan(text: 'Already have an account? '),
		signIn(_root.action.signIn),
	]);
}

// Path: pages.otpVerification.extra
class TranslationsPagesOtpVerificationExtraEn {
	TranslationsPagesOtpVerificationExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesOtpVerificationExtraCodeResendEn codeResend = TranslationsPagesOtpVerificationExtraCodeResendEn._(_root);
}

// Path: pages.resetPassword.extra
class TranslationsPagesResetPasswordExtraEn {
	TranslationsPagesResetPasswordExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesResetPasswordExtraDialogEn dialog = TranslationsPagesResetPasswordExtraDialogEn._(_root);
}

// Path: pages.items.itemList
class TranslationsPagesItemsItemListEn {
	TranslationsPagesItemsItemListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesItemsItemListExtraEn extra = TranslationsPagesItemsItemListExtraEn._(_root);
}

// Path: pages.items.manageItems
class TranslationsPagesItemsManageItemsEn {
	TranslationsPagesItemsManageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Item'
	String get title => 'Add New Item';

	/// en: 'Edit Item'
	String get title2 => 'Edit Item';

	late final TranslationsPagesItemsManageItemsExtraEn extra = TranslationsPagesItemsManageItemsExtraEn._(_root);
}

// Path: pages.items.itemDetails
class TranslationsPagesItemsItemDetailsEn {
	TranslationsPagesItemsItemDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Item Details'
	String get title => 'Item Details';

	late final TranslationsPagesItemsItemDetailsExtraEn extra = TranslationsPagesItemsItemDetailsExtraEn._(_root);
}

// Path: pages.orders.manageOrders
class TranslationsPagesOrdersManageOrdersEn {
	TranslationsPagesOrdersManageOrdersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesOrdersManageOrdersExtraEn extra = TranslationsPagesOrdersManageOrdersExtraEn._(_root);
	late final TranslationsPagesOrdersManageOrdersTitleEn title = TranslationsPagesOrdersManageOrdersTitleEn._(_root);
}

// Path: pages.paymentStatus.success
class TranslationsPagesPaymentStatusSuccessEn {
	TranslationsPagesPaymentStatusSuccessEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Thank You!'
	String get title => 'Thank You!';

	/// en: 'We will review the payment & approve it within 24 hours.'
	String get message => 'We will review the payment & approve it within 24 hours.';

	/// en: 'View Invoice'
	String get actionButtonText => 'View Invoice';
}

// Path: pages.paymentStatus.fail
class TranslationsPagesPaymentStatusFailEn {
	TranslationsPagesPaymentStatusFailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Oops! Payment Failed'
	String get title => 'Oops! Payment Failed';

	/// en: 'Your transaction has failed due to some technical error.'
	String get message => 'Your transaction has failed due to some technical error.';

	/// en: 'Try Again'
	String get actionButtonText => 'Try Again';
}

// Path: pages.payment.methodStatus
class TranslationsPagesPaymentMethodStatusEn {
	TranslationsPagesPaymentMethodStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Status'
	String get title => 'Status';

	/// en: 'Status cannot be inactive if Quick View is enabled!.'
	String get message => 'Status cannot be inactive if Quick View is enabled!.';
}

// Path: pages.subscriptionPlan.extra
class TranslationsPagesSubscriptionPlanExtraEn {
	TranslationsPagesSubscriptionPlanExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Go Back'
	String get actionButtonText => 'Go Back';

	/// en: 'Subscription payment successfully. You can access the subscribed features now.'
	String get message => 'Subscription payment successfully.\n\nYou can access the subscribed features now.';

	/// en: 'Most Popular'
	String get mostPopular => 'Most Popular';
}

// Path: pages.expense.expenseTitle
class TranslationsPagesExpenseExpenseTitleEn {
	TranslationsPagesExpenseExpenseTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Expense title'
	String get label => 'Expense title';

	/// en: 'Enter expense'
	String get hint => 'Enter expense';
}

// Path: pages.tax.vatGroup
class TranslationsPagesTaxVatGroupEn {
	TranslationsPagesTaxVatGroupEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'VAT Group'
	String get title => 'VAT Group';

	/// en: 'VAT Group - Manage your VAT group'
	String get subTitle => 'VAT Group - Manage your VAT group';
}

// Path: pages.orderList.filters
class TranslationsPagesOrderListFiltersEn {
	TranslationsPagesOrderListFiltersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesOrderListFiltersOrderTypeEn orderType = TranslationsPagesOrderListFiltersOrderTypeEn._(_root);
	late final TranslationsPagesOrderListFiltersPaymentStatusEn paymentStatus = TranslationsPagesOrderListFiltersPaymentStatusEn._(_root);
}

// Path: pages.staffs.staffList
class TranslationsPagesStaffsStaffListEn {
	TranslationsPagesStaffsStaffListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesStaffsStaffListFiltersEn filters = TranslationsPagesStaffsStaffListFiltersEn._(_root);

	/// en: 'All Staff'
	String get title => 'All Staff';
}

// Path: pages.staffs.manageStaff
class TranslationsPagesStaffsManageStaffEn {
	TranslationsPagesStaffsManageStaffEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Staff'
	String get title1 => 'Add New Staff';

	/// en: 'Update Staff'
	String get title2 => 'Update Staff';
}

// Path: pages.ingredient.ingredientList
class TranslationsPagesIngredientIngredientListEn {
	TranslationsPagesIngredientIngredientListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ingredient List'
	String get title1 => 'Ingredient List';

	/// en: 'Select Ingredient'
	String get title2 => 'Select Ingredient';
}

// Path: pages.ingredient.manageIngredient
class TranslationsPagesIngredientManageIngredientEn {
	TranslationsPagesIngredientManageIngredientEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Ingredient'
	String get title1 => 'Add New Ingredient';

	/// en: 'Edit Ingredient'
	String get title2 => 'Edit Ingredient';
}

// Path: pages.itemModifier.itemModifierList
class TranslationsPagesItemModifierItemModifierListEn {
	TranslationsPagesItemModifierItemModifierListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Item Modifiers'
	String get title => _root.common.itemModifiers;
}

// Path: pages.itemModifier.manageItemModifier
class TranslationsPagesItemModifierManageItemModifierEn {
	TranslationsPagesItemModifierManageItemModifierEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add Item Modifiers'
	String get title1 => 'Add Item Modifiers';

	/// en: 'Edit Item Modifiers'
	String get title2 => 'Edit Item Modifiers';
}

// Path: pages.quotation.manageQuotation
class TranslationsPagesQuotationManageQuotationEn {
	TranslationsPagesQuotationManageQuotationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesQuotationManageQuotationTitleEn title = TranslationsPagesQuotationManageQuotationTitleEn._(_root);
}

// Path: pages.rolePermission.rolePermissionList
class TranslationsPagesRolePermissionRolePermissionListEn {
	TranslationsPagesRolePermissionRolePermissionListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Role & Permission List'
	String get title => 'Role & Permission List';
}

// Path: pages.rolePermission.manageRolePermission
class TranslationsPagesRolePermissionManageRolePermissionEn {
	TranslationsPagesRolePermissionManageRolePermissionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Role'
	String get title1 => 'Add New Role';

	/// en: 'Edit Role'
	String get title2 => 'Edit Role';
}

// Path: prompt.items.filter.extra
class TranslationsPromptItemsFilterExtraEn {
	TranslationsPromptItemsFilterExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Low to High Price'
	String get lowToHigh => 'Low to High ${_root.common.price}';

	/// en: 'High to Low Price'
	String get highToLow => 'High to Low ${_root.common.price}';
}

// Path: form.profile.businessCategory.errors
class TranslationsFormProfileBusinessCategoryErrorsEn {
	TranslationsFormProfileBusinessCategoryErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select business category'
	String get required => 'Please select business category';
}

// Path: form.profile.shopOrStore.errors
class TranslationsFormProfileShopOrStoreErrorsEn {
	TranslationsFormProfileShopOrStoreErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter your shop or store name'
	String get required => 'Please enter your shop or store name';
}

// Path: form.vat.name.error
class TranslationsFormVatNameErrorEn {
	TranslationsFormVatNameErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter VAT name'
	String get required => 'Please enter VAT name';
}

// Path: form.vat.subVat.errors
class TranslationsFormVatSubVatErrorsEn {
	TranslationsFormVatSubVatErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select sub VAT'
	String get required => 'Please select sub VAT';
}

// Path: form.vat.rate.errors
class TranslationsFormVatRateErrorsEn {
	TranslationsFormVatRateErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter VAT rate.'
	String get required => 'Please enter VAT rate.';
}

// Path: form.items.itemName.extra
class TranslationsFormItemsItemNameExtraEn {
	TranslationsFormItemsItemNameExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter item name'
	String get required => 'Please enter item name';
}

// Path: form.items.itemCategory.extra
class TranslationsFormItemsItemCategoryExtraEn {
	TranslationsFormItemsItemCategoryExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select category'
	String get label => 'Select category';

	/// en: 'Please select a category'
	String get required => 'Please select a category';
}

// Path: form.items.brand.extra
class TranslationsFormItemsBrandExtraEn {
	TranslationsFormItemsBrandExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter brand name'
	String get hint => 'Enter brand name';

	/// en: 'Please enter brand name'
	String get required => 'Please enter brand name';
}

// Path: form.items.unit.error
class TranslationsFormItemsUnitErrorEn {
	TranslationsFormItemsUnitErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter unit name'
	String get required => 'Please enter unit name';
}

// Path: form.items.stock.extra
class TranslationsFormItemsStockExtraEn {
	TranslationsFormItemsStockExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter item quality.'
	String get required => 'Please enter item quality.';
}

// Path: form.items.purchasePrice.error
class TranslationsFormItemsPurchasePriceErrorEn {
	TranslationsFormItemsPurchasePriceErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter purchase price.'
	String get required => 'Please enter purchase price.';
}

// Path: form.items.salePrice.error
class TranslationsFormItemsSalePriceErrorEn {
	TranslationsFormItemsSalePriceErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter sale price.'
	String get required => 'Please enter sale price.';
}

// Path: form.items.vatType.errorText
class TranslationsFormItemsVatTypeErrorTextEn {
	TranslationsFormItemsVatTypeErrorTextEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select a VAT type'
	String get required => 'Please select a VAT type';
}

// Path: form.items.menu.errors
class TranslationsFormItemsMenuErrorsEn {
	TranslationsFormItemsMenuErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please select a menu.'
	String get required => 'Please select a menu.';
}

// Path: form.items.menu.extra
class TranslationsFormItemsMenuExtraEn {
	TranslationsFormItemsMenuExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Item Menu'
	String get selectNavLabel => 'Select Item Menu';
}

// Path: form.items.variation.name
class TranslationsFormItemsVariationNameEn {
	TranslationsFormItemsVariationNameEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Name'
	String get label => 'Name';

	/// en: 'Enter variation'
	String get hint => 'Enter variation';

	late final TranslationsFormItemsVariationNameErrorsEn errors = TranslationsFormItemsVariationNameErrorsEn._(_root);
}

// Path: form.items.variation.price
class TranslationsFormItemsVariationPriceEn {
	TranslationsFormItemsVariationPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsFormItemsVariationPriceErrorsEn errors = TranslationsFormItemsVariationPriceErrorsEn._(_root);

	/// en: 'Price'
	String get label => 'Price';

	/// en: 'Ex: \$30'
	String get hint => 'Ex: \$30';
}

// Path: form.parties.partyName.error
class TranslationsFormPartiesPartyNameErrorEn {
	TranslationsFormPartiesPartyNameErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter party name'
	String get required => 'Please enter party name';
}

// Path: form.parties.partyPhone.error
class TranslationsFormPartiesPartyPhoneErrorEn {
	TranslationsFormPartiesPartyPhoneErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter phone number'
	String get required => 'Please enter phone number';
}

// Path: form.table.name.error
class TranslationsFormTableNameErrorEn {
	TranslationsFormTableNameErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter table name'
	String get required => 'Please enter table name';
}

// Path: form.table.capacity.error
class TranslationsFormTableCapacityErrorEn {
	TranslationsFormTableCapacityErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter capacity'
	String get required => 'Please enter capacity';
}

// Path: pages.onboard.onboardData.data1
class TranslationsPagesOnboardOnboardDataData1En {
	TranslationsPagesOnboardOnboardDataData1En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Easy to use Michoacana SP'
	String get title => 'Easy to use ${_root.common.appName}';

	/// en: 'Seamless Orders, Effortless Bookings\n Power Your Restaurant with Ease!'
	String get description => 'Seamless Orders, Effortless Bookings\n Power Your Restaurant with Ease!';
}

// Path: pages.onboard.onboardData.data2
class TranslationsPagesOnboardOnboardDataData2En {
	TranslationsPagesOnboardOnboardDataData2En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Effortless Order Management'
	String get title => 'Effortless Order Management';

	/// en: 'Streamline your restaurant's order-taking process with our intuitive POS system.'
	String get description => 'Streamline your restaurant\'s order-taking process with our intuitive POS system.';
}

// Path: pages.onboard.onboardData.data3
class TranslationsPagesOnboardOnboardDataData3En {
	TranslationsPagesOnboardOnboardDataData3En._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Excellent Analytics & Reporting'
	String get title => 'Excellent Analytics & Reporting';

	/// en: 'Our analytics dashboard provides real-time sales & purchase reports'
	String get description => 'Our analytics dashboard provides real-time sales & purchase  reports';
}

// Path: pages.otpVerification.extra.codeResend
class TranslationsPagesOtpVerificationExtraCodeResendEn {
	TranslationsPagesOtpVerificationExtraCodeResendEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Code send in'
	String get codeSendIn => 'Code send in';

	/// en: 'Resend code'
	String get resendCode => 'Resend code';
}

// Path: pages.resetPassword.extra.dialog
class TranslationsPagesResetPasswordExtraDialogEn {
	TranslationsPagesResetPasswordExtraDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Changed successfully!'
	String get title => 'Changed successfully!';

	/// en: 'Sign in with your new password. Redirecting you to Sign In...'
	String get subtitle => 'Sign in with your new password.\n Redirecting you to Sign In...';
}

// Path: pages.items.itemList.extra
class TranslationsPagesItemsItemListExtraEn {
	TranslationsPagesItemsItemListExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No item found! Please try adding an item.'
	String get emptyItem => 'No item found!\n Please try adding an item.';
}

// Path: pages.items.manageItems.extra
class TranslationsPagesItemsManageItemsExtraEn {
	TranslationsPagesItemsManageItemsExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Maximum 5'
	String get maximum => 'Maximum 5';

	/// en: 'Wholesale & Dealer Price'
	String get wholeSaleAndDealerPrice => 'Wholesale & Dealer Price';

	/// en: 'Add Discount'
	String get addDiscount => 'Add Discount';

	/// en: 'Add VAT'
	String get addVat => 'Add VAT';
}

// Path: pages.items.itemDetails.extra
class TranslationsPagesItemsItemDetailsExtraEn {
	TranslationsPagesItemsItemDetailsExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No image available!'
	String get noImageAvailable => 'No image available!';

	/// en: 'Preparation Time: ${min: String} ${mins(mins)}'
	TextSpan preparationTime({required InlineSpan min, required InlineSpanBuilder mins}) => TextSpan(children: [
		const TextSpan(text: 'Preparation Time: '),
		min,
		const TextSpan(text: ' '),
		mins('mins'),
	]);

	/// en: 'Please select a variation'
	String get pleaseSelectVariation => 'Please select a variation';

	/// en: 'Please select an option.'
	String get pleaseSelectOption => 'Please select an option.';

	/// en: 'Enter your instructions'
	String get enterYourInstruction => 'Enter your instructions';
}

// Path: pages.orders.manageOrders.extra
class TranslationsPagesOrdersManageOrdersExtraEn {
	TranslationsPagesOrdersManageOrdersExtraEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Bill Items'
	String get billItems => 'Bill Items';

	/// en: 'Manage Quantity'
	String get manageQuantity => 'Manage Quantity';
}

// Path: pages.orders.manageOrders.title
class TranslationsPagesOrdersManageOrdersTitleEn {
	TranslationsPagesOrdersManageOrdersTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Edit Order'
	String get editOrder => 'Edit Order';

	/// en: 'KOT Edit'
	String get editKOT => 'KOT Edit';
}

// Path: pages.orderList.filters.orderType
class TranslationsPagesOrderListFiltersOrderTypeEn {
	TranslationsPagesOrderListFiltersOrderTypeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Order Type'
	String get label => _root.common.orderType;

	/// en: 'Select Order Type'
	String get hint => 'Select Order Type';
}

// Path: pages.orderList.filters.paymentStatus
class TranslationsPagesOrderListFiltersPaymentStatusEn {
	TranslationsPagesOrderListFiltersPaymentStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select Payment Status'
	String get hint => 'Select Payment Status';

	/// en: 'Payment Status'
	String get label => 'Payment Status';
}

// Path: pages.staffs.staffList.filters
class TranslationsPagesStaffsStaffListFiltersEn {
	TranslationsPagesStaffsStaffListFiltersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPagesStaffsStaffListFiltersDesignationEn designation = TranslationsPagesStaffsStaffListFiltersDesignationEn._(_root);
}

// Path: pages.quotation.manageQuotation.title
class TranslationsPagesQuotationManageQuotationTitleEn {
	TranslationsPagesQuotationManageQuotationTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add New Quotation'
	String get add => 'Add New Quotation';

	/// en: 'Edit Quotation'
	String get edit => 'Edit Quotation';

	/// en: 'Convert to Sale'
	String get convert => 'Convert to Sale';
}

// Path: form.items.variation.name.errors
class TranslationsFormItemsVariationNameErrorsEn {
	TranslationsFormItemsVariationNameErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter variation name.'
	String get required => 'Please enter variation name.';
}

// Path: form.items.variation.price.errors
class TranslationsFormItemsVariationPriceErrorsEn {
	TranslationsFormItemsVariationPriceErrorsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Please enter price.'
	String get required => 'Please enter price.';
}

// Path: pages.staffs.staffList.filters.designation
class TranslationsPagesStaffsStaffListFiltersDesignationEn {
	TranslationsPagesStaffsStaffListFiltersDesignationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Designation'
	String get label => 'Designation';

	/// en: 'Select Designation'
	String get hint => 'Select Designation';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.signIn': return 'Sign In';
			case 'common.signUp': return 'Sign Up';
			case 'common.verifyEmail': return 'Verify Email';
			case 'common.customizeProfile': return 'Customize Profile';
			case 'common.imageOrLogo': return 'Logo or Image';
			case 'common.createNewPassword': return 'Create New Password';
			case 'common.itemsList': return 'Items List';
			case 'common.searchItemsName': return 'Search Items Name';
			case 'common.categoryList': return 'Category List';
			case 'common.brandList': return 'Brand List';
			case 'common.unitList': return 'Unit List';
			case 'common.itemDetails': return 'Item Details';
			case 'common.addStock': return 'Add Stock';
			case 'common.profile': return 'Profile';
			case 'common.language': return 'Language';
			case 'common.termsAndConditions': return 'Terms & Conditions';
			case 'common.aboutUs': return 'About Us';
			case 'common.logout': return 'Logout';
			case 'common.editProfile': return 'Edit Profile';
			case 'common.fullName': return 'Full Name';
			case 'common.email': return 'Email';
			case 'common.mobileNumber': return 'Mobile Number';
			case 'common.address': return 'Address';
			case 'common.password': return 'Password';
			case 'common.forgotPassword': return 'Forgot password';
			case 'common.edit': return 'Edit';
			case 'common.delete': return 'Delete';
			case 'common.addItems': return 'Add Items';
			case 'common.stock': return 'Stock';
			case 'common.currentStock': return 'Current Stock';
			case 'common.value': return 'Value';
			case 'common.sales': return 'Sales';
			case 'common.purchase': return 'Purchase';
			case 'common.price': return 'Price';
			case 'common.image': return 'Image';
			case 'common.upload': return 'Upload';
			case 'common.addNew': return 'Add New';
			case 'common.pricing': return 'Pricing';
			case 'common.name': return 'Name';
			case 'common.category': return 'Category';
			case 'common.brand': return 'Brand';
			case 'common.lowStock': return 'Low Stock';
			case 'common.unit': return 'Unit';
			case 'common.vat': return 'Vat';
			case 'common.taxType': return 'Tax type';
			case 'common.purchasePrice': return 'Purchase Price';
			case 'common.sellingPrice': return 'Selling Price';
			case 'common.wholeSalePrice': return 'Whole Sale Price';
			case 'common.dealerPrice': return 'Dealer Price';
			case 'common.searchHere': return 'Search Here';
			case 'common.totalItems': return 'Total Items';
			case 'common.stockValue': return 'Stock Value';
			case 'common.congratulation': return 'Congratulation';
			case 'common.salesList': return 'Sales List';
			case 'common.searchInvoiceNumber': return 'Search invoice no';
			case 'common.view': return 'View';
			case 'common.kFor': return 'For';
			case 'common.total': return 'Total';
			case 'common.subTotal': return 'Sub Total';
			case 'common.insufficientStockAvailableStock': return 'Insufficient stock, available stock';
			case 'common.discount': return 'Discount';
			case 'common.selectOne': return 'Select one';
			case 'common.allCategory': return 'All Category';
			case 'common.details': return 'Details';
			case 'common.parcel': return 'Parcel';
			case 'common.kot': return 'KOT';
			case 'common.table': return 'Table';
			case 'common.holdTable': return 'Hold Table';
			case 'common.capacity': return 'Capacity';
			case 'common.commonHint': return 'Ex: 10';
			case 'common.pleaseEnterQuantity': return 'Please enter quantity';
			case 'common.quantityMustBeGreaterThanZero': return 'Quantity must be greater than 0';
			case 'common.mobile': return 'Mobile';
			case 'common.orderNo': return 'Order No';
			case 'common.dateAndTime': return 'Date & Time';
			case 'common.items': return 'Items';
			case 'common.totalAmount': return 'Total Amount';
			case 'common.paidAmount': return 'Paid Amount';
			case 'common.dueAmount': return 'Due Amount';
			case 'common.paymentType': return 'Payment Type';
			case 'common.thankYou': return 'Thank you';
			case 'common.developedBy': return ({required String domain}) => 'Developed by ${domain}';
			case 'common.qty': return 'Price';
			case 'common.amount': return 'Amount';
			case 'common.dashboard': return 'Dashboard';
			case 'common.reports': return 'Reports';
			case 'common.home': return 'Home';
			case 'common.parties': return 'Parties';
			case 'common.subscriptionPlan': return 'Subscription Plan';
			case 'common.estimateList': return 'Estimate List';
			case 'common.purchaseList': return 'Purchase List';
			case 'common.dueList': return 'Due List';
			case 'common.lossOrProfit': return 'Loss/Profit';
			case 'common.stocks': return 'Stocks';
			case 'common.moneyInList': return 'Money In List';
			case 'common.moneyOutList': return 'Money Out List';
			case 'common.transactionList': return 'Transaction List';
			case 'common.income': return 'Income';
			case 'common.expense': return 'Expense';
			case 'common.quickView': return 'Quick View';
			case 'common.to': return 'to';
			case 'common.totalSales': return 'Total Sales';
			case 'common.totalPurchase': return 'Total Purchase';
			case 'common.holdNumber': return 'Hold Orders';
			case 'common.totalExpense': return 'Total Expense';
			case 'common.loss': return 'Loss';
			case 'common.profit': return 'Profit';
			case 'common.recentTransaction': return 'Recent Transactions';
			case 'common.invoice': return 'Invoice';
			case 'common.moneyIn': return 'Money In';
			case 'common.moneyOut': return 'Money Out';
			case 'common.paid': return 'Paid';
			case 'common.due': return 'Due';
			case 'common.partial': return 'Partial';
			case 'common.print': return 'Print';
			case 'common.addCategory': return 'Add Category';
			case 'common.addExpense': return 'Add Expense';
			case 'common.search': return 'Search...';
			case 'common.viewDetails': return 'View Details';
			case 'common.title': return 'Title';
			case 'common.date': return 'Date';
			case 'common.note': return 'Note';
			case 'common.phoneNumber': return 'Phone Number';
			case 'common.type': return 'Type';
			case 'common.selectContactSType': return 'Select the contact type';
			case 'common.moreInfo': return 'More info';
			case 'common.paymentReceived': return 'Payment Received';
			case 'common.selectSupplier': return 'Select supplier';
			case 'common.supplier': return 'Supplier';
			case 'common.received': return 'Received';
			case 'common.balanceDue': return 'Balance Due';
			case 'common.addPurchase': return 'Add Purchase';
			case 'common.selectedItemWillBeCleared': return 'Selected items will be cleared.';
			case 'common.searchItemName': return 'Search items name';
			case 'common.billItems': return 'Bill Items';
			case 'common.addMoreItems': return 'Add More Items';
			case 'common.payAmount': return 'Pay Amount';
			case 'common.salesReport': return 'Sales Report';
			case 'common.purchaseReport': return 'Purchase Report';
			case 'common.stockReport': return 'Stock Report';
			case 'common.dueReport': return 'Due Report';
			case 'common.dueCollectionReport': return 'Due Collection Report';
			case 'common.transactionReport': return 'Transaction Report';
			case 'common.incomeReport': return 'Income Report';
			case 'common.dueCollectionList': return 'Due Collection List';
			case 'common.expenseReport': return 'Expense Reports';
			case 'common.dueCollection': return 'Due Collection';
			case 'common.myProfile': return 'My Profile';
			case 'common.printingOption': return 'Printing Option';
			case 'common.currency': return 'Currency';
			case 'common.paymentMethod': return 'Payment Method';
			case 'common.rateUs': return 'Rate us';
			case 'common.termAndCondition': return 'Terms & Conditions';
			case 'common.tableList': return 'Table List';
			case 'common.addTable': return 'Add Table';
			case 'common.vatRate': return 'VAT rate %';
			case 'common.action': return 'Action';
			case 'common.status': return 'Status';
			case 'common.active': return 'Active';
			case 'common.inActive': return 'Inactive';
			case 'common.subVats': return 'Sub VATs';
			case 'common.add': return 'Add';
			case 'common.taxRate': return 'Tax rate %';
			case 'common.subTaxes': return 'Sub Taxes';
			case 'common.group': return 'group';
			case 'common.VAT': return 'VAT';
			case 'common.subTaxList': return 'Sub Tax List';
			case 'common.vatPercent': return 'VAT Percent';
			case 'common.statusIsCannotInActive': return 'Status cannot be inactive if VAT is on sales.';
			case 'common.vatOnSales': return 'VAT On Sales';
			case 'common.transaction': return 'Transaction';
			case 'common.version': return ({required String version}) => 'Version ${version}';
			case 'common.hold': return 'Hold';
			case 'common.empty': return 'Empty';
			case 'common.appName': return 'Michoacana SP';
			case 'common.duePayment': return 'Due Payment';
			case 'common.orders': return 'Orders';
			case 'common.all': return 'All';
			case 'common.ingredient': return 'Ingredient';
			case 'common.menus': return 'Menus';
			case 'common.modifierGroups': return 'Modifier Groups';
			case 'common.itemModifiers': return 'Item Modifiers';
			case 'common.staff': return 'Staff';
			case 'common.coupon': return 'Coupon';
			case 'common.pay': return 'Pay';
			case 'common.pendingOrders': return 'Pending Orders';
			case 'common.order': return 'Order';
			case 'common.payNow': return 'Pay Now';
			case 'common.addStaff': return 'Add Staff';
			case 'common.designation': return 'Designation';
			case 'common.itemAdded': return 'Item Added';
			case 'common.noItemAdded': return 'No Item Added';
			case 'common.saveNPrint': return 'Save & Print';
			case 'common.allowMultiSelection': return 'Allow multiple section';
			case 'common.required': return 'Required';
			case 'common.optional': return 'Optional';
			case 'common.allowMultiSelectionForSale': return 'Allow Multiple Selection For Sales';
			case 'common.isRequired': return 'Is Required';
			case 'common.modifier': return 'Modifier';
			case 'common.fullPayment': return 'Full Payment';
			case 'common.payment': return 'Payment';
			case 'common.addTip': return 'Add Tip';
			case 'common.netPayable': return 'Net Payable';
			case 'common.receiveAmount': return 'Receive Amount';
			case 'common.changeAmount': return 'Change Amount';
			case 'common.quotationList': return 'Quotation List';
			case 'common.addQuotation': return 'Add Quotation';
			case 'common.convert': return 'Convert';
			case 'common.variations': return 'Variations';
			case 'common.instructions': return 'Instructions';
			case 'common.unavailable': return 'Unavailable';
			case 'common.tip': return 'Tip';
			case 'common.salesQuotationReport': return 'Sales Quotation Report';
			case 'common.orderType': return 'Order Type';
			case 'common.deliveryCharge': return 'Delivery Charge';
			case 'common.receiptNo': return 'Receipt No';
			case 'common.paidBy': return 'Paid By';
			case 'common.receivedBy': return 'Received By';
			case 'common.paymentAmount': return 'Payment Amount';
			case 'common.remainingDue': return 'Remaining Due';
			case 'common.roleNPermission': return 'Role & Permission';
			case 'common.sl': return 'SL';
			case 'common.features': return 'Features';
			case 'common.create': return 'Create';
			case 'common.update': return 'Update';
			case 'common.quotations': return 'Quotations';
			case 'common.restaurant': return 'Restaurant';
			case 'exceptions.somethingWentWrong': return 'Something went wrong, please try again';
			case 'exceptions.noCategoryFound': return 'No category found!\n Please try adding a category.';
			case 'exceptions.doYouWantToDeleteThisCategory': return 'Do you want to delete this category?';
			case 'exceptions.noBrandFound': return 'No brand found!\n Please try adding a brand.';
			case 'exceptions.doYouWantToDeleteThisBrand': return 'Do you want to delete this brand?';
			case 'exceptions.noItemStockFound': return 'No item stock found!\n Please try adding an item.';
			case 'exceptions.noUnitFound': return 'No unit found!\n Please try adding an unit.';
			case 'exceptions.doYouDeleteThisUnit': return 'Do you want to delete this unit?';
			case 'exceptions.noSaleFoundPleaseSAddProduct': return 'No sale found!\n Please try adding a sale.';
			case 'exceptions.doYouWantToDeleteThisSale': return 'Do you want to delete this sale?';
			case 'exceptions.pleaseAddItemToTheCartFirst': return 'Please add items to cart first';
			case 'exceptions.noItemAdded': return 'No Items Added';
			case 'exceptions.cannotEditOthersTable': return 'Cannot edit other table.';
			case 'exceptions.tableIsAlreadyBlocked': return 'Table is already booked.';
			case 'exceptions.failedToGetCustomerDetails': return 'Failed to get customer details.';
			case 'exceptions.noTableFoundPleaseTryAgain': return 'No Tables found!\n Please try adding a table.';
			case 'exceptions.noDueCollectionFound': return 'No due invoice found!\n You can see due invoices when available.';
			case 'exceptions.noExpenseFoundPleaseTryAddingExpense': return 'No expense found!\n Please try adding an expense.';
			case 'exceptions.doYouWantToDeleteThisExpense': return 'Do you want to delete this expense?';
			case 'exceptions.noExpenseCategoryFound': return 'No expense category found!\n Please try adding an expense category.';
			case 'exceptions.noTransactionFound': return 'No transactions found, please try again later!';
			case 'exceptions.pleaseSelectACategory': return 'Please select a category';
			case 'exceptions.noIncomeFound': return 'No income found!\n Please try adding an income';
			case 'exceptions.doYouWantToDeleteThisIncome': return 'Do you want to delete this income?';
			case 'exceptions.noIncomeCategoryFoundAddingAIncome': return 'No income category found!\n Please try adding an income category.';
			case 'exceptions.noItemFoundPleaseTryAddingItem': return 'No item found!\n Please try adding an item.';
			case 'exceptions.noPartiesFound': return 'No parties found';
			case 'exceptions.doYouWantToDeleteThisParty': return 'Do you want to delete this party';
			case 'exceptions.noLedgerFound': return ({required String transactionType}) => 'No ledger found!\n Please try adding a ${transactionType}';
			case 'exceptions.areYouSureYouSureWantToDeleteThisTaxType': return ({required String taxType}) => 'Are you sure you want to delete this ${taxType}?';
			case 'exceptions.noItemFoundPleaseSTryAddingAnPurchase': return 'No item found!\n Please try adding an purchase.';
			case 'exceptions.doYouWantToDeleteThisPurchase': return 'Do you want to delete this purchase?';
			case 'exceptions.noTransactionFoundYouSeeTransactionHereWhenAvailable': return 'No transaction found!\n You see transactions here when available.';
			case 'exceptions.noSaleFoundPleaseTryAddingSale': return 'No sale found!\n Please try adding a sale.';
			case 'exceptions.noPurchaseFoundPleaseTryAddingPurchase': return 'No purchase found!\n Please try adding a purchase.';
			case 'exceptions.noItemIncomeFound': return 'No item income found!\n You can see income data when available.';
			case 'exceptions.noItemExpenseFound': return 'No item expense found!\n You can see expense data when available.';
			case 'exceptions.noItemDueInvoiceFound': return 'No item due invoice found!\n You can see due invoices when available.';
			case 'exceptions.noItemDueCollectionInvoiceFound': return '\'No item due collection invoice found!\n You can see due collection invoices when available.';
			case 'exceptions.doYouWantToDeleteThisTable': return 'Do you want to delete this table?\'';
			case 'exceptions.thisVatIsBeingUsedOnSales': return 'This VAT is being used on sales!';
			case 'exceptions.noPaymentMethodFoundPleaseTryAddingAPaymentMethod': return 'No payment method found!\n Please try adding a payment method.';
			case 'exceptions.pleaseSelectACustomerFirst': return 'Please select a customer first.';
			case 'exceptions.pleaseSelectATableToCreateAKot': return 'Please select a table to create a kot.';
			case 'exceptions.noStaffFound': return 'No staff found!\n Please try adding a staff';
			case 'exceptions.noIngredientFound': return 'No ingredient found!\n Please try adding a ingredient.';
			case 'exceptions.exceedsPaymentAmount': return 'Received amount should not be greater than payable amount';
			case 'exceptions.noItemModifierFound': return 'No item modifier found!\n Please try adding a item modifier.';
			case 'exceptions.noModifierGroupFound': return 'No modifier group found!\n Please try adding a modifier group.';
			case 'exceptions.noOptionsFound': return 'No options found!';
			case 'exceptions.maxImageCountLimit': return 'You can only select up to 5 images.';
			case 'exceptions.noQuotationFound': return 'No quotation found!\n Please try adding a quotation.';
			case 'exceptions.noPermittedUserFound': return 'No permitted user found!\n Please try adding an user.';
			case 'prompt.logout.title': return _root.common.logout;
			case 'prompt.logout.message': return 'Are you sure to logout?';
			case 'prompt.unsavedWarning.title': return 'Do you want to go back?';
			case 'prompt.unsavedWarning.message': return 'Fields that are changed may not be saved!';
			case 'prompt.verify.title': return 'Verify Your Email';
			case 'prompt.verify.description': return ({required InlineSpan emailSpan}) => TextSpan(children: [
				const TextSpan(text: 'We have sent a verification code email'),
				emailSpan,
				const TextSpan(text: '\n\nIt may be that the mail ended up in your spam folder.'),
			]);
			case 'prompt.subscriptionExpired.title': return 'Subscription Expired!';
			case 'prompt.subscriptionExpired.message': return 'Please subscribe to continue.';
			case 'prompt.subscriptionExpired.action': return 'Subscribe';
			case 'prompt.items.delete.title': return 'Do you want to delete this item?';
			case 'prompt.items.filter.title': return 'Filter By';
			case 'prompt.items.filter.extra.lowToHigh': return 'Low to High ${_root.common.price}';
			case 'prompt.items.filter.extra.highToLow': return 'High to Low ${_root.common.price}';
			case 'prompt.checkInternet.title': return 'No Internet Connection';
			case 'prompt.checkInternet.message': return 'Please check your Wi-Fi mobile network connection and try again';
			case 'prompt.back.title': return 'Press back again to exit.';
			case 'prompt.stockModelSheet.title': return 'Add New Stock';
			case 'prompt.paymentMethod.title': return 'Do you want to delete this payment method?';
			case 'prompt.extMsg.kotSavedSuccessfully': return 'KOT saved successfully';
			case 'prompt.deleteStaff': return 'Do you want to delete this staff?';
			case 'prompt.deleteIngredient': return 'Do you want to delete this ingredient?';
			case 'prompt.deleteItemModifier': return 'Do you want to delete this item modifier?';
			case 'prompt.deleteModifierGroup': return 'Do you want to delete this modifier group?';
			case 'prompt.deleteQuotation': return 'Do you want to delete this quotation?';
			case 'form.fullName.label': return _root.common.fullName;
			case 'form.fullName.hint': return 'Enter ${_root.common.fullName}';
			case 'form.fullName.errors.required': return 'Please enter your ${_root.common.fullName}';
			case 'form.email.label': return _root.common.email;
			case 'form.email.hint': return 'Enter your ${_root.common.email}';
			case 'form.email.errors.required': return 'Please enter your ${_root.common.email} address';
			case 'form.email.errors.invalid': return '⦸ Invalid Email, Please Try Again';
			case 'form.password.label': return _root.common.password;
			case 'form.password.hint': return '* * * * * * * *';
			case 'form.password.errors.required': return 'Please enter your ${_root.common.password}';
			case 'form.password.errors.minLength': return ({required Object count}) => 'Password must be at least ${count} characters!';
			case 'form.confirmPassword.label': return 'Confirm Password';
			case 'form.confirmPassword.hint': return '* * * * * * * *';
			case 'form.confirmPassword.errors.required': return 'Please enter your ${_root.common.password}';
			case 'form.confirmPassword.errors.invalid': return '\'Confirm password doesn\'t match!';
			case 'form.otp.errors.required': return 'Please enter the otp.';
			case 'form.otp.errors.invalid': return 'Please enter current otp.';
			case 'form.profile.businessCategory.label': return 'Business Category';
			case 'form.profile.businessCategory.hint': return 'Select business category';
			case 'form.profile.businessCategory.errors.required': return 'Please select business category';
			case 'form.profile.shopOrStore.label': return 'Shop/Store Name*';
			case 'form.profile.shopOrStore.hint': return 'Enter shop or store name';
			case 'form.profile.shopOrStore.errors.required': return 'Please enter your shop or store name';
			case 'form.profile.openingBalance.label': return 'Opening Balance';
			case 'form.profile.openingBalance.hint': return 'Enter opening balance';
			case 'form.profile.vatGstTitle.label': return 'VAT/GST Title';
			case 'form.profile.vatGstTitle.hint': return 'Enter vat/gst';
			case 'form.profile.vatGstNumber.label': return 'VAT/GST Number';
			case 'form.profile.vatGstNumber.hint': return 'Enter vat/gst number';
			case 'form.vat.name.label': return 'Name';
			case 'form.vat.name.hint': return 'Enter VAT name';
			case 'form.vat.name.error.required': return 'Please enter VAT name';
			case 'form.vat.subVat.label': return 'Sub VAT';
			case 'form.vat.subVat.hint': return 'Select sub VAT';
			case 'form.vat.subVat.errors.required': return 'Please select sub VAT';
			case 'form.vat.rate.label': return 'VAT rate %';
			case 'form.vat.rate.hint': return 'Enter VAT rate';
			case 'form.vat.rate.errors.required': return 'Please enter VAT rate.';
			case 'form.category.label': return _root.common.category;
			case 'form.category.hint': return 'Select item category';
			case 'form.category.error.required': return 'Please enter category name';
			case 'form.items.barcode.label': return 'Barcode';
			case 'form.items.barcode.hint': return _root.common.selectOne;
			case 'form.items.itemName.label': return 'Item Name';
			case 'form.items.itemName.hint': return 'Enter item name';
			case 'form.items.itemName.extra.required': return 'Please enter item name';
			case 'form.items.itemCategory.label': return 'Item Category';
			case 'form.items.itemCategory.hint': return 'Item Category';
			case 'form.items.itemCategory.extra.label': return 'Select category';
			case 'form.items.itemCategory.extra.required': return 'Please select a category';
			case 'form.items.brand.label': return _root.common.brand;
			case 'form.items.brand.hint': return _root.common.selectOne;
			case 'form.items.brand.extra.hint': return 'Enter brand name';
			case 'form.items.brand.extra.required': return 'Please enter brand name';
			case 'form.items.unit.label': return _root.common.unit;
			case 'form.items.unit.hint': return _root.common.selectOne;
			case 'form.items.unit.error.required': return 'Please enter unit name';
			case 'form.items.stock.label': return 'Opening Stock';
			case 'form.items.stock.hint': return _root.common.commonHint;
			case 'form.items.stock.extra.required': return 'Please enter item quality.';
			case 'form.items.lowStock.label': return _root.common.lowStock;
			case 'form.items.lowStock.hint': return 'Ex: 5';
			case 'form.items.purchasePrice.label': return _root.common.purchasePrice;
			case 'form.items.purchasePrice.hint': return 'Ex: \$40';
			case 'form.items.purchasePrice.error.required': return 'Please enter purchase price.';
			case 'form.items.salePrice.label': return 'Sale Price';
			case 'form.items.salePrice.hint': return 'Ex: \$60';
			case 'form.items.salePrice.error.required': return 'Please enter sale price.';
			case 'form.items.totalSalePrice.label': return 'Total Sale Price';
			case 'form.items.totalSalePrice.hint': return 'Ex: \$100';
			case 'form.items.wholeSalePrice.label': return _root.common.wholeSalePrice;
			case 'form.items.wholeSalePrice.hint': return 'Enter wholesale price';
			case 'form.items.dealerPrice.label': return _root.common.dealerPrice;
			case 'form.items.dealerPrice.hint': return 'Enter dealer price';
			case 'form.items.discount.label': return 'Discount (%)';
			case 'form.items.discount.hint': return _root.common.commonHint;
			case 'form.items.applicableTax.label': return 'Applicable Tax';
			case 'form.items.applicableTax.hint': return _root.common.selectOne;
			case 'form.items.vatType.label': return _root.common.taxType;
			case 'form.items.vatType.errorText.required': return 'Please select a VAT type';
			case 'form.items.menu.label': return 'Choose Menu';
			case 'form.items.menu.errors.required': return 'Please select a menu.';
			case 'form.items.menu.hint': return 'Select a menu';
			case 'form.items.menu.extra.selectNavLabel': return 'Select Item Menu';
			case 'form.items.modifierItems.label': return 'Modifier Items';
			case 'form.items.modifierItems.hint': return 'Select modifier items';
			case 'form.items.preparationTime.label': return ({required InlineSpanBuilder minutes}) => TextSpan(children: [
				const TextSpan(text: 'Preparation Time '),
				minutes('Minutes'),
			]);
			case 'form.items.preparationTime.hint': return 'Ex: 30';
			case 'form.items.variation.name.label': return 'Name';
			case 'form.items.variation.name.hint': return 'Enter variation';
			case 'form.items.variation.name.errors.required': return 'Please enter variation name.';
			case 'form.items.variation.price.errors.required': return 'Please enter price.';
			case 'form.items.variation.price.label': return 'Price';
			case 'form.items.variation.price.hint': return 'Ex: \$30';
			case 'form.itemCart.hint': return _root.common.commonHint;
			case 'form.itemCart.error.required': return _root.common.pleaseEnterQuantity;
			case 'form.itemCart.error.noZero': return _root.common.quantityMustBeGreaterThanZero;
			case 'form.sales.autoGenerateInvoice.label': return 'Bill No';
			case 'form.sales.autoGenerateInvoice.hint': return 'P-00001';
			case 'form.sales.date.label': return 'Date';
			case 'form.sales.customer.label': return 'Customer';
			case 'form.sales.customer.hint': return 'Select Customer';
			case 'form.sales.phone.label': return 'Phone Number';
			case 'form.sales.phone.hint': return 'Enter phone number';
			case 'form.sales.address.label': return 'Address';
			case 'form.sales.address.hint': return 'Enter address';
			case 'form.sales.deliveryCharge.label': return _root.common.deliveryCharge;
			case 'form.sales.deliveryCharge.hint': return 'Ex: \$20';
			case 'form.sales.deliveryCharge.hint2': return 'Charge Ex: \$10';
			case 'form.sales.table.hint': return 'Select Table';
			case 'form.sales.waiter.hint': return 'Select Waiter';
			case 'form.bill.label': return 'Bill No';
			case 'form.bill.hint': return 'P-00001';
			case 'form.supplier.label': return 'Supplier';
			case 'form.supplier.hint': return 'Select Supplier';
			case 'form.supplier.extra.required': return 'Please select a supplier';
			case 'form.phone.label': return 'Phone Number';
			case 'form.phone.hint': return 'Enter phone number';
			case 'form.phone.errors.required': return 'Please enter phone number.';
			case 'form.address.label': return 'Address';
			case 'form.address.hint': return 'Enter address';
			case 'form.payment.label': return 'Name';
			case 'form.payment.hint': return 'Enter payment name';
			case 'form.payment.error.required': return 'Please enter a payment method name';
			case 'form.expense.label': return 'Expense Category';
			case 'form.expense.hint': return 'Select expense category';
			case 'form.expense.error.required': return 'Please enter expense category';
			case 'form.income.label': return 'Income Category';
			case 'form.income.hint': return 'Enter category name';
			case 'form.income.error.required': return 'Please enter category name';
			case 'form.income.incomeTitle.label': return 'Income Title';
			case 'form.income.incomeTitle.hint': return 'Enter income';
			case 'form.income.incomeCategory.label': return 'Income Category';
			case 'form.income.incomeCategory.hint': return 'Select category';
			case 'form.income.payment.label': return 'Payment';
			case 'form.income.payment.hint': return 'Ex: \$10';
			case 'form.note.label': return 'Note (Optional)';
			case 'form.note.hint': return 'Enter Text';
			case 'form.parties.partyName.label': return 'Party Name';
			case 'form.parties.partyName.hint': return 'Enter party name';
			case 'form.parties.partyName.error.required': return 'Please enter party name';
			case 'form.parties.partyPhone.label': return 'Phone Number';
			case 'form.parties.partyPhone.hint': return 'Enter phone number';
			case 'form.parties.partyPhone.error.required': return 'Please enter phone number';
			case 'form.table.name.label': return 'Table Name';
			case 'form.table.name.hint': return 'Enter table name';
			case 'form.table.name.error.required': return 'Please enter table name';
			case 'form.table.capacity.label': return 'Capacity';
			case 'form.table.capacity.hint': return 'Enter capacity';
			case 'form.table.capacity.error.required': return 'Please enter capacity';
			case 'form.designation.label': return _root.common.designation;
			case 'form.designation.hint': return 'Select a designation';
			case 'form.designation.errors.required': return 'Please select a designation.';
			case 'form.ingredientName.label': return 'Ingredient Name';
			case 'form.ingredientName.hint': return 'Enter ingredient name';
			case 'form.ingredientName.errors.required': return 'Please enter ingredient name';
			case 'form.item.label': return 'Item';
			case 'form.item.hint': return 'Select item';
			case 'form.item.errors.required': return 'Please select an item.';
			case 'form.modifierGroup.label': return 'Modifier Group';
			case 'form.modifierGroup.hint': return 'Select modifier group';
			case 'form.modifierGroup.errors.required': return 'Please select a modifier group.';
			case 'form.description.label': return 'Description';
			case 'form.description.hint': return 'Enter description';
			case 'form.staff.label': return _root.common.staff;
			case 'form.staff.hint': return 'Select a staff';
			case 'form.staff.errors.required': return 'Please select a staff';
			case 'form.loginUserName.label': return 'Login User Name';
			case 'form.loginUserName.hint': return 'Enter user name or email address';
			case 'form.loginUserName.errors.required': return 'Please enter user name or email address';
			case 'action.next': return 'Next';
			case 'action.getStarted': return 'Get Started';
			case 'action.skip': return 'Skip';
			case 'action.select': return 'Select';
			case 'action.save': return 'Save';
			case 'action.verify': return 'Verify';
			case 'action.signIn': return _root.common.signIn;
			case 'action.signUp': return _root.common.signUp;
			case 'action.kContinue': return 'Continue';
			case 'action.no': return 'No';
			case 'action.yes': return 'Yes';
			case 'action.okay': return 'Okay';
			case 'action.cancel': return 'Cancel';
			case 'action.confirm': return 'Confirm';
			case 'action.tryAgain': return 'Try Again';
			case 'action.reset': return 'Reset';
			case 'action.apply': return 'Apply';
			case 'action.stockAdjust': return 'Adjust Stock';
			case 'action.addMoreItems': return 'Add More Items';
			case 'action.hold': return 'Hold';
			case 'action.parcel': return _root.common.parcel;
			case 'action.buyNow': return 'Buy Now';
			case 'action.viewAll': return 'View All';
			case 'action.viewLedger': return 'View ledger';
			case 'action.submit': return 'Submit';
			case 'action.selected': return 'Selected';
			case 'action.addToCart': return 'Add to Cart';
			case 'action.selectAll': return 'Select All';
			case 'action.update': return _root.common.update;
			case 'action.addRole': return 'Add Role';
			case 'pages.language.appbarTitle': return '${_root.action.select} ${_root.common.language}';
			case 'pages.onboard.onboardData.data1.title': return 'Easy to use ${_root.common.appName}';
			case 'pages.onboard.onboardData.data1.description': return 'Seamless Orders, Effortless Bookings\n Power Your Restaurant with Ease!';
			case 'pages.onboard.onboardData.data2.title': return 'Effortless Order Management';
			case 'pages.onboard.onboardData.data2.description': return 'Streamline your restaurant\'s order-taking process with our intuitive POS system.';
			case 'pages.onboard.onboardData.data3.title': return 'Excellent Analytics & Reporting';
			case 'pages.onboard.onboardData.data3.description': return 'Our analytics dashboard provides real-time sales & purchase  reports';
			case 'pages.signIn.title': return 'Welcome Back';
			case 'pages.signIn.subtitle': return 'Please enter your details.';
			case 'pages.signIn.extra.rememberMe': return 'Remember Me';
			case 'pages.signIn.extra.signUpNavigator': return ({required InlineSpanBuilder getStarted}) => TextSpan(children: [
				const TextSpan(text: 'Don\'t have a account? '),
				getStarted(_root.action.getStarted),
			]);
			case 'pages.signIn.extra.forgotPassword': return '${_root.common.forgotPassword}?';
			case 'pages.signUp.title': return 'Create An Account';
			case 'pages.signUp.subtitle': return 'Please enter your details';
			case 'pages.signUp.extra.signInNavigator': return ({required InlineSpanBuilder signIn}) => TextSpan(children: [
				const TextSpan(text: 'Already have an account? '),
				signIn(_root.action.signIn),
			]);
			case 'pages.forgotPassword.title': return _root.common.forgotPassword;
			case 'pages.forgotPassword.subtitle': return 'Enter your email Address to recover your password.';
			case 'pages.otpVerification.title': return 'Verification';
			case 'pages.otpVerification.subtitle': return '6 digits pin has been sent to your email address';
			case 'pages.otpVerification.extra.codeResend.codeSendIn': return 'Code send in';
			case 'pages.otpVerification.extra.codeResend.resendCode': return 'Resend code';
			case 'pages.resetPassword.title': return 'Reset password';
			case 'pages.resetPassword.subtitle': return 'Reset your password to recovery and log in your account';
			case 'pages.resetPassword.extra.dialog.title': return 'Changed successfully!';
			case 'pages.resetPassword.extra.dialog.subtitle': return 'Sign in with your new password.\n Redirecting you to Sign In...';
			case 'pages.items.itemList.extra.emptyItem': return 'No item found!\n Please try adding an item.';
			case 'pages.items.manageItems.title': return 'Add New Item';
			case 'pages.items.manageItems.title2': return 'Edit Item';
			case 'pages.items.manageItems.extra.maximum': return 'Maximum 5';
			case 'pages.items.manageItems.extra.wholeSaleAndDealerPrice': return 'Wholesale & Dealer Price';
			case 'pages.items.manageItems.extra.addDiscount': return 'Add Discount';
			case 'pages.items.manageItems.extra.addVat': return 'Add VAT';
			case 'pages.items.itemDetails.title': return 'Item Details';
			case 'pages.items.itemDetails.extra.noImageAvailable': return 'No image available!';
			case 'pages.items.itemDetails.extra.preparationTime': return ({required InlineSpan min, required InlineSpanBuilder mins}) => TextSpan(children: [
				const TextSpan(text: 'Preparation Time: '),
				min,
				const TextSpan(text: ' '),
				mins('mins'),
			]);
			case 'pages.items.itemDetails.extra.pleaseSelectVariation': return 'Please select a variation';
			case 'pages.items.itemDetails.extra.pleaseSelectOption': return 'Please select an option.';
			case 'pages.items.itemDetails.extra.enterYourInstruction': return 'Enter your instructions';
			case 'pages.category.addNewCategory': return 'Add New Category';
			case 'pages.category.editCategory': return 'Edit Category';
			case 'pages.brand.addNewBrand': return 'Add New Brand';
			case 'pages.brand.editBrand': return 'Edit Brand';
			case 'pages.unit.addNewUnit': return 'Add New Unit';
			case 'pages.unit.editUnit': return 'Edit Unit';
			case 'pages.stock.stockList': return 'Stock List';
			case 'pages.aboutUs.title': return 'About Us';
			case 'pages.privacyPolicy.title': return 'Privacy Policy';
			case 'pages.termAndCondition.title': return _root.common.termAndCondition;
			case 'pages.orders.manageOrders.extra.billItems': return 'Bill Items';
			case 'pages.orders.manageOrders.extra.manageQuantity': return 'Manage Quantity';
			case 'pages.orders.manageOrders.title.editOrder': return 'Edit Order';
			case 'pages.orders.manageOrders.title.editKOT': return 'KOT Edit';
			case 'pages.onlinePayment.title': return 'Online Payment';
			case 'pages.paymentStatus.success.title': return 'Thank You!';
			case 'pages.paymentStatus.success.message': return 'We will review the payment & approve it within 24 hours.';
			case 'pages.paymentStatus.success.actionButtonText': return 'View Invoice';
			case 'pages.paymentStatus.fail.title': return 'Oops! Payment Failed';
			case 'pages.paymentStatus.fail.message': return 'Your transaction has failed due to some technical error.';
			case 'pages.paymentStatus.fail.actionButtonText': return 'Try Again';
			case 'pages.confirmationDialog.title': return 'Log out';
			case 'pages.confirmationDialog.message': return 'Are you sure to logout?';
			case 'pages.confirmationDialog.acceptationText': return 'No';
			case 'pages.confirmationDialog.rejectionText': return 'Log Out';
			case 'pages.payment.title': return _root.common.paymentMethod;
			case 'pages.payment.addPaymentMethod': return 'Add New Payment Method';
			case 'pages.payment.editPaymentMethod': return 'Edit Payment Method';
			case 'pages.payment.choseOnlinePayment': return 'Choose Online Payment';
			case 'pages.payment.selectPaymentMethod': return 'Select Payment Method';
			case 'pages.payment.pleaseSelectAPaymentMethod': return 'lease select a payment method.';
			case 'pages.payment.methodStatus.title': return 'Status';
			case 'pages.payment.methodStatus.message': return 'Status cannot be inactive if Quick View is enabled!.';
			case 'pages.subscriptionPlan.title': return 'Purchase Premium Plan';
			case 'pages.subscriptionPlan.extra.actionButtonText': return 'Go Back';
			case 'pages.subscriptionPlan.extra.message': return 'Subscription payment successfully.\n\nYou can access the subscribed features now.';
			case 'pages.subscriptionPlan.extra.mostPopular': return 'Most Popular';
			case 'pages.invoicePreview.title': return 'Invoice Preview';
			case 'pages.invoicePreview.message': return 'PDF Preview Coming Soon';
			case 'pages.currency.title': return _root.common.currency;
			case 'pages.dashboard.overview': return 'Overview';
			case 'pages.dashboard.dashboardPrivacy': return 'Dashboard Privacy';
			case 'pages.dashboard.moneyInAndMoneyOut': return 'Money In & Money Out';
			case 'pages.dashboard.lossAndProfitOverView': return 'Profit & Loss Overview';
			case 'pages.due.title': return _root.common.dueList;
			case 'pages.due.collectionList': return 'Collection List';
			case 'pages.due.dueCollection': return 'Due Collection';
			case 'pages.expense.title': return _root.common.expense;
			case 'pages.expense.editExpense': return 'Edit expense';
			case 'pages.expense.addNewExpense': return 'Add new expense';
			case 'pages.expense.editExpenseCategory': return 'Edit expense category';
			case 'pages.expense.addNewExpenseCategory': return 'Add new expense category';
			case 'pages.expense.payment': return 'Payment';
			case 'pages.expense.expenseCategory': return 'Expense category';
			case 'pages.expense.selectCategory': return 'Select category';
			case 'pages.expense.allExpense': return 'All expenses';
			case 'pages.expense.pleaseSelectACategory': return 'Please select a category';
			case 'pages.expense.expenseTitle.label': return 'Expense title';
			case 'pages.expense.expenseTitle.hint': return 'Enter expense';
			case 'pages.lossProfit.title': return 'Loss/Profit list';
			case 'pages.lossProfit.noLossProfitFound': return 'No loss/profit found!\nPlease try to create sales.';
			case 'pages.income.editIncomeCategory': return 'Edit Income Category';
			case 'pages.income.addNewIncomeCategory': return 'Add New Income Category';
			case 'pages.income.incomeCategory': return 'Income Category';
			case 'pages.income.allIncome': return 'All Income';
			case 'pages.income.editIncome': return 'Edit Income';
			case 'pages.income.addNewIncome': return 'Edit Income';
			case 'pages.income.addIncome': return 'Add Income';
			case 'pages.moneyIn.title': return 'Money In List';
			case 'pages.moneyIn.totalPaymentIn': return 'Total Money In';
			case 'pages.moneyOut.title': return 'Money Out List';
			case 'pages.moneyOut.totalMoneyOut': return 'Total Money Out';
			case 'pages.profile.title': return 'My Profile';
			case 'pages.profile.editProfile': return 'Edit Profile';
			case 'pages.profile.businessInformation': return 'Business Information';
			case 'pages.profile.profileInformation': return 'Profile Information';
			case 'pages.parties.title': return 'Parties List';
			case 'pages.parties.allParties': return 'All Parties';
			case 'pages.parties.customer': return 'Customer';
			case 'pages.parties.supplier': return 'Supplier';
			case 'pages.parties.addParties': return 'Add Parties';
			case 'pages.parties.editParties': return 'Edit Parties';
			case 'pages.parties.partiesDetails': return 'Parties Details';
			case 'pages.parties.personalInfo': return 'Personal Info';
			case 'pages.ledger.subTitle': return 'Ledger';
			case 'pages.purchase.title': return 'Add New Purchase';
			case 'pages.purchase.editPurchase': return 'Edit Purchase';
			case 'pages.reports.title': return 'Reports';
			case 'pages.table.title': return 'Add New Table';
			case 'pages.table.editTable': return 'Edit Table';
			case 'pages.tax.title': return 'VAT Rates';
			case 'pages.tax.buildHeaderTitle': return 'VAT rates - Manage your VAT rates';
			case 'pages.tax.vatGroup.title': return 'VAT Group';
			case 'pages.tax.vatGroup.subTitle': return 'VAT Group - Manage your VAT group';
			case 'pages.vat.addNewVat': return 'Add New Vat';
			case 'pages.vat.editVat': return 'Edit VAT';
			case 'pages.vat.addNewVatGroup': return 'Add New VAT Group';
			case 'pages.vat.editVatGroup': return 'Edit VAT Group';
			case 'pages.orderList.title': return 'Order List';
			case 'pages.orderList.filters.orderType.label': return _root.common.orderType;
			case 'pages.orderList.filters.orderType.hint': return 'Select Order Type';
			case 'pages.orderList.filters.paymentStatus.hint': return 'Select Payment Status';
			case 'pages.orderList.filters.paymentStatus.label': return 'Payment Status';
			case 'pages.staffs.staffList.filters.designation.label': return 'Designation';
			case 'pages.staffs.staffList.filters.designation.hint': return 'Select Designation';
			case 'pages.staffs.staffList.title': return 'All Staff';
			case 'pages.staffs.manageStaff.title1': return 'Add New Staff';
			case 'pages.staffs.manageStaff.title2': return 'Update Staff';
			case 'pages.ingredient.ingredientList.title1': return 'Ingredient List';
			case 'pages.ingredient.ingredientList.title2': return 'Select Ingredient';
			case 'pages.ingredient.manageIngredient.title1': return 'Add New Ingredient';
			case 'pages.ingredient.manageIngredient.title2': return 'Edit Ingredient';
			case 'pages.itemModifier.itemModifierList.title': return _root.common.itemModifiers;
			case 'pages.itemModifier.manageItemModifier.title1': return 'Add Item Modifiers';
			case 'pages.itemModifier.manageItemModifier.title2': return 'Edit Item Modifiers';
			case 'pages.quotation.manageQuotation.title.add': return 'Add New Quotation';
			case 'pages.quotation.manageQuotation.title.edit': return 'Edit Quotation';
			case 'pages.quotation.manageQuotation.title.convert': return 'Convert to Sale';
			case 'pages.rolePermission.rolePermissionList.title': return 'Role & Permission List';
			case 'pages.rolePermission.manageRolePermission.title1': return 'Add New Role';
			case 'pages.rolePermission.manageRolePermission.title2': return 'Edit Role';
			case 'enums.dropdownDateFilter.daily': return 'Daily';
			case 'enums.dropdownDateFilter.weekly': return 'Weekly';
			case 'enums.dropdownDateFilter.monthly': return 'Monthly';
			case 'enums.dropdownDateFilter.yearly': return 'Yearly';
			case 'enums.dropdownDateFilter.custom': return 'Custom';
			case 'enums.orderTypes.dineIn': return 'Dine In';
			case 'enums.orderTypes.pickUp': return 'Pick Up';
			case 'enums.orderTypes.delivery': return 'Delivery';
			case 'enums.orderTypes.reservation': return 'Reservation';
			case 'enums.orderTypes.quotation': return 'Quotation';
			case 'enums.paymentStatus.paid': return 'Paid';
			case 'enums.paymentStatus.unpaid': return 'Unpaid';
			case 'enums.staffTypes.manager': return 'Manager';
			case 'enums.staffTypes.waiter': return 'Waiter';
			case 'enums.staffTypes.chef': return 'Chef';
			case 'enums.staffTypes.cleaner': return 'Cleaner';
			case 'enums.staffTypes.driver': return 'Driver';
			case 'enums.staffTypes.deliveryBoy': return 'Delivery Boy';
			case 'enums.itemFoodTypes.veg': return 'Veg';
			case 'enums.itemFoodTypes.nonVeg': return 'Non Veg';
			case 'enums.itemFoodTypes.egg': return 'Egg';
			case 'enums.itemFoodTypes.drink': return 'Drink';
			case 'enums.itemFoodTypes.others': return 'Others';
			case 'enums.itemTypes.single': return 'Single';
			case 'enums.itemTypes.variation': return 'Variation';
			case 'enums.quotationStatus.open': return 'Open';
			case 'enums.quotationStatus.closed': return 'Closed';
			default: return null;
		}
	}
}

