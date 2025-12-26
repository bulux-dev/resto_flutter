///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEs implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonEs common = _TranslationsCommonEs._(_root);
	@override late final _TranslationsExceptionsEs exceptions = _TranslationsExceptionsEs._(_root);
	@override late final _TranslationsPromptEs prompt = _TranslationsPromptEs._(_root);
	@override late final _TranslationsFormEs form = _TranslationsFormEs._(_root);
	@override late final _TranslationsActionEs action = _TranslationsActionEs._(_root);
	@override late final _TranslationsPagesEs pages = _TranslationsPagesEs._(_root);
	@override late final _TranslationsEnumsEs enums = _TranslationsEnumsEs._(_root);
}

// Path: common
class _TranslationsCommonEs implements TranslationsCommonEn {
	_TranslationsCommonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'Iniciar sesión';
	@override String get signUp => 'Registrarse';
	@override String get verifyEmail => 'Verificar correo electrónico';
	@override String get customizeProfile => 'Personalizar perfil';
	@override String get imageOrLogo => 'Logo o imagen';
	@override String get createNewPassword => 'Crear nueva contraseña';
	@override String get itemsList => 'Lista de artículos';
	@override String get searchItemsName => 'Buscar nombre de artículos';
	@override String get categoryList => 'Lista de categorías';
	@override String get brandList => 'Lista de marcas';
	@override String get unitList => 'Lista de unidades';
	@override String get itemDetails => 'Detalles del artículo';
	@override String get addStock => 'Añadir stock';
	@override String get profile => 'Perfil';
	@override String get language => 'Idioma';
	@override String get termsAndConditions => 'Términos y condiciones';
	@override String get aboutUs => 'Acerca de nosotros';
	@override String get logout => 'Cerrar sesión';
	@override String get editProfile => 'Editar perfil';
	@override String get fullName => 'Nombre completo';
	@override String get email => 'Correo electrónico';
	@override String get mobileNumber => 'Número de móvil';
	@override String get address => 'Dirección';
	@override String get password => 'Contraseña';
	@override String get forgotPassword => 'Olvidé mi contraseña';
	@override String get edit => 'Editar';
	@override String get delete => 'Eliminar';
	@override String get addItems => 'Añadir artículos';
	@override String get stock => 'Existencias';
	@override String get currentStock => 'Stock actual';
	@override String get value => 'Valor';
	@override String get sales => 'Ventas';
	@override String get purchase => 'Compra';
	@override String get price => 'Precio';
	@override String get image => 'Imagen';
	@override String get upload => 'Subir';
	@override String get addNew => 'Añadir nuevo';
	@override String get pricing => 'Precios';
	@override String get name => 'Nombre';
	@override String get category => 'Categoría';
	@override String get brand => 'Marca';
	@override String get lowStock => 'Poco stock';
	@override String get unit => 'Unidad';
	@override String get vat => 'IVA';
	@override String get taxType => 'Tipo de impuesto';
	@override String get purchasePrice => 'Precio de compra';
	@override String get sellingPrice => 'Precio de venta';
	@override String get wholeSalePrice => 'Precio al por mayor';
	@override String get dealerPrice => 'Precio de distribuidor';
	@override String get searchHere => 'Buscar aquí';
	@override String get totalItems => 'Artículos totales';
	@override String get stockValue => 'Valor del stock';
	@override String get congratulation => 'Felicitaciones';
	@override String get salesList => 'Lista de ventas';
	@override String get searchInvoiceNumber => 'Buscar número de factura';
	@override String get view => 'Ver';
	@override String get kFor => 'Para';
	@override String get total => 'Total';
	@override String get subTotal => 'Subtotal';
	@override String get insufficientStockAvailableStock => 'Stock insuficiente, stock disponible';
	@override String get discount => 'Descuento';
	@override String get selectOne => 'Seleccionar uno';
	@override String get allCategory => 'Todas las categorías';
	@override String get details => 'Detalles';
	@override String get parcel => 'Paquete';
	@override String get kot => 'Kot';
	@override String get table => 'Mesa';
	@override String get holdTable => 'Mesa retenida';
	@override String get capacity => 'Capacidad';
	@override String get commonHint => 'Ej: 10';
	@override String get pleaseEnterQuantity => 'Por favor, introduzca la cantidad';
	@override String get quantityMustBeGreaterThanZero => 'La cantidad debe ser mayor que 0';
	@override String get mobile => 'Móvil';
	@override String get orderNo => 'Nº de pedido';
	@override String get dateAndTime => 'Fecha y hora';
	@override String get items => 'Artículos';
	@override String get totalAmount => 'Importe total';
	@override String get paidAmount => 'Cantidad pagada';
	@override String get dueAmount => 'Cantidad debida';
	@override String get paymentType => 'Tipo de pago';
	@override String get thankYou => 'Gracias';
	@override String developedBy({required String domain}) => 'Desarrollado por ${domain}';
	@override String get qty => 'Precio';
	@override String get amount => 'Importe';
	@override String get dashboard => 'Panel de control';
	@override String get reports => 'Informes';
	@override String get home => 'Inicio';
	@override String get parties => 'Partes';
	@override String get subscriptionPlan => 'Plan de suscripción';
	@override String get estimateList => 'Lista de presupuestos';
	@override String get purchaseList => 'Lista de compras';
	@override String get dueList => 'Lista de pendientes';
	@override String get lossOrProfit => 'Pérdida/Ganancia';
	@override String get stocks => 'Existencias';
	@override String get moneyInList => 'Lista de ingresos';
	@override String get moneyOutList => 'Lista de egresos';
	@override String get transactionList => 'Lista de transacciones';
	@override String get income => 'Ingresos';
	@override String get expense => 'Gastos';
	@override String get quickView => 'Vista rápida';
	@override String get to => 'a';
	@override String get totalSales => 'Ventas totales';
	@override String get totalPurchase => 'Compras totales';
	@override String get holdNumber => 'Pedidos retenidos';
	@override String get totalExpense => 'Gastos totales';
	@override String get loss => 'Pérdida';
	@override String get profit => 'Ganancia';
	@override String get recentTransaction => 'Transacciones recientes';
	@override String get invoice => 'Factura';
	@override String get moneyIn => 'Ingresos';
	@override String get moneyOut => 'Egresos';
	@override String get paid => 'Pagado';
	@override String get due => 'Debido';
	@override String get partial => 'Parcial';
	@override String get print => 'Imprimir';
	@override String get addCategory => 'Añadir categoría';
	@override String get addExpense => 'Añadir gasto';
	@override String get search => 'Buscar...';
	@override String get viewDetails => 'Ver detalles';
	@override String get title => 'Título';
	@override String get date => 'Fecha';
	@override String get note => 'Nota';
	@override String get phoneNumber => 'Número de teléfono';
	@override String get type => 'Tipo';
	@override String get selectContactSType => 'Seleccionar el tipo de contacto';
	@override String get moreInfo => 'Más información';
	@override String get paymentReceived => 'Pago recibido';
	@override String get selectSupplier => 'Seleccionar proveedor';
	@override String get supplier => 'Proveedor';
	@override String get received => 'Recibido';
	@override String get balanceDue => 'Saldo adeudado';
	@override String get addPurchase => 'Añadir compra';
	@override String get selectedItemWillBeCleared => 'Los artículos seleccionados serán borrados.';
	@override String get searchItemName => 'Buscar nombre del artículo';
	@override String get billItems => 'Artículos de la factura';
	@override String get addMoreItems => 'Añadir más artículos';
	@override String get payAmount => 'Pagar importe';
	@override String get salesReport => 'Informe de ventas';
	@override String get purchaseReport => 'Informe de compras';
	@override String get stockReport => 'Informe de stock';
	@override String get dueReport => 'Informe de pendientes';
	@override String get dueCollectionReport => 'Informe de cobro de pendientes';
	@override String get transactionReport => 'Informe de transacciones';
	@override String get incomeReport => 'Informe de ingresos';
	@override String get dueCollectionList => 'Lista de cobro de pendientes';
	@override String get expenseReport => 'Informes de gastos';
	@override String get dueCollection => 'Cobro de pendientes';
	@override String get myProfile => 'Mi perfil';
	@override String get printingOption => 'Opción de impresión';
	@override String get currency => 'Moneda';
	@override String get paymentMethod => 'Método de pago';
	@override String get rateUs => 'Valóranos';
	@override String get termAndCondition => 'Términos y condiciones';
	@override String get tableList => 'Lista de mesas';
	@override String get addTable => 'Añadir mesa';
	@override String get vatRate => 'Tasa de IVA %';
	@override String get action => 'Acción';
	@override String get status => 'Estado';
	@override String get active => 'Activo';
	@override String get inActive => 'Inactivo';
	@override String get subVats => 'Sub-IVAs';
	@override String get add => 'Añadir';
	@override String get taxRate => 'Tasa de impuesto %';
	@override String get subTaxes => 'Sub-impuestos';
	@override String get group => 'grupo';
	@override String get VAT => 'IVA';
	@override String get subTaxList => 'Lista de sub-impuestos';
	@override String get vatPercent => 'Porcentaje de IVA';
	@override String get statusIsCannotInActive => 'El estado no puede ser inactivo si el IVA está en ventas.';
	@override String get vatOnSales => 'IVA en ventas';
	@override String get transaction => 'Transacción';
	@override String version({required String version}) => 'Versión ${version}';
	@override String get hold => 'Mantener';
	@override String get empty => 'Vacío';
	@override String get appName => 'Michoacana SP';
	@override String get duePayment => 'Pago debido';
	@override String get orders => 'Pedidos';
	@override String get all => 'Todo';
	@override String get ingredient => 'Ingrediente';
	@override String get menus => 'Menús';
	@override String get modifierGroups => 'Grupos de modificadores';
	@override String get itemModifiers => 'Modificadores de artículo';
	@override String get staff => 'Personal';
	@override String get coupon => 'Cupón';
	@override String get pay => 'Pagar';
	@override String get pendingOrders => 'Pedidos pendientes';
	@override String get order => 'Pedido';
	@override String get payNow => 'Pagar ahora';
	@override String get addStaff => 'Añadir personal';
	@override String get designation => 'Designación';
	@override String get itemAdded => 'Artículo añadido';
	@override String get noItemAdded => 'Ningún artículo añadido';
	@override String get saveNPrint => 'Guardar e Imprimir';
	@override String get allowMultiSelection => 'Permitir selección múltiple';
	@override String get required => 'Requerido';
	@override String get optional => 'Opcional';
	@override String get allowMultiSelectionForSale => 'Permitir selección múltiple para ventas';
	@override String get isRequired => 'Es requerido';
	@override String get modifier => 'Modificador';
	@override String get fullPayment => 'Pago completo';
	@override String get payment => 'Pago';
	@override String get addTip => 'Añadir propina';
	@override String get netPayable => 'Total a pagar';
	@override String get receiveAmount => 'Cantidad recibida';
	@override String get changeAmount => 'Cambio';
	@override String get quotationList => 'Lista de Cotizaciones';
	@override String get addQuotation => 'Añadir Cotización';
	@override String get convert => 'Convertir';
	@override String get variations => 'Variaciones';
	@override String get instructions => 'Instrucciones';
	@override String get unavailable => 'No disponible';
	@override String get tip => 'Propina';
	@override String get salesQuotationReport => 'Informe de Presupuesto de Ventas';
	@override String get orderType => 'Tipo de pedido';
	@override String get deliveryCharge => 'Cargo de envío';
	@override String get receiptNo => 'Número de Recibo';
	@override String get paidBy => 'Pagado por';
	@override String get receivedBy => 'Recibido por';
	@override String get paymentAmount => 'Importe de Pago';
	@override String get remainingDue => 'Importe Pendiente';
	@override String get roleNPermission => 'Rol y Permiso';
	@override String get sl => 'SL';
	@override String get features => 'Características';
	@override String get create => 'Crear';
	@override String get update => 'Actualizar';
	@override String get quotations => 'Presupuestos';
	@override String get restaurant => 'Restaurante';
}

// Path: exceptions
class _TranslationsExceptionsEs implements TranslationsExceptionsEn {
	_TranslationsExceptionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get somethingWentWrong => 'Algo salió mal, por favor, inténtelo de nuevo';
	@override String get noCategoryFound => '¡No se encontró ninguna categoría!\n Por favor, intente añadir una categoría.';
	@override String get doYouWantToDeleteThisCategory => '¿Desea eliminar esta categoría?';
	@override String get noBrandFound => '¡No se encontró ninguna marca!\n Por favor, intente añadir una marca.';
	@override String get doYouWantToDeleteThisBrand => '¿Desea eliminar esta marca?';
	@override String get noItemStockFound => '¡No se encontró stock de artículos!\n Por favor, intente añadir un artículo.';
	@override String get noUnitFound => '¡No se encontró ninguna unidad!\n Por favor, intente añadir una unidad.';
	@override String get doYouDeleteThisUnit => '¿Desea eliminar esta unidad?';
	@override String get noSaleFoundPleaseSAddProduct => '¡No se encontró ninguna venta!\n Por favor, intente añadir una venta.';
	@override String get doYouWantToDeleteThisSale => '¿Desea eliminar esta venta?';
	@override String get pleaseAddItemToTheCartFirst => 'Por favor, añada artículos al carrito primero';
	@override String get noItemAdded => 'No se han añadido artículos';
	@override String get cannotEditOthersTable => 'No se puede editar otra mesa.';
	@override String get tableIsAlreadyBlocked => 'La mesa ya está reservada.';
	@override String get failedToGetCustomerDetails => 'No se pudieron obtener los detalles del cliente.';
	@override String get noTableFoundPleaseTryAgain => '¡No se encontraron mesas!\n Por favor, intente añadir una mesa.';
	@override String get noDueCollectionFound => '¡No se encontraron facturas pendientes!\n Puede ver las facturas pendientes cuando estén disponibles.';
	@override String get noExpenseFoundPleaseTryAddingExpense => '¡No se encontró ningún gasto!\n Por favor, intente añadir un gasto.';
	@override String get doYouWantToDeleteThisExpense => '¿Desea eliminar este gasto?';
	@override String get noExpenseCategoryFound => '¡No se encontró ninguna categoría de gastos!\n Por favor, intente añadir una categoría de gastos.';
	@override String get noTransactionFound => 'No se encontraron transacciones. ¡Por favor, inténtelo de nuevo más tarde!';
	@override String get pleaseSelectACategory => 'Por favor, seleccione una categoría';
	@override String get noIncomeFound => '¡No se encontraron ingresos!\n Por favor, intente añadir un ingreso';
	@override String get doYouWantToDeleteThisIncome => '¿Desea eliminar este ingreso?';
	@override String get noIncomeCategoryFoundAddingAIncome => '¡No se encontró ninguna categoría de ingresos!\n Por favor, intente añadir una categoría de ingresos.';
	@override String get noItemFoundPleaseTryAddingItem => '¡No se encontró ningún artículo!\n Por favor, intente añadir un artículo.';
	@override String get noPartiesFound => 'No se encontraron partes';
	@override String get doYouWantToDeleteThisParty => '¿Desea eliminar esta parte?';
	@override String noLedgerFound({required String transactionType}) => '¡No se encontró ningún libro de contabilidad!\n Por favor, intente añadir un ${transactionType}';
	@override String areYouSureYouSureWantToDeleteThisTaxType({required String taxType}) => '¿Está seguro de que desea eliminar este ${taxType}?';
	@override String get noItemFoundPleaseSTryAddingAnPurchase => '¡No se encontró ningún artículo!\n Por favor, intente añadir una compra.';
	@override String get doYouWantToDeleteThisPurchase => '¿Desea eliminar esta compra?';
	@override String get noTransactionFoundYouSeeTransactionHereWhenAvailable => '¡No se encontraron transacciones!\n Verá las transacciones aquí cuando estén disponibles.';
	@override String get noSaleFoundPleaseTryAddingSale => '¡No se encontró ninguna venta!\n Por favor, intente añadir una venta.';
	@override String get noPurchaseFoundPleaseTryAddingPurchase => '¡No se encontró ninguna compra!\n Por favor, intente añadir una compra.';
	@override String get noItemIncomeFound => '¡No se encontraron ingresos de artículos!\n Puede ver los datos de ingresos cuando estén disponibles.';
	@override String get noItemExpenseFound => '¡No se encontraron gastos de artículos!\n Puede ver los datos de gastos cuando estén disponibles.';
	@override String get noItemDueInvoiceFound => '¡No se encontraron facturas pendientes de artículos!\n Puede ver las facturas pendientes cuando estén disponibles.';
	@override String get noItemDueCollectionInvoiceFound => '\'¡No se encontraron facturas de cobro pendientes de artículos!\n Puede ver las facturas de cobro pendientes cuando estén disponibles.';
	@override String get doYouWantToDeleteThisTable => '¿Desea eliminar esta mesa?\'';
	@override String get thisVatIsBeingUsedOnSales => '¡Este IVA se está utilizando en las ventas!';
	@override String get noPaymentMethodFoundPleaseTryAddingAPaymentMethod => '¡No se encontró ningún método de pago!\n Por favor, intente añadir un método de pago.';
	@override String get pleaseSelectACustomerFirst => 'Por favor, seleccione un cliente primero.';
	@override String get pleaseSelectATableToCreateAKot => 'Por favor, seleccione una mesa para crear un KOT.';
	@override String get noStaffFound => '¡No se encontró personal!\n Por favor, intente añadir personal.';
	@override String get noIngredientFound => '¡No se encontró ningún ingrediente!\n Por favor, intente añadir un ingrediente.';
	@override String get exceedsPaymentAmount => 'La cantidad recibida no debe ser mayor que la cantidad a pagar.';
	@override String get noItemModifierFound => '¡No se encontró ningún modificador de artículo!\n Por favor, intente añadir un modificador de artículo.';
	@override String get noModifierGroupFound => '¡No se encontró ningún grupo de modificadores!\n Por favor, intente añadir un grupo de modificadores.';
	@override String get noOptionsFound => '¡No se encontraron opciones!';
	@override String get maxImageCountLimit => 'Solo puede seleccionar hasta 5 imágenes.';
	@override String get noQuotationFound => '¡No se encontró ninguna cotización!\n Por favor, intente añadir una cotización.';
	@override String get noPermittedUserFound => '¡No se encontró ningún usuario permitido!\n Intente agregar un usuario.';
}

// Path: prompt
class _TranslationsPromptEs implements TranslationsPromptEn {
	_TranslationsPromptEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPromptLogoutEs logout = _TranslationsPromptLogoutEs._(_root);
	@override late final _TranslationsPromptUnsavedWarningEs unsavedWarning = _TranslationsPromptUnsavedWarningEs._(_root);
	@override late final _TranslationsPromptVerifyEs verify = _TranslationsPromptVerifyEs._(_root);
	@override late final _TranslationsPromptSubscriptionExpiredEs subscriptionExpired = _TranslationsPromptSubscriptionExpiredEs._(_root);
	@override late final _TranslationsPromptItemsEs items = _TranslationsPromptItemsEs._(_root);
	@override late final _TranslationsPromptCheckInternetEs checkInternet = _TranslationsPromptCheckInternetEs._(_root);
	@override late final _TranslationsPromptBackEs back = _TranslationsPromptBackEs._(_root);
	@override late final _TranslationsPromptStockModelSheetEs stockModelSheet = _TranslationsPromptStockModelSheetEs._(_root);
	@override late final _TranslationsPromptPaymentMethodEs paymentMethod = _TranslationsPromptPaymentMethodEs._(_root);
	@override late final _TranslationsPromptExtMsgEs extMsg = _TranslationsPromptExtMsgEs._(_root);
	@override String get deleteStaff => '¿Desea eliminar a este miembro del personal?';
	@override String get deleteIngredient => '¿Desea eliminar este ingrediente?';
	@override String get deleteItemModifier => '¿Desea eliminar este modificador de artículo?';
	@override String get deleteModifierGroup => '¿Desea eliminar este grupo de modificadores?';
	@override String get deleteQuotation => '¿Desea eliminar esta cotización?';
}

// Path: form
class _TranslationsFormEs implements TranslationsFormEn {
	_TranslationsFormEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormFullNameEs fullName = _TranslationsFormFullNameEs._(_root);
	@override late final _TranslationsFormEmailEs email = _TranslationsFormEmailEs._(_root);
	@override late final _TranslationsFormPasswordEs password = _TranslationsFormPasswordEs._(_root);
	@override late final _TranslationsFormConfirmPasswordEs confirmPassword = _TranslationsFormConfirmPasswordEs._(_root);
	@override late final _TranslationsFormOtpEs otp = _TranslationsFormOtpEs._(_root);
	@override late final _TranslationsFormProfileEs profile = _TranslationsFormProfileEs._(_root);
	@override late final _TranslationsFormVatEs vat = _TranslationsFormVatEs._(_root);
	@override late final _TranslationsFormCategoryEs category = _TranslationsFormCategoryEs._(_root);
	@override late final _TranslationsFormItemsEs items = _TranslationsFormItemsEs._(_root);
	@override late final _TranslationsFormItemCartEs itemCart = _TranslationsFormItemCartEs._(_root);
	@override late final _TranslationsFormSalesEs sales = _TranslationsFormSalesEs._(_root);
	@override late final _TranslationsFormBillEs bill = _TranslationsFormBillEs._(_root);
	@override late final _TranslationsFormSupplierEs supplier = _TranslationsFormSupplierEs._(_root);
	@override late final _TranslationsFormPhoneEs phone = _TranslationsFormPhoneEs._(_root);
	@override late final _TranslationsFormAddressEs address = _TranslationsFormAddressEs._(_root);
	@override late final _TranslationsFormPaymentEs payment = _TranslationsFormPaymentEs._(_root);
	@override late final _TranslationsFormExpenseEs expense = _TranslationsFormExpenseEs._(_root);
	@override late final _TranslationsFormIncomeEs income = _TranslationsFormIncomeEs._(_root);
	@override late final _TranslationsFormNoteEs note = _TranslationsFormNoteEs._(_root);
	@override late final _TranslationsFormPartiesEs parties = _TranslationsFormPartiesEs._(_root);
	@override late final _TranslationsFormTableEs table = _TranslationsFormTableEs._(_root);
	@override late final _TranslationsFormDesignationEs designation = _TranslationsFormDesignationEs._(_root);
	@override late final _TranslationsFormIngredientNameEs ingredientName = _TranslationsFormIngredientNameEs._(_root);
	@override late final _TranslationsFormItemEs item = _TranslationsFormItemEs._(_root);
	@override late final _TranslationsFormModifierGroupEs modifierGroup = _TranslationsFormModifierGroupEs._(_root);
	@override late final _TranslationsFormDescriptionEs description = _TranslationsFormDescriptionEs._(_root);
	@override late final _TranslationsFormStaffEs staff = _TranslationsFormStaffEs._(_root);
	@override late final _TranslationsFormLoginUserNameEs loginUserName = _TranslationsFormLoginUserNameEs._(_root);
}

// Path: action
class _TranslationsActionEs implements TranslationsActionEn {
	_TranslationsActionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get next => 'Siguiente';
	@override String get getStarted => 'Empezar';
	@override String get skip => 'Omitir';
	@override String get select => 'Seleccionar';
	@override String get save => 'Guardar';
	@override String get verify => 'Verificar';
	@override String get signIn => _root.common.signIn;
	@override String get signUp => _root.common.signUp;
	@override String get kContinue => 'Continuar';
	@override String get no => 'No';
	@override String get yes => 'Sí';
	@override String get okay => 'De acuerdo';
	@override String get cancel => 'Cancelar';
	@override String get confirm => 'Confirmar';
	@override String get tryAgain => 'Intentar de nuevo';
	@override String get reset => 'Restablecer';
	@override String get apply => 'Aplicar';
	@override String get stockAdjust => 'Ajustar stock';
	@override String get addMoreItems => 'Añadir más artículos';
	@override String get hold => 'Retener';
	@override String get parcel => _root.common.parcel;
	@override String get buyNow => 'Comprar ahora';
	@override String get viewAll => 'Ver todo';
	@override String get viewLedger => 'Ver libro de contabilidad';
	@override String get submit => 'Enviar';
	@override String get selected => 'Seleccionado';
	@override String get addToCart => 'Añadir al carrito';
	@override String get selectAll => 'Seleccionar todo';
	@override String get update => _root.common.update;
	@override String get addRole => 'Agregar Rol';
}

// Path: pages
class _TranslationsPagesEs implements TranslationsPagesEn {
	_TranslationsPagesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesLanguageEs language = _TranslationsPagesLanguageEs._(_root);
	@override late final _TranslationsPagesOnboardEs onboard = _TranslationsPagesOnboardEs._(_root);
	@override late final _TranslationsPagesSignInEs signIn = _TranslationsPagesSignInEs._(_root);
	@override late final _TranslationsPagesSignUpEs signUp = _TranslationsPagesSignUpEs._(_root);
	@override late final _TranslationsPagesForgotPasswordEs forgotPassword = _TranslationsPagesForgotPasswordEs._(_root);
	@override late final _TranslationsPagesOtpVerificationEs otpVerification = _TranslationsPagesOtpVerificationEs._(_root);
	@override late final _TranslationsPagesResetPasswordEs resetPassword = _TranslationsPagesResetPasswordEs._(_root);
	@override late final _TranslationsPagesItemsEs items = _TranslationsPagesItemsEs._(_root);
	@override late final _TranslationsPagesCategoryEs category = _TranslationsPagesCategoryEs._(_root);
	@override late final _TranslationsPagesBrandEs brand = _TranslationsPagesBrandEs._(_root);
	@override late final _TranslationsPagesUnitEs unit = _TranslationsPagesUnitEs._(_root);
	@override late final _TranslationsPagesStockEs stock = _TranslationsPagesStockEs._(_root);
	@override late final _TranslationsPagesAboutUsEs aboutUs = _TranslationsPagesAboutUsEs._(_root);
	@override late final _TranslationsPagesPrivacyPolicyEs privacyPolicy = _TranslationsPagesPrivacyPolicyEs._(_root);
	@override late final _TranslationsPagesTermAndConditionEs termAndCondition = _TranslationsPagesTermAndConditionEs._(_root);
	@override late final _TranslationsPagesOrdersEs orders = _TranslationsPagesOrdersEs._(_root);
	@override late final _TranslationsPagesOnlinePaymentEs onlinePayment = _TranslationsPagesOnlinePaymentEs._(_root);
	@override late final _TranslationsPagesPaymentStatusEs paymentStatus = _TranslationsPagesPaymentStatusEs._(_root);
	@override late final _TranslationsPagesConfirmationDialogEs confirmationDialog = _TranslationsPagesConfirmationDialogEs._(_root);
	@override late final _TranslationsPagesPaymentEs payment = _TranslationsPagesPaymentEs._(_root);
	@override late final _TranslationsPagesSubscriptionPlanEs subscriptionPlan = _TranslationsPagesSubscriptionPlanEs._(_root);
	@override late final _TranslationsPagesInvoicePreviewEs invoicePreview = _TranslationsPagesInvoicePreviewEs._(_root);
	@override late final _TranslationsPagesCurrencyEs currency = _TranslationsPagesCurrencyEs._(_root);
	@override late final _TranslationsPagesDashboardEs dashboard = _TranslationsPagesDashboardEs._(_root);
	@override late final _TranslationsPagesDueEs due = _TranslationsPagesDueEs._(_root);
	@override late final _TranslationsPagesExpenseEs expense = _TranslationsPagesExpenseEs._(_root);
	@override late final _TranslationsPagesLossProfitEs lossProfit = _TranslationsPagesLossProfitEs._(_root);
	@override late final _TranslationsPagesIncomeEs income = _TranslationsPagesIncomeEs._(_root);
	@override late final _TranslationsPagesMoneyInEs moneyIn = _TranslationsPagesMoneyInEs._(_root);
	@override late final _TranslationsPagesMoneyOutEs moneyOut = _TranslationsPagesMoneyOutEs._(_root);
	@override late final _TranslationsPagesProfileEs profile = _TranslationsPagesProfileEs._(_root);
	@override late final _TranslationsPagesPartiesEs parties = _TranslationsPagesPartiesEs._(_root);
	@override late final _TranslationsPagesLedgerEs ledger = _TranslationsPagesLedgerEs._(_root);
	@override late final _TranslationsPagesPurchaseEs purchase = _TranslationsPagesPurchaseEs._(_root);
	@override late final _TranslationsPagesReportsEs reports = _TranslationsPagesReportsEs._(_root);
	@override late final _TranslationsPagesTableEs table = _TranslationsPagesTableEs._(_root);
	@override late final _TranslationsPagesTaxEs tax = _TranslationsPagesTaxEs._(_root);
	@override late final _TranslationsPagesVatEs vat = _TranslationsPagesVatEs._(_root);
	@override late final _TranslationsPagesOrderListEs orderList = _TranslationsPagesOrderListEs._(_root);
	@override late final _TranslationsPagesStaffsEs staffs = _TranslationsPagesStaffsEs._(_root);
	@override late final _TranslationsPagesIngredientEs ingredient = _TranslationsPagesIngredientEs._(_root);
	@override late final _TranslationsPagesItemModifierEs itemModifier = _TranslationsPagesItemModifierEs._(_root);
	@override late final _TranslationsPagesQuotationEs quotation = _TranslationsPagesQuotationEs._(_root);
	@override late final _TranslationsPagesRolePermissionEs rolePermission = _TranslationsPagesRolePermissionEs._(_root);
}

// Path: enums
class _TranslationsEnumsEs implements TranslationsEnumsEn {
	_TranslationsEnumsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsEnumsDropdownDateFilterEs dropdownDateFilter = _TranslationsEnumsDropdownDateFilterEs._(_root);
	@override late final _TranslationsEnumsOrderTypesEs orderTypes = _TranslationsEnumsOrderTypesEs._(_root);
	@override late final _TranslationsEnumsPaymentStatusEs paymentStatus = _TranslationsEnumsPaymentStatusEs._(_root);
	@override late final _TranslationsEnumsStaffTypesEs staffTypes = _TranslationsEnumsStaffTypesEs._(_root);
	@override late final _TranslationsEnumsItemFoodTypesEs itemFoodTypes = _TranslationsEnumsItemFoodTypesEs._(_root);
	@override late final _TranslationsEnumsItemTypesEs itemTypes = _TranslationsEnumsItemTypesEs._(_root);
	@override late final _TranslationsEnumsQuotationStatusEs quotationStatus = _TranslationsEnumsQuotationStatusEs._(_root);
}

// Path: prompt.logout
class _TranslationsPromptLogoutEs implements TranslationsPromptLogoutEn {
	_TranslationsPromptLogoutEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.logout;
	@override String get message => '¿Está seguro de que desea cerrar sesión?';
}

// Path: prompt.unsavedWarning
class _TranslationsPromptUnsavedWarningEs implements TranslationsPromptUnsavedWarningEn {
	_TranslationsPromptUnsavedWarningEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Quieres volver?';
	@override String get message => '¡Los campos modificados podrían no guardarse!';
}

// Path: prompt.verify
class _TranslationsPromptVerifyEs implements TranslationsPromptVerifyEn {
	_TranslationsPromptVerifyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verifica tu correo electrónico';
	@override TextSpan description({required InlineSpan emailSpan}) => TextSpan(children: [
		const TextSpan(text: 'Hemos enviado un correo electrónico con un código de verificación'),
		emailSpan,
		const TextSpan(text: '\nEs posible que el correo haya terminado en su carpeta de spam.'),
	]);
}

// Path: prompt.subscriptionExpired
class _TranslationsPromptSubscriptionExpiredEs implements TranslationsPromptSubscriptionExpiredEn {
	_TranslationsPromptSubscriptionExpiredEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Suscripción Expirada!';
	@override String get message => 'Por favor, suscríbete para continuar.';
	@override String get action => 'Suscribirse';
}

// Path: prompt.items
class _TranslationsPromptItemsEs implements TranslationsPromptItemsEn {
	_TranslationsPromptItemsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPromptItemsDeleteEs delete = _TranslationsPromptItemsDeleteEs._(_root);
	@override late final _TranslationsPromptItemsFilterEs filter = _TranslationsPromptItemsFilterEs._(_root);
}

// Path: prompt.checkInternet
class _TranslationsPromptCheckInternetEs implements TranslationsPromptCheckInternetEn {
	_TranslationsPromptCheckInternetEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sin conexión a Internet';
	@override String get message => 'Por favor, compruebe su conexión Wi-Fi o de red móvil e inténtelo de nuevo';
}

// Path: prompt.back
class _TranslationsPromptBackEs implements TranslationsPromptBackEn {
	_TranslationsPromptBackEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Presione de nuevo para salir.';
}

// Path: prompt.stockModelSheet
class _TranslationsPromptStockModelSheetEs implements TranslationsPromptStockModelSheetEn {
	_TranslationsPromptStockModelSheetEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir nuevo stock';
}

// Path: prompt.paymentMethod
class _TranslationsPromptPaymentMethodEs implements TranslationsPromptPaymentMethodEn {
	_TranslationsPromptPaymentMethodEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Desea eliminar este método de pago?';
}

// Path: prompt.extMsg
class _TranslationsPromptExtMsgEs implements TranslationsPromptExtMsgEn {
	_TranslationsPromptExtMsgEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get kotSavedSuccessfully => 'KOT guardado con éxito';
}

// Path: form.fullName
class _TranslationsFormFullNameEs implements TranslationsFormFullNameEn {
	_TranslationsFormFullNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.fullName;
	@override String get hint => 'Ingrese ${_root.common.fullName}';
	@override late final _TranslationsFormFullNameErrorsEs errors = _TranslationsFormFullNameErrorsEs._(_root);
}

// Path: form.email
class _TranslationsFormEmailEs implements TranslationsFormEmailEn {
	_TranslationsFormEmailEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.email;
	@override String get hint => 'Ingrese su ${_root.common.email}';
	@override late final _TranslationsFormEmailErrorsEs errors = _TranslationsFormEmailErrorsEs._(_root);
}

// Path: form.password
class _TranslationsFormPasswordEs implements TranslationsFormPasswordEn {
	_TranslationsFormPasswordEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.password;
	@override String get hint => '* * * * * * * *';
	@override late final _TranslationsFormPasswordErrorsEs errors = _TranslationsFormPasswordErrorsEs._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordEs implements TranslationsFormConfirmPasswordEn {
	_TranslationsFormConfirmPasswordEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Confirmar contraseña';
	@override String get hint => '* * * * * * * *';
	@override late final _TranslationsFormConfirmPasswordErrorsEs errors = _TranslationsFormConfirmPasswordErrorsEs._(_root);
}

// Path: form.otp
class _TranslationsFormOtpEs implements TranslationsFormOtpEn {
	_TranslationsFormOtpEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormOtpErrorsEs errors = _TranslationsFormOtpErrorsEs._(_root);
}

// Path: form.profile
class _TranslationsFormProfileEs implements TranslationsFormProfileEn {
	_TranslationsFormProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormProfileBusinessCategoryEs businessCategory = _TranslationsFormProfileBusinessCategoryEs._(_root);
	@override late final _TranslationsFormProfileShopOrStoreEs shopOrStore = _TranslationsFormProfileShopOrStoreEs._(_root);
	@override late final _TranslationsFormProfileOpeningBalanceEs openingBalance = _TranslationsFormProfileOpeningBalanceEs._(_root);
	@override late final _TranslationsFormProfileVatGstTitleEs vatGstTitle = _TranslationsFormProfileVatGstTitleEs._(_root);
	@override late final _TranslationsFormProfileVatGstNumberEs vatGstNumber = _TranslationsFormProfileVatGstNumberEs._(_root);
}

// Path: form.vat
class _TranslationsFormVatEs implements TranslationsFormVatEn {
	_TranslationsFormVatEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormVatNameEs name = _TranslationsFormVatNameEs._(_root);
	@override late final _TranslationsFormVatSubVatEs subVat = _TranslationsFormVatSubVatEs._(_root);
	@override late final _TranslationsFormVatRateEs rate = _TranslationsFormVatRateEs._(_root);
}

// Path: form.category
class _TranslationsFormCategoryEs implements TranslationsFormCategoryEn {
	_TranslationsFormCategoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.category;
	@override String get hint => 'Seleccionar categoría del artículo';
	@override late final _TranslationsFormCategoryErrorEs error = _TranslationsFormCategoryErrorEs._(_root);
}

// Path: form.items
class _TranslationsFormItemsEs implements TranslationsFormItemsEn {
	_TranslationsFormItemsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormItemsBarcodeEs barcode = _TranslationsFormItemsBarcodeEs._(_root);
	@override late final _TranslationsFormItemsItemNameEs itemName = _TranslationsFormItemsItemNameEs._(_root);
	@override late final _TranslationsFormItemsItemCategoryEs itemCategory = _TranslationsFormItemsItemCategoryEs._(_root);
	@override late final _TranslationsFormItemsBrandEs brand = _TranslationsFormItemsBrandEs._(_root);
	@override late final _TranslationsFormItemsUnitEs unit = _TranslationsFormItemsUnitEs._(_root);
	@override late final _TranslationsFormItemsStockEs stock = _TranslationsFormItemsStockEs._(_root);
	@override late final _TranslationsFormItemsLowStockEs lowStock = _TranslationsFormItemsLowStockEs._(_root);
	@override late final _TranslationsFormItemsPurchasePriceEs purchasePrice = _TranslationsFormItemsPurchasePriceEs._(_root);
	@override late final _TranslationsFormItemsSalePriceEs salePrice = _TranslationsFormItemsSalePriceEs._(_root);
	@override late final _TranslationsFormItemsTotalSalePriceEs totalSalePrice = _TranslationsFormItemsTotalSalePriceEs._(_root);
	@override late final _TranslationsFormItemsWholeSalePriceEs wholeSalePrice = _TranslationsFormItemsWholeSalePriceEs._(_root);
	@override late final _TranslationsFormItemsDealerPriceEs dealerPrice = _TranslationsFormItemsDealerPriceEs._(_root);
	@override late final _TranslationsFormItemsDiscountEs discount = _TranslationsFormItemsDiscountEs._(_root);
	@override late final _TranslationsFormItemsApplicableTaxEs applicableTax = _TranslationsFormItemsApplicableTaxEs._(_root);
	@override late final _TranslationsFormItemsVatTypeEs vatType = _TranslationsFormItemsVatTypeEs._(_root);
	@override late final _TranslationsFormItemsMenuEs menu = _TranslationsFormItemsMenuEs._(_root);
	@override late final _TranslationsFormItemsModifierItemsEs modifierItems = _TranslationsFormItemsModifierItemsEs._(_root);
	@override late final _TranslationsFormItemsPreparationTimeEs preparationTime = _TranslationsFormItemsPreparationTimeEs._(_root);
	@override late final _TranslationsFormItemsVariationEs variation = _TranslationsFormItemsVariationEs._(_root);
}

// Path: form.itemCart
class _TranslationsFormItemCartEs implements TranslationsFormItemCartEn {
	_TranslationsFormItemCartEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hint => _root.common.commonHint;
	@override late final _TranslationsFormItemCartErrorEs error = _TranslationsFormItemCartErrorEs._(_root);
}

// Path: form.sales
class _TranslationsFormSalesEs implements TranslationsFormSalesEn {
	_TranslationsFormSalesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormSalesAutoGenerateInvoiceEs autoGenerateInvoice = _TranslationsFormSalesAutoGenerateInvoiceEs._(_root);
	@override late final _TranslationsFormSalesDateEs date = _TranslationsFormSalesDateEs._(_root);
	@override late final _TranslationsFormSalesCustomerEs customer = _TranslationsFormSalesCustomerEs._(_root);
	@override late final _TranslationsFormSalesPhoneEs phone = _TranslationsFormSalesPhoneEs._(_root);
	@override late final _TranslationsFormSalesAddressEs address = _TranslationsFormSalesAddressEs._(_root);
	@override late final _TranslationsFormSalesDeliveryChargeEs deliveryCharge = _TranslationsFormSalesDeliveryChargeEs._(_root);
	@override late final _TranslationsFormSalesTableEs table = _TranslationsFormSalesTableEs._(_root);
	@override late final _TranslationsFormSalesWaiterEs waiter = _TranslationsFormSalesWaiterEs._(_root);
}

// Path: form.bill
class _TranslationsFormBillEs implements TranslationsFormBillEn {
	_TranslationsFormBillEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nº de factura';
	@override String get hint => 'P-00001';
}

// Path: form.supplier
class _TranslationsFormSupplierEs implements TranslationsFormSupplierEn {
	_TranslationsFormSupplierEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Proveedor';
	@override String get hint => 'Seleccionar proveedor';
	@override late final _TranslationsFormSupplierExtraEs extra = _TranslationsFormSupplierExtraEs._(_root);
}

// Path: form.phone
class _TranslationsFormPhoneEs implements TranslationsFormPhoneEn {
	_TranslationsFormPhoneEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Número de teléfono';
	@override String get hint => 'Ingrese el número de teléfono';
	@override late final _TranslationsFormPhoneErrorsEs errors = _TranslationsFormPhoneErrorsEs._(_root);
}

// Path: form.address
class _TranslationsFormAddressEs implements TranslationsFormAddressEn {
	_TranslationsFormAddressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Dirección';
	@override String get hint => 'Ingrese la dirección';
}

// Path: form.payment
class _TranslationsFormPaymentEs implements TranslationsFormPaymentEn {
	_TranslationsFormPaymentEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre';
	@override String get hint => 'Ingrese el nombre del pago';
	@override late final _TranslationsFormPaymentErrorEs error = _TranslationsFormPaymentErrorEs._(_root);
}

// Path: form.expense
class _TranslationsFormExpenseEs implements TranslationsFormExpenseEn {
	_TranslationsFormExpenseEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Categoría de gasto';
	@override String get hint => 'Seleccionar categoría de gasto';
	@override late final _TranslationsFormExpenseErrorEs error = _TranslationsFormExpenseErrorEs._(_root);
}

// Path: form.income
class _TranslationsFormIncomeEs implements TranslationsFormIncomeEn {
	_TranslationsFormIncomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Categoría de ingreso';
	@override String get hint => 'Ingrese el nombre de la categoría';
	@override late final _TranslationsFormIncomeErrorEs error = _TranslationsFormIncomeErrorEs._(_root);
	@override late final _TranslationsFormIncomeIncomeTitleEs incomeTitle = _TranslationsFormIncomeIncomeTitleEs._(_root);
	@override late final _TranslationsFormIncomeIncomeCategoryEs incomeCategory = _TranslationsFormIncomeIncomeCategoryEs._(_root);
	@override late final _TranslationsFormIncomePaymentEs payment = _TranslationsFormIncomePaymentEs._(_root);
}

// Path: form.note
class _TranslationsFormNoteEs implements TranslationsFormNoteEn {
	_TranslationsFormNoteEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nota (Opcional)';
	@override String get hint => 'Ingrese texto';
}

// Path: form.parties
class _TranslationsFormPartiesEs implements TranslationsFormPartiesEn {
	_TranslationsFormPartiesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormPartiesPartyNameEs partyName = _TranslationsFormPartiesPartyNameEs._(_root);
	@override late final _TranslationsFormPartiesPartyPhoneEs partyPhone = _TranslationsFormPartiesPartyPhoneEs._(_root);
}

// Path: form.table
class _TranslationsFormTableEs implements TranslationsFormTableEn {
	_TranslationsFormTableEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormTableNameEs name = _TranslationsFormTableNameEs._(_root);
	@override late final _TranslationsFormTableCapacityEs capacity = _TranslationsFormTableCapacityEs._(_root);
}

// Path: form.designation
class _TranslationsFormDesignationEs implements TranslationsFormDesignationEn {
	_TranslationsFormDesignationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.designation;
	@override String get hint => 'Seleccione una designación';
	@override late final _TranslationsFormDesignationErrorsEs errors = _TranslationsFormDesignationErrorsEs._(_root);
}

// Path: form.ingredientName
class _TranslationsFormIngredientNameEs implements TranslationsFormIngredientNameEn {
	_TranslationsFormIngredientNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre del ingrediente';
	@override String get hint => 'Introduzca el nombre del ingrediente';
	@override late final _TranslationsFormIngredientNameErrorsEs errors = _TranslationsFormIngredientNameErrorsEs._(_root);
}

// Path: form.item
class _TranslationsFormItemEs implements TranslationsFormItemEn {
	_TranslationsFormItemEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Artículo';
	@override String get hint => 'Seleccionar artículo';
	@override late final _TranslationsFormItemErrorsEs errors = _TranslationsFormItemErrorsEs._(_root);
}

// Path: form.modifierGroup
class _TranslationsFormModifierGroupEs implements TranslationsFormModifierGroupEn {
	_TranslationsFormModifierGroupEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Grupo de modificadores';
	@override String get hint => 'Seleccionar grupo de modificadores';
	@override late final _TranslationsFormModifierGroupErrorsEs errors = _TranslationsFormModifierGroupErrorsEs._(_root);
}

// Path: form.description
class _TranslationsFormDescriptionEs implements TranslationsFormDescriptionEn {
	_TranslationsFormDescriptionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Descripción';
	@override String get hint => 'Introduzca la descripción';
}

// Path: form.staff
class _TranslationsFormStaffEs implements TranslationsFormStaffEn {
	_TranslationsFormStaffEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.staff;
	@override String get hint => 'Seleccionar un empleado';
	@override late final _TranslationsFormStaffErrorsEs errors = _TranslationsFormStaffErrorsEs._(_root);
}

// Path: form.loginUserName
class _TranslationsFormLoginUserNameEs implements TranslationsFormLoginUserNameEn {
	_TranslationsFormLoginUserNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre de usuario de inicio de sesión';
	@override String get hint => 'Introduzca nombre de usuario o dirección de correo electrónico';
	@override late final _TranslationsFormLoginUserNameErrorsEs errors = _TranslationsFormLoginUserNameErrorsEs._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageEs implements TranslationsPagesLanguageEn {
	_TranslationsPagesLanguageEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardEs implements TranslationsPagesOnboardEn {
	_TranslationsPagesOnboardEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOnboardOnboardDataEs onboardData = _TranslationsPagesOnboardOnboardDataEs._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInEs implements TranslationsPagesSignInEn {
	_TranslationsPagesSignInEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bienvenido de nuevo';
	@override String get subtitle => 'Por favor, introduzca sus datos.';
	@override late final _TranslationsPagesSignInExtraEs extra = _TranslationsPagesSignInExtraEs._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpEs implements TranslationsPagesSignUpEn {
	_TranslationsPagesSignUpEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Crear una cuenta';
	@override String get subtitle => 'Por favor, introduzca sus datos';
	@override late final _TranslationsPagesSignUpExtraEs extra = _TranslationsPagesSignUpExtraEs._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordEs implements TranslationsPagesForgotPasswordEn {
	_TranslationsPagesForgotPasswordEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.forgotPassword;
	@override String get subtitle => 'Ingrese su dirección de correo electrónico para recuperar su contraseña.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationEs implements TranslationsPagesOtpVerificationEn {
	_TranslationsPagesOtpVerificationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Verificación';
	@override String get subtitle => 'Se ha enviado un pin de 6 dígitos a su dirección de correo electrónico';
	@override late final _TranslationsPagesOtpVerificationExtraEs extra = _TranslationsPagesOtpVerificationExtraEs._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordEs implements TranslationsPagesResetPasswordEn {
	_TranslationsPagesResetPasswordEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Restablecer contraseña';
	@override String get subtitle => 'Restablezca su contraseña para recuperarla e iniciar sesión en su cuenta';
	@override late final _TranslationsPagesResetPasswordExtraEs extra = _TranslationsPagesResetPasswordExtraEs._(_root);
}

// Path: pages.items
class _TranslationsPagesItemsEs implements TranslationsPagesItemsEn {
	_TranslationsPagesItemsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesItemsItemListEs itemList = _TranslationsPagesItemsItemListEs._(_root);
	@override late final _TranslationsPagesItemsManageItemsEs manageItems = _TranslationsPagesItemsManageItemsEs._(_root);
	@override late final _TranslationsPagesItemsItemDetailsEs itemDetails = _TranslationsPagesItemsItemDetailsEs._(_root);
}

// Path: pages.category
class _TranslationsPagesCategoryEs implements TranslationsPagesCategoryEn {
	_TranslationsPagesCategoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get addNewCategory => 'Añadir nueva categoría';
	@override String get editCategory => 'Editar categoría';
}

// Path: pages.brand
class _TranslationsPagesBrandEs implements TranslationsPagesBrandEn {
	_TranslationsPagesBrandEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get addNewBrand => 'Añadir nueva marca';
	@override String get editBrand => 'Editar marca';
}

// Path: pages.unit
class _TranslationsPagesUnitEs implements TranslationsPagesUnitEn {
	_TranslationsPagesUnitEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get addNewUnit => 'Añadir nueva unidad';
	@override String get editUnit => 'Editar unidad';
}

// Path: pages.stock
class _TranslationsPagesStockEs implements TranslationsPagesStockEn {
	_TranslationsPagesStockEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get stockList => 'Lista de stock';
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsEs implements TranslationsPagesAboutUsEn {
	_TranslationsPagesAboutUsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Acerca de nosotros';
}

// Path: pages.privacyPolicy
class _TranslationsPagesPrivacyPolicyEs implements TranslationsPagesPrivacyPolicyEn {
	_TranslationsPagesPrivacyPolicyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Política de privacidad';
}

// Path: pages.termAndCondition
class _TranslationsPagesTermAndConditionEs implements TranslationsPagesTermAndConditionEn {
	_TranslationsPagesTermAndConditionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.termAndCondition;
}

// Path: pages.orders
class _TranslationsPagesOrdersEs implements TranslationsPagesOrdersEn {
	_TranslationsPagesOrdersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOrdersManageOrdersEs manageOrders = _TranslationsPagesOrdersManageOrdersEs._(_root);
}

// Path: pages.onlinePayment
class _TranslationsPagesOnlinePaymentEs implements TranslationsPagesOnlinePaymentEn {
	_TranslationsPagesOnlinePaymentEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pago en línea';
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusEs implements TranslationsPagesPaymentStatusEn {
	_TranslationsPagesPaymentStatusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesPaymentStatusSuccessEs success = _TranslationsPagesPaymentStatusSuccessEs._(_root);
	@override late final _TranslationsPagesPaymentStatusFailEs fail = _TranslationsPagesPaymentStatusFailEs._(_root);
}

// Path: pages.confirmationDialog
class _TranslationsPagesConfirmationDialogEs implements TranslationsPagesConfirmationDialogEn {
	_TranslationsPagesConfirmationDialogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cerrar sesión';
	@override String get message => '¿Está seguro de que desea cerrar sesión?';
	@override String get acceptationText => 'No';
	@override String get rejectionText => 'Cerrar sesión';
}

// Path: pages.payment
class _TranslationsPagesPaymentEs implements TranslationsPagesPaymentEn {
	_TranslationsPagesPaymentEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.paymentMethod;
	@override String get addPaymentMethod => 'Añadir nuevo método de pago';
	@override String get editPaymentMethod => 'Editar método de pago';
	@override String get choseOnlinePayment => 'Elegir pago en línea';
	@override String get selectPaymentMethod => 'Seleccionar método de pago';
	@override String get pleaseSelectAPaymentMethod => 'Por favor, seleccione un método de pago.';
	@override late final _TranslationsPagesPaymentMethodStatusEs methodStatus = _TranslationsPagesPaymentMethodStatusEs._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanEs implements TranslationsPagesSubscriptionPlanEn {
	_TranslationsPagesSubscriptionPlanEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Comprar plan premium';
	@override late final _TranslationsPagesSubscriptionPlanExtraEs extra = _TranslationsPagesSubscriptionPlanExtraEs._(_root);
}

// Path: pages.invoicePreview
class _TranslationsPagesInvoicePreviewEs implements TranslationsPagesInvoicePreviewEn {
	_TranslationsPagesInvoicePreviewEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Vista previa de la factura';
	@override String get message => 'Vista previa en PDF próximamente';
}

// Path: pages.currency
class _TranslationsPagesCurrencyEs implements TranslationsPagesCurrencyEn {
	_TranslationsPagesCurrencyEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.currency;
}

// Path: pages.dashboard
class _TranslationsPagesDashboardEs implements TranslationsPagesDashboardEn {
	_TranslationsPagesDashboardEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get overview => 'Información general';
	@override String get dashboardPrivacy => 'Privacidad del panel';
	@override String get moneyInAndMoneyOut => 'Ingresos y egresos';
	@override String get lossAndProfitOverView => 'Resumen de pérdidas y ganancias';
}

// Path: pages.due
class _TranslationsPagesDueEs implements TranslationsPagesDueEn {
	_TranslationsPagesDueEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.dueList;
	@override String get collectionList => 'Lista de cobros';
	@override String get dueCollection => 'Cobro de pendientes';
}

// Path: pages.expense
class _TranslationsPagesExpenseEs implements TranslationsPagesExpenseEn {
	_TranslationsPagesExpenseEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.expense;
	@override String get editExpense => 'Editar Gasto';
	@override String get addNewExpense => 'Añadir Nuevo Gasto';
	@override String get editExpenseCategory => 'Editar Categoría de Gasto';
	@override String get addNewExpenseCategory => 'Añadir Nueva Categoría de Gasto';
	@override String get payment => 'Pago';
	@override String get expenseCategory => 'Categoría de Gasto';
	@override String get selectCategory => 'Seleccionar Categoría';
	@override String get allExpense => 'Todos los Gastos';
	@override String get pleaseSelectACategory => 'Por favor, seleccione una categoría';
	@override late final _TranslationsPagesExpenseExpenseTitleEs expenseTitle = _TranslationsPagesExpenseExpenseTitleEs._(_root);
}

// Path: pages.lossProfit
class _TranslationsPagesLossProfitEs implements TranslationsPagesLossProfitEn {
	_TranslationsPagesLossProfitEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lista de Pérdidas/Ganancias';
	@override String get noLossProfitFound => 'No se encontraron pérdidas/ganancias.\nPor favor, intente crear algunas ventas.';
}

// Path: pages.income
class _TranslationsPagesIncomeEs implements TranslationsPagesIncomeEn {
	_TranslationsPagesIncomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get editIncomeCategory => 'Editar categoría de ingresos';
	@override String get addNewIncomeCategory => 'Añadir nueva categoría de ingresos';
	@override String get incomeCategory => 'Categoría de ingresos';
	@override String get allIncome => 'Todos los ingresos';
	@override String get editIncome => 'Editar ingreso';
	@override String get addNewIncome => 'Editar ingreso';
	@override String get addIncome => 'Añadir ingreso';
}

// Path: pages.moneyIn
class _TranslationsPagesMoneyInEs implements TranslationsPagesMoneyInEn {
	_TranslationsPagesMoneyInEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lista de ingresos';
	@override String get totalPaymentIn => 'Ingresos totales';
}

// Path: pages.moneyOut
class _TranslationsPagesMoneyOutEs implements TranslationsPagesMoneyOutEn {
	_TranslationsPagesMoneyOutEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lista de egresos';
	@override String get totalMoneyOut => 'Egresos totales';
}

// Path: pages.profile
class _TranslationsPagesProfileEs implements TranslationsPagesProfileEn {
	_TranslationsPagesProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mi perfil';
	@override String get editProfile => 'Editar perfil';
	@override String get businessInformation => 'Información del negocio';
	@override String get profileInformation => 'Información del perfil';
}

// Path: pages.parties
class _TranslationsPagesPartiesEs implements TranslationsPagesPartiesEn {
	_TranslationsPagesPartiesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lista de partes';
	@override String get allParties => 'Todas las partes';
	@override String get customer => 'Cliente';
	@override String get supplier => 'Proveedor';
	@override String get addParties => 'Añadir partes';
	@override String get editParties => 'Editar partes';
	@override String get partiesDetails => 'Detalles de las partes';
	@override String get personalInfo => 'Información personal';
}

// Path: pages.ledger
class _TranslationsPagesLedgerEs implements TranslationsPagesLedgerEn {
	_TranslationsPagesLedgerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get subTitle => 'Libro de contabilidad';
}

// Path: pages.purchase
class _TranslationsPagesPurchaseEs implements TranslationsPagesPurchaseEn {
	_TranslationsPagesPurchaseEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir nueva compra';
	@override String get editPurchase => 'Editar compra';
}

// Path: pages.reports
class _TranslationsPagesReportsEs implements TranslationsPagesReportsEn {
	_TranslationsPagesReportsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informes';
}

// Path: pages.table
class _TranslationsPagesTableEs implements TranslationsPagesTableEn {
	_TranslationsPagesTableEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir nueva mesa';
	@override String get editTable => 'Editar mesa';
}

// Path: pages.tax
class _TranslationsPagesTaxEs implements TranslationsPagesTaxEn {
	_TranslationsPagesTaxEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tasas de IVA';
	@override String get buildHeaderTitle => 'Tasas de IVA - Gestione sus tasas de IVA';
	@override late final _TranslationsPagesTaxVatGroupEs vatGroup = _TranslationsPagesTaxVatGroupEs._(_root);
}

// Path: pages.vat
class _TranslationsPagesVatEs implements TranslationsPagesVatEn {
	_TranslationsPagesVatEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get addNewVat => 'Añadir nuevo IVA';
	@override String get editVat => 'Editar IVA';
	@override String get addNewVatGroup => 'Añadir nuevo grupo de IVA';
	@override String get editVatGroup => 'Editar grupo de IVA';
}

// Path: pages.orderList
class _TranslationsPagesOrderListEs implements TranslationsPagesOrderListEn {
	_TranslationsPagesOrderListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lista de pedidos';
	@override late final _TranslationsPagesOrderListFiltersEs filters = _TranslationsPagesOrderListFiltersEs._(_root);
}

// Path: pages.staffs
class _TranslationsPagesStaffsEs implements TranslationsPagesStaffsEn {
	_TranslationsPagesStaffsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesStaffsStaffListEs staffList = _TranslationsPagesStaffsStaffListEs._(_root);
	@override late final _TranslationsPagesStaffsManageStaffEs manageStaff = _TranslationsPagesStaffsManageStaffEs._(_root);
}

// Path: pages.ingredient
class _TranslationsPagesIngredientEs implements TranslationsPagesIngredientEn {
	_TranslationsPagesIngredientEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesIngredientIngredientListEs ingredientList = _TranslationsPagesIngredientIngredientListEs._(_root);
	@override late final _TranslationsPagesIngredientManageIngredientEs manageIngredient = _TranslationsPagesIngredientManageIngredientEs._(_root);
}

// Path: pages.itemModifier
class _TranslationsPagesItemModifierEs implements TranslationsPagesItemModifierEn {
	_TranslationsPagesItemModifierEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesItemModifierItemModifierListEs itemModifierList = _TranslationsPagesItemModifierItemModifierListEs._(_root);
	@override late final _TranslationsPagesItemModifierManageItemModifierEs manageItemModifier = _TranslationsPagesItemModifierManageItemModifierEs._(_root);
}

// Path: pages.quotation
class _TranslationsPagesQuotationEs implements TranslationsPagesQuotationEn {
	_TranslationsPagesQuotationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesQuotationManageQuotationEs manageQuotation = _TranslationsPagesQuotationManageQuotationEs._(_root);
}

// Path: pages.rolePermission
class _TranslationsPagesRolePermissionEs implements TranslationsPagesRolePermissionEn {
	_TranslationsPagesRolePermissionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesRolePermissionRolePermissionListEs rolePermissionList = _TranslationsPagesRolePermissionRolePermissionListEs._(_root);
	@override late final _TranslationsPagesRolePermissionManageRolePermissionEs manageRolePermission = _TranslationsPagesRolePermissionManageRolePermissionEs._(_root);
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterEs implements TranslationsEnumsDropdownDateFilterEn {
	_TranslationsEnumsDropdownDateFilterEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get daily => 'Diario';
	@override String get weekly => 'Semanal';
	@override String get monthly => 'Mensual';
	@override String get yearly => 'Anual';
	@override String get custom => 'Personalizado';
}

// Path: enums.orderTypes
class _TranslationsEnumsOrderTypesEs implements TranslationsEnumsOrderTypesEn {
	_TranslationsEnumsOrderTypesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get dineIn => 'Comer en el local';
	@override String get pickUp => 'Recoger';
	@override String get delivery => 'Entrega';
	@override String get reservation => 'Reserva';
	@override String get quotation => 'Presupuesto';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusEs implements TranslationsEnumsPaymentStatusEn {
	_TranslationsEnumsPaymentStatusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get paid => 'Pagado';
	@override String get unpaid => 'Impago';
}

// Path: enums.staffTypes
class _TranslationsEnumsStaffTypesEs implements TranslationsEnumsStaffTypesEn {
	_TranslationsEnumsStaffTypesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get manager => 'Gerente';
	@override String get waiter => 'Camarero';
	@override String get chef => 'Cocinero';
	@override String get cleaner => 'Personal de limpieza';
	@override String get driver => 'Conductor';
	@override String get deliveryBoy => 'Repartidor';
}

// Path: enums.itemFoodTypes
class _TranslationsEnumsItemFoodTypesEs implements TranslationsEnumsItemFoodTypesEn {
	_TranslationsEnumsItemFoodTypesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get veg => 'Vegetariano';
	@override String get nonVeg => 'No Vegetariano';
	@override String get egg => 'Huevo';
	@override String get drink => 'Bebida';
	@override String get others => 'Otros';
}

// Path: enums.itemTypes
class _TranslationsEnumsItemTypesEs implements TranslationsEnumsItemTypesEn {
	_TranslationsEnumsItemTypesEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get single => 'Individual';
	@override String get variation => 'Variación';
}

// Path: enums.quotationStatus
class _TranslationsEnumsQuotationStatusEs implements TranslationsEnumsQuotationStatusEn {
	_TranslationsEnumsQuotationStatusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get open => 'Abierta';
	@override String get closed => 'Cerrada';
}

// Path: prompt.items.delete
class _TranslationsPromptItemsDeleteEs implements TranslationsPromptItemsDeleteEn {
	_TranslationsPromptItemsDeleteEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¿Desea eliminar este artículo?';
}

// Path: prompt.items.filter
class _TranslationsPromptItemsFilterEs implements TranslationsPromptItemsFilterEn {
	_TranslationsPromptItemsFilterEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Filtrar por';
	@override late final _TranslationsPromptItemsFilterExtraEs extra = _TranslationsPromptItemsFilterExtraEs._(_root);
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsEs implements TranslationsFormFullNameErrorsEn {
	_TranslationsFormFullNameErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese su ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsEs implements TranslationsFormEmailErrorsEn {
	_TranslationsFormEmailErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese su dirección de ${_root.common.email}';
	@override String get invalid => '⦸ Correo electrónico inválido, por favor, inténtelo de nuevo';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsEs implements TranslationsFormPasswordErrorsEn {
	_TranslationsFormPasswordErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese su ${_root.common.password}';
	@override String minLength({required Object count}) => '¡La contraseña debe tener al menos ${count} caracteres!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsEs implements TranslationsFormConfirmPasswordErrorsEn {
	_TranslationsFormConfirmPasswordErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese su ${_root.common.password}';
	@override String get invalid => '\'¡La confirmación de la contraseña no coincide!';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsEs implements TranslationsFormOtpErrorsEn {
	_TranslationsFormOtpErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el código OTP.';
	@override String get invalid => 'Por favor, ingrese el código OTP actual.';
}

// Path: form.profile.businessCategory
class _TranslationsFormProfileBusinessCategoryEs implements TranslationsFormProfileBusinessCategoryEn {
	_TranslationsFormProfileBusinessCategoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Categoría de negocio';
	@override String get hint => 'Seleccionar categoría de negocio';
	@override late final _TranslationsFormProfileBusinessCategoryErrorsEs errors = _TranslationsFormProfileBusinessCategoryErrorsEs._(_root);
}

// Path: form.profile.shopOrStore
class _TranslationsFormProfileShopOrStoreEs implements TranslationsFormProfileShopOrStoreEn {
	_TranslationsFormProfileShopOrStoreEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre de la tienda*';
	@override String get hint => 'Ingrese el nombre de la tienda';
	@override late final _TranslationsFormProfileShopOrStoreErrorsEs errors = _TranslationsFormProfileShopOrStoreErrorsEs._(_root);
}

// Path: form.profile.openingBalance
class _TranslationsFormProfileOpeningBalanceEs implements TranslationsFormProfileOpeningBalanceEn {
	_TranslationsFormProfileOpeningBalanceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Saldo inicial';
	@override String get hint => 'Ingrese el saldo inicial';
}

// Path: form.profile.vatGstTitle
class _TranslationsFormProfileVatGstTitleEs implements TranslationsFormProfileVatGstTitleEn {
	_TranslationsFormProfileVatGstTitleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Título IVA/IGV';
	@override String get hint => 'Ingrese IVA/IGV';
}

// Path: form.profile.vatGstNumber
class _TranslationsFormProfileVatGstNumberEs implements TranslationsFormProfileVatGstNumberEn {
	_TranslationsFormProfileVatGstNumberEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Número de IVA/IGV';
	@override String get hint => 'Ingrese el número de IVA/IGV';
}

// Path: form.vat.name
class _TranslationsFormVatNameEs implements TranslationsFormVatNameEn {
	_TranslationsFormVatNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre';
	@override String get hint => 'Ingrese el nombre del IVA';
	@override late final _TranslationsFormVatNameErrorEs error = _TranslationsFormVatNameErrorEs._(_root);
}

// Path: form.vat.subVat
class _TranslationsFormVatSubVatEs implements TranslationsFormVatSubVatEn {
	_TranslationsFormVatSubVatEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Sub IVA';
	@override String get hint => 'Seleccionar sub IVA';
	@override late final _TranslationsFormVatSubVatErrorsEs errors = _TranslationsFormVatSubVatErrorsEs._(_root);
}

// Path: form.vat.rate
class _TranslationsFormVatRateEs implements TranslationsFormVatRateEn {
	_TranslationsFormVatRateEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Tasa de IVA %';
	@override String get hint => 'Introduzca el tipo de IVA';
	@override late final _TranslationsFormVatRateErrorsEs errors = _TranslationsFormVatRateErrorsEs._(_root);
}

// Path: form.category.error
class _TranslationsFormCategoryErrorEs implements TranslationsFormCategoryErrorEn {
	_TranslationsFormCategoryErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre de la categoría';
}

// Path: form.items.barcode
class _TranslationsFormItemsBarcodeEs implements TranslationsFormItemsBarcodeEn {
	_TranslationsFormItemsBarcodeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Código de barras';
	@override String get hint => _root.common.selectOne;
}

// Path: form.items.itemName
class _TranslationsFormItemsItemNameEs implements TranslationsFormItemsItemNameEn {
	_TranslationsFormItemsItemNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre del artículo';
	@override String get hint => 'Ingrese el nombre del artículo';
	@override late final _TranslationsFormItemsItemNameExtraEs extra = _TranslationsFormItemsItemNameExtraEs._(_root);
}

// Path: form.items.itemCategory
class _TranslationsFormItemsItemCategoryEs implements TranslationsFormItemsItemCategoryEn {
	_TranslationsFormItemsItemCategoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Categoría del artículo';
	@override String get hint => 'Categoría del artículo';
	@override late final _TranslationsFormItemsItemCategoryExtraEs extra = _TranslationsFormItemsItemCategoryExtraEs._(_root);
}

// Path: form.items.brand
class _TranslationsFormItemsBrandEs implements TranslationsFormItemsBrandEn {
	_TranslationsFormItemsBrandEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.brand;
	@override String get hint => _root.common.selectOne;
	@override late final _TranslationsFormItemsBrandExtraEs extra = _TranslationsFormItemsBrandExtraEs._(_root);
}

// Path: form.items.unit
class _TranslationsFormItemsUnitEs implements TranslationsFormItemsUnitEn {
	_TranslationsFormItemsUnitEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.unit;
	@override String get hint => _root.common.selectOne;
	@override late final _TranslationsFormItemsUnitErrorEs error = _TranslationsFormItemsUnitErrorEs._(_root);
}

// Path: form.items.stock
class _TranslationsFormItemsStockEs implements TranslationsFormItemsStockEn {
	_TranslationsFormItemsStockEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Stock inicial';
	@override String get hint => _root.common.commonHint;
	@override late final _TranslationsFormItemsStockExtraEs extra = _TranslationsFormItemsStockExtraEs._(_root);
}

// Path: form.items.lowStock
class _TranslationsFormItemsLowStockEs implements TranslationsFormItemsLowStockEn {
	_TranslationsFormItemsLowStockEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.lowStock;
	@override String get hint => 'Ej: 5';
}

// Path: form.items.purchasePrice
class _TranslationsFormItemsPurchasePriceEs implements TranslationsFormItemsPurchasePriceEn {
	_TranslationsFormItemsPurchasePriceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.purchasePrice;
	@override String get hint => 'Ej: \Q40';
	@override late final _TranslationsFormItemsPurchasePriceErrorEs error = _TranslationsFormItemsPurchasePriceErrorEs._(_root);
}

// Path: form.items.salePrice
class _TranslationsFormItemsSalePriceEs implements TranslationsFormItemsSalePriceEn {
	_TranslationsFormItemsSalePriceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Precio de venta';
	@override String get hint => 'Ej: \Q60';
	@override late final _TranslationsFormItemsSalePriceErrorEs error = _TranslationsFormItemsSalePriceErrorEs._(_root);
}

// Path: form.items.totalSalePrice
class _TranslationsFormItemsTotalSalePriceEs implements TranslationsFormItemsTotalSalePriceEn {
	_TranslationsFormItemsTotalSalePriceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Precio total de venta';
	@override String get hint => 'Ej: \Q100';
}

// Path: form.items.wholeSalePrice
class _TranslationsFormItemsWholeSalePriceEs implements TranslationsFormItemsWholeSalePriceEn {
	_TranslationsFormItemsWholeSalePriceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.wholeSalePrice;
	@override String get hint => 'Ingrese el precio al por mayor';
}

// Path: form.items.dealerPrice
class _TranslationsFormItemsDealerPriceEs implements TranslationsFormItemsDealerPriceEn {
	_TranslationsFormItemsDealerPriceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.dealerPrice;
	@override String get hint => 'Ingrese el precio de distribuidor';
}

// Path: form.items.discount
class _TranslationsFormItemsDiscountEs implements TranslationsFormItemsDiscountEn {
	_TranslationsFormItemsDiscountEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Descuento (%)';
	@override String get hint => _root.common.commonHint;
}

// Path: form.items.applicableTax
class _TranslationsFormItemsApplicableTaxEs implements TranslationsFormItemsApplicableTaxEn {
	_TranslationsFormItemsApplicableTaxEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Impuesto aplicable';
	@override String get hint => _root.common.selectOne;
}

// Path: form.items.vatType
class _TranslationsFormItemsVatTypeEs implements TranslationsFormItemsVatTypeEn {
	_TranslationsFormItemsVatTypeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.taxType;
	@override late final _TranslationsFormItemsVatTypeErrorTextEs errorText = _TranslationsFormItemsVatTypeErrorTextEs._(_root);
}

// Path: form.items.menu
class _TranslationsFormItemsMenuEs implements TranslationsFormItemsMenuEn {
	_TranslationsFormItemsMenuEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Elegir menú';
	@override late final _TranslationsFormItemsMenuErrorsEs errors = _TranslationsFormItemsMenuErrorsEs._(_root);
	@override String get hint => 'Seleccione un menú';
	@override late final _TranslationsFormItemsMenuExtraEs extra = _TranslationsFormItemsMenuExtraEs._(_root);
}

// Path: form.items.modifierItems
class _TranslationsFormItemsModifierItemsEs implements TranslationsFormItemsModifierItemsEn {
	_TranslationsFormItemsModifierItemsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Artículos modificadores';
	@override String get hint => 'Seleccionar artículos modificadores';
}

// Path: form.items.preparationTime
class _TranslationsFormItemsPreparationTimeEs implements TranslationsFormItemsPreparationTimeEn {
	_TranslationsFormItemsPreparationTimeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override TextSpan label({required InlineSpanBuilder minutes}) => TextSpan(children: [
		const TextSpan(text: 'Tiempo de preparación '),
		minutes('Minutos'),
	]);
	@override String get hint => 'Ej: 30';
}

// Path: form.items.variation
class _TranslationsFormItemsVariationEs implements TranslationsFormItemsVariationEn {
	_TranslationsFormItemsVariationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormItemsVariationNameEs name = _TranslationsFormItemsVariationNameEs._(_root);
	@override late final _TranslationsFormItemsVariationPriceEs price = _TranslationsFormItemsVariationPriceEs._(_root);
}

// Path: form.itemCart.error
class _TranslationsFormItemCartErrorEs implements TranslationsFormItemCartErrorEn {
	_TranslationsFormItemCartErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => _root.common.pleaseEnterQuantity;
	@override String get noZero => _root.common.quantityMustBeGreaterThanZero;
}

// Path: form.sales.autoGenerateInvoice
class _TranslationsFormSalesAutoGenerateInvoiceEs implements TranslationsFormSalesAutoGenerateInvoiceEn {
	_TranslationsFormSalesAutoGenerateInvoiceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nº de factura';
	@override String get hint => 'P-00001';
}

// Path: form.sales.date
class _TranslationsFormSalesDateEs implements TranslationsFormSalesDateEn {
	_TranslationsFormSalesDateEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Fecha';
}

// Path: form.sales.customer
class _TranslationsFormSalesCustomerEs implements TranslationsFormSalesCustomerEn {
	_TranslationsFormSalesCustomerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Cliente';
	@override String get hint => 'Seleccionar cliente';
}

// Path: form.sales.phone
class _TranslationsFormSalesPhoneEs implements TranslationsFormSalesPhoneEn {
	_TranslationsFormSalesPhoneEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Número de teléfono';
	@override String get hint => 'Ingrese el número de teléfono';
}

// Path: form.sales.address
class _TranslationsFormSalesAddressEs implements TranslationsFormSalesAddressEn {
	_TranslationsFormSalesAddressEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Dirección';
	@override String get hint => 'Ingrese la dirección';
}

// Path: form.sales.deliveryCharge
class _TranslationsFormSalesDeliveryChargeEs implements TranslationsFormSalesDeliveryChargeEn {
	_TranslationsFormSalesDeliveryChargeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.deliveryCharge;
	@override String get hint => 'Ej: \Q20';
	@override String get hint2 => 'Cargo Ej: \Q10';
}

// Path: form.sales.table
class _TranslationsFormSalesTableEs implements TranslationsFormSalesTableEn {
	_TranslationsFormSalesTableEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Seleccionar mesa';
}

// Path: form.sales.waiter
class _TranslationsFormSalesWaiterEs implements TranslationsFormSalesWaiterEn {
	_TranslationsFormSalesWaiterEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Seleccionar camarero';
}

// Path: form.supplier.extra
class _TranslationsFormSupplierExtraEs implements TranslationsFormSupplierExtraEn {
	_TranslationsFormSupplierExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un proveedor';
}

// Path: form.phone.errors
class _TranslationsFormPhoneErrorsEs implements TranslationsFormPhoneErrorsEn {
	_TranslationsFormPhoneErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el número de teléfono.';
}

// Path: form.payment.error
class _TranslationsFormPaymentErrorEs implements TranslationsFormPaymentErrorEn {
	_TranslationsFormPaymentErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese un nombre de método de pago';
}

// Path: form.expense.error
class _TranslationsFormExpenseErrorEs implements TranslationsFormExpenseErrorEn {
	_TranslationsFormExpenseErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese la categoría de gasto';
}

// Path: form.income.error
class _TranslationsFormIncomeErrorEs implements TranslationsFormIncomeErrorEn {
	_TranslationsFormIncomeErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre de la categoría';
}

// Path: form.income.incomeTitle
class _TranslationsFormIncomeIncomeTitleEs implements TranslationsFormIncomeIncomeTitleEn {
	_TranslationsFormIncomeIncomeTitleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Título del ingreso';
	@override String get hint => 'Ingrese el ingreso';
}

// Path: form.income.incomeCategory
class _TranslationsFormIncomeIncomeCategoryEs implements TranslationsFormIncomeIncomeCategoryEn {
	_TranslationsFormIncomeIncomeCategoryEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Categoría de ingreso';
	@override String get hint => 'Seleccionar categoría';
}

// Path: form.income.payment
class _TranslationsFormIncomePaymentEs implements TranslationsFormIncomePaymentEn {
	_TranslationsFormIncomePaymentEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Pago';
	@override String get hint => 'Ej: \Q10';
}

// Path: form.parties.partyName
class _TranslationsFormPartiesPartyNameEs implements TranslationsFormPartiesPartyNameEn {
	_TranslationsFormPartiesPartyNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre de la parte';
	@override String get hint => 'Ingrese el nombre de la parte';
	@override late final _TranslationsFormPartiesPartyNameErrorEs error = _TranslationsFormPartiesPartyNameErrorEs._(_root);
}

// Path: form.parties.partyPhone
class _TranslationsFormPartiesPartyPhoneEs implements TranslationsFormPartiesPartyPhoneEn {
	_TranslationsFormPartiesPartyPhoneEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Número de teléfono';
	@override String get hint => 'Ingrese el número de teléfono';
	@override late final _TranslationsFormPartiesPartyPhoneErrorEs error = _TranslationsFormPartiesPartyPhoneErrorEs._(_root);
}

// Path: form.table.name
class _TranslationsFormTableNameEs implements TranslationsFormTableNameEn {
	_TranslationsFormTableNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre de la mesa';
	@override String get hint => 'Ingrese el nombre de la mesa';
	@override late final _TranslationsFormTableNameErrorEs error = _TranslationsFormTableNameErrorEs._(_root);
}

// Path: form.table.capacity
class _TranslationsFormTableCapacityEs implements TranslationsFormTableCapacityEn {
	_TranslationsFormTableCapacityEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Capacidad';
	@override String get hint => 'Ingrese la capacidad';
	@override late final _TranslationsFormTableCapacityErrorEs error = _TranslationsFormTableCapacityErrorEs._(_root);
}

// Path: form.designation.errors
class _TranslationsFormDesignationErrorsEs implements TranslationsFormDesignationErrorsEn {
	_TranslationsFormDesignationErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione una designación.';
}

// Path: form.ingredientName.errors
class _TranslationsFormIngredientNameErrorsEs implements TranslationsFormIngredientNameErrorsEn {
	_TranslationsFormIngredientNameErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, introduzca el nombre del ingrediente';
}

// Path: form.item.errors
class _TranslationsFormItemErrorsEs implements TranslationsFormItemErrorsEn {
	_TranslationsFormItemErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un artículo.';
}

// Path: form.modifierGroup.errors
class _TranslationsFormModifierGroupErrorsEs implements TranslationsFormModifierGroupErrorsEn {
	_TranslationsFormModifierGroupErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un grupo de modificadores.';
}

// Path: form.staff.errors
class _TranslationsFormStaffErrorsEs implements TranslationsFormStaffErrorsEn {
	_TranslationsFormStaffErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un empleado';
}

// Path: form.loginUserName.errors
class _TranslationsFormLoginUserNameErrorsEs implements TranslationsFormLoginUserNameErrorsEn {
	_TranslationsFormLoginUserNameErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, introduzca nombre de usuario o dirección de correo electrónico';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataEs implements TranslationsPagesOnboardOnboardDataEn {
	_TranslationsPagesOnboardOnboardDataEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOnboardOnboardDataData1Es data1 = _TranslationsPagesOnboardOnboardDataData1Es._(_root);
	@override late final _TranslationsPagesOnboardOnboardDataData2Es data2 = _TranslationsPagesOnboardOnboardDataData2Es._(_root);
	@override late final _TranslationsPagesOnboardOnboardDataData3Es data3 = _TranslationsPagesOnboardOnboardDataData3Es._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraEs implements TranslationsPagesSignInExtraEn {
	_TranslationsPagesSignInExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get rememberMe => 'Recordarme';
	@override TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(children: [
		const TextSpan(text: '¿No tiene una cuenta? '),
		getStarted(_root.action.getStarted),
	]);
	@override String get forgotPassword => '¿${_root.common.forgotPassword}?';
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraEs implements TranslationsPagesSignUpExtraEn {
	_TranslationsPagesSignUpExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(children: [
		const TextSpan(text: '¿Ya tiene una cuenta? '),
		signIn(_root.action.signIn),
	]);
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraEs implements TranslationsPagesOtpVerificationExtraEn {
	_TranslationsPagesOtpVerificationExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOtpVerificationExtraCodeResendEs codeResend = _TranslationsPagesOtpVerificationExtraCodeResendEs._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraEs implements TranslationsPagesResetPasswordExtraEn {
	_TranslationsPagesResetPasswordExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesResetPasswordExtraDialogEs dialog = _TranslationsPagesResetPasswordExtraDialogEs._(_root);
}

// Path: pages.items.itemList
class _TranslationsPagesItemsItemListEs implements TranslationsPagesItemsItemListEn {
	_TranslationsPagesItemsItemListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesItemsItemListExtraEs extra = _TranslationsPagesItemsItemListExtraEs._(_root);
}

// Path: pages.items.manageItems
class _TranslationsPagesItemsManageItemsEs implements TranslationsPagesItemsManageItemsEn {
	_TranslationsPagesItemsManageItemsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Añadir nuevo artículo';
	@override String get title2 => 'Editar artículo';
	@override late final _TranslationsPagesItemsManageItemsExtraEs extra = _TranslationsPagesItemsManageItemsExtraEs._(_root);
}

// Path: pages.items.itemDetails
class _TranslationsPagesItemsItemDetailsEs implements TranslationsPagesItemsItemDetailsEn {
	_TranslationsPagesItemsItemDetailsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Detalles del artículo';
	@override late final _TranslationsPagesItemsItemDetailsExtraEs extra = _TranslationsPagesItemsItemDetailsExtraEs._(_root);
}

// Path: pages.orders.manageOrders
class _TranslationsPagesOrdersManageOrdersEs implements TranslationsPagesOrdersManageOrdersEn {
	_TranslationsPagesOrdersManageOrdersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOrdersManageOrdersExtraEs extra = _TranslationsPagesOrdersManageOrdersExtraEs._(_root);
	@override late final _TranslationsPagesOrdersManageOrdersTitleEs title = _TranslationsPagesOrdersManageOrdersTitleEs._(_root);
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessEs implements TranslationsPagesPaymentStatusSuccessEn {
	_TranslationsPagesPaymentStatusSuccessEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Gracias!';
	@override String get message => 'Revisaremos el pago y lo aprobaremos en un plazo de 24 horas.';
	@override String get actionButtonText => 'Ver factura';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailEs implements TranslationsPagesPaymentStatusFailEn {
	_TranslationsPagesPaymentStatusFailEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Oops! El pago falló';
	@override String get message => 'Su transacción ha fallado debido a un error técnico.';
	@override String get actionButtonText => 'Intentar de nuevo';
}

// Path: pages.payment.methodStatus
class _TranslationsPagesPaymentMethodStatusEs implements TranslationsPagesPaymentMethodStatusEn {
	_TranslationsPagesPaymentMethodStatusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Estado';
	@override String get message => '¡El estado no puede estar inactivo si la vista rápida está habilitada!.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraEs implements TranslationsPagesSubscriptionPlanExtraEn {
	_TranslationsPagesSubscriptionPlanExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get actionButtonText => 'Volver';
	@override String get message => 'Pago de suscripción realizado correctamente.\n\nAhora puede acceder a las funciones suscritas.';
	@override String get mostPopular => 'Más popular';
}

// Path: pages.expense.expenseTitle
class _TranslationsPagesExpenseExpenseTitleEs implements TranslationsPagesExpenseExpenseTitleEn {
	_TranslationsPagesExpenseExpenseTitleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Título del Gasto';
	@override String get hint => 'Introducir gasto';
}

// Path: pages.tax.vatGroup
class _TranslationsPagesTaxVatGroupEs implements TranslationsPagesTaxVatGroupEn {
	_TranslationsPagesTaxVatGroupEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Grupo de IVA';
	@override String get subTitle => 'Grupo de IVA - Gestione su grupo de IVA';
}

// Path: pages.orderList.filters
class _TranslationsPagesOrderListFiltersEs implements TranslationsPagesOrderListFiltersEn {
	_TranslationsPagesOrderListFiltersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesOrderListFiltersOrderTypeEs orderType = _TranslationsPagesOrderListFiltersOrderTypeEs._(_root);
	@override late final _TranslationsPagesOrderListFiltersPaymentStatusEs paymentStatus = _TranslationsPagesOrderListFiltersPaymentStatusEs._(_root);
}

// Path: pages.staffs.staffList
class _TranslationsPagesStaffsStaffListEs implements TranslationsPagesStaffsStaffListEn {
	_TranslationsPagesStaffsStaffListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesStaffsStaffListFiltersEs filters = _TranslationsPagesStaffsStaffListFiltersEs._(_root);
	@override String get title => 'Todo el personal';
}

// Path: pages.staffs.manageStaff
class _TranslationsPagesStaffsManageStaffEs implements TranslationsPagesStaffsManageStaffEn {
	_TranslationsPagesStaffsManageStaffEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'Añadir nuevo personal';
	@override String get title2 => 'Actualizar personal';
}

// Path: pages.ingredient.ingredientList
class _TranslationsPagesIngredientIngredientListEs implements TranslationsPagesIngredientIngredientListEn {
	_TranslationsPagesIngredientIngredientListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'Lista de ingredientes';
	@override String get title2 => 'Seleccionar ingrediente';
}

// Path: pages.ingredient.manageIngredient
class _TranslationsPagesIngredientManageIngredientEs implements TranslationsPagesIngredientManageIngredientEn {
	_TranslationsPagesIngredientManageIngredientEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'Añadir nuevo ingrediente';
	@override String get title2 => 'Editar ingrediente';
}

// Path: pages.itemModifier.itemModifierList
class _TranslationsPagesItemModifierItemModifierListEs implements TranslationsPagesItemModifierItemModifierListEn {
	_TranslationsPagesItemModifierItemModifierListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => _root.common.itemModifiers;
}

// Path: pages.itemModifier.manageItemModifier
class _TranslationsPagesItemModifierManageItemModifierEs implements TranslationsPagesItemModifierManageItemModifierEn {
	_TranslationsPagesItemModifierManageItemModifierEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'Añadir modificadores de artículo';
	@override String get title2 => 'Editar modificadores de artículo';
}

// Path: pages.quotation.manageQuotation
class _TranslationsPagesQuotationManageQuotationEs implements TranslationsPagesQuotationManageQuotationEn {
	_TranslationsPagesQuotationManageQuotationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesQuotationManageQuotationTitleEs title = _TranslationsPagesQuotationManageQuotationTitleEs._(_root);
}

// Path: pages.rolePermission.rolePermissionList
class _TranslationsPagesRolePermissionRolePermissionListEs implements TranslationsPagesRolePermissionRolePermissionListEn {
	_TranslationsPagesRolePermissionRolePermissionListEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lista de Roles y Permisos';
}

// Path: pages.rolePermission.manageRolePermission
class _TranslationsPagesRolePermissionManageRolePermissionEs implements TranslationsPagesRolePermissionManageRolePermissionEn {
	_TranslationsPagesRolePermissionManageRolePermissionEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title1 => 'Añadir Nuevo Rol';
	@override String get title2 => 'Editar Rol';
}

// Path: prompt.items.filter.extra
class _TranslationsPromptItemsFilterExtraEs implements TranslationsPromptItemsFilterExtraEn {
	_TranslationsPromptItemsFilterExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get lowToHigh => 'De menor a mayor ${_root.common.price}';
	@override String get highToLow => 'De mayor a menor ${_root.common.price}';
}

// Path: form.profile.businessCategory.errors
class _TranslationsFormProfileBusinessCategoryErrorsEs implements TranslationsFormProfileBusinessCategoryErrorsEn {
	_TranslationsFormProfileBusinessCategoryErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione la categoría de negocio';
}

// Path: form.profile.shopOrStore.errors
class _TranslationsFormProfileShopOrStoreErrorsEs implements TranslationsFormProfileShopOrStoreErrorsEn {
	_TranslationsFormProfileShopOrStoreErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre de su tienda';
}

// Path: form.vat.name.error
class _TranslationsFormVatNameErrorEs implements TranslationsFormVatNameErrorEn {
	_TranslationsFormVatNameErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre del IVA';
}

// Path: form.vat.subVat.errors
class _TranslationsFormVatSubVatErrorsEs implements TranslationsFormVatSubVatErrorsEn {
	_TranslationsFormVatSubVatErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un sub-IVA';
}

// Path: form.vat.rate.errors
class _TranslationsFormVatRateErrorsEs implements TranslationsFormVatRateErrorsEn {
	_TranslationsFormVatRateErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, introduzca el tipo de IVA.';
}

// Path: form.items.itemName.extra
class _TranslationsFormItemsItemNameExtraEs implements TranslationsFormItemsItemNameExtraEn {
	_TranslationsFormItemsItemNameExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre del artículo';
}

// Path: form.items.itemCategory.extra
class _TranslationsFormItemsItemCategoryExtraEs implements TranslationsFormItemsItemCategoryExtraEn {
	_TranslationsFormItemsItemCategoryExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Seleccionar categoría';
	@override String get required => 'Por favor, seleccione una categoría';
}

// Path: form.items.brand.extra
class _TranslationsFormItemsBrandExtraEs implements TranslationsFormItemsBrandExtraEn {
	_TranslationsFormItemsBrandExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Ingrese el nombre de la marca';
	@override String get required => 'Por favor, ingrese el nombre de la marca';
}

// Path: form.items.unit.error
class _TranslationsFormItemsUnitErrorEs implements TranslationsFormItemsUnitErrorEn {
	_TranslationsFormItemsUnitErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre de la unidad';
}

// Path: form.items.stock.extra
class _TranslationsFormItemsStockExtraEs implements TranslationsFormItemsStockExtraEn {
	_TranslationsFormItemsStockExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese la cantidad del artículo.';
}

// Path: form.items.purchasePrice.error
class _TranslationsFormItemsPurchasePriceErrorEs implements TranslationsFormItemsPurchasePriceErrorEn {
	_TranslationsFormItemsPurchasePriceErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el precio de compra.';
}

// Path: form.items.salePrice.error
class _TranslationsFormItemsSalePriceErrorEs implements TranslationsFormItemsSalePriceErrorEn {
	_TranslationsFormItemsSalePriceErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el precio de venta.';
}

// Path: form.items.vatType.errorText
class _TranslationsFormItemsVatTypeErrorTextEs implements TranslationsFormItemsVatTypeErrorTextEn {
	_TranslationsFormItemsVatTypeErrorTextEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un tipo de IVA';
}

// Path: form.items.menu.errors
class _TranslationsFormItemsMenuErrorsEs implements TranslationsFormItemsMenuErrorsEn {
	_TranslationsFormItemsMenuErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, seleccione un menú.';
}

// Path: form.items.menu.extra
class _TranslationsFormItemsMenuExtraEs implements TranslationsFormItemsMenuExtraEn {
	_TranslationsFormItemsMenuExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get selectNavLabel => 'Seleccionar menú de artículo';
}

// Path: form.items.variation.name
class _TranslationsFormItemsVariationNameEs implements TranslationsFormItemsVariationNameEn {
	_TranslationsFormItemsVariationNameEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Nombre';
	@override String get hint => 'Introduzca la variación';
	@override late final _TranslationsFormItemsVariationNameErrorsEs errors = _TranslationsFormItemsVariationNameErrorsEs._(_root);
}

// Path: form.items.variation.price
class _TranslationsFormItemsVariationPriceEs implements TranslationsFormItemsVariationPriceEn {
	_TranslationsFormItemsVariationPriceEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsFormItemsVariationPriceErrorsEs errors = _TranslationsFormItemsVariationPriceErrorsEs._(_root);
	@override String get label => 'Precio';
	@override String get hint => 'Ej: \Q30';
}

// Path: form.parties.partyName.error
class _TranslationsFormPartiesPartyNameErrorEs implements TranslationsFormPartiesPartyNameErrorEn {
	_TranslationsFormPartiesPartyNameErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre de la parte';
}

// Path: form.parties.partyPhone.error
class _TranslationsFormPartiesPartyPhoneErrorEs implements TranslationsFormPartiesPartyPhoneErrorEn {
	_TranslationsFormPartiesPartyPhoneErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el número de teléfono';
}

// Path: form.table.name.error
class _TranslationsFormTableNameErrorEs implements TranslationsFormTableNameErrorEn {
	_TranslationsFormTableNameErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese el nombre de la mesa';
}

// Path: form.table.capacity.error
class _TranslationsFormTableCapacityErrorEs implements TranslationsFormTableCapacityErrorEn {
	_TranslationsFormTableCapacityErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, ingrese la capacidad';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Es implements TranslationsPagesOnboardOnboardDataData1En {
	_TranslationsPagesOnboardOnboardDataData1Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fácil de usar ${_root.common.appName}';
	@override String get description => 'Pedidos fluidos, reservas sin esfuerzo\nPotencia tu restaurante con facilidad';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Es implements TranslationsPagesOnboardOnboardDataData2En {
	_TranslationsPagesOnboardOnboardDataData2Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Gestión de pedidos sin esfuerzo';
	@override String get description => 'Optimice el proceso de toma de pedidos de su restaurante con nuestro intuitivo sistema POS.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Es implements TranslationsPagesOnboardOnboardDataData3En {
	_TranslationsPagesOnboardOnboardDataData3Es._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Excelentes análisis e informes';
	@override String get description => 'Nuestro panel de análisis proporciona informes de ventas y compras en tiempo real';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendEs implements TranslationsPagesOtpVerificationExtraCodeResendEn {
	_TranslationsPagesOtpVerificationExtraCodeResendEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get codeSendIn => 'Código enviado en';
	@override String get resendCode => 'Reenviar código';
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogEs implements TranslationsPagesResetPasswordExtraDialogEn {
	_TranslationsPagesResetPasswordExtraDialogEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Cambiado exitosamente!';
	@override String get subtitle => 'Inicie sesión con su nueva contraseña.\nRedirigiéndole al inicio de sesión...';
}

// Path: pages.items.itemList.extra
class _TranslationsPagesItemsItemListExtraEs implements TranslationsPagesItemsItemListExtraEn {
	_TranslationsPagesItemsItemListExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get emptyItem => '¡No se encontró ningún artículo!\nPor favor, intente añadir un artículo.';
}

// Path: pages.items.manageItems.extra
class _TranslationsPagesItemsManageItemsExtraEs implements TranslationsPagesItemsManageItemsExtraEn {
	_TranslationsPagesItemsManageItemsExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get maximum => 'Máximo 5';
	@override String get wholeSaleAndDealerPrice => 'Precio al por mayor y de distribuidor';
	@override String get addDiscount => 'Añadir descuento';
	@override String get addVat => 'Añadir IVA';
}

// Path: pages.items.itemDetails.extra
class _TranslationsPagesItemsItemDetailsExtraEs implements TranslationsPagesItemsItemDetailsExtraEn {
	_TranslationsPagesItemsItemDetailsExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get noImageAvailable => '¡No hay imagen disponible!';
	@override TextSpan preparationTime({required InlineSpan min, required InlineSpanBuilder mins}) => TextSpan(children: [
		const TextSpan(text: 'Tiempo de preparación: '),
		min,
		const TextSpan(text: ' '),
		mins('mins'),
	]);
	@override String get pleaseSelectVariation => 'Por favor, seleccione una variación';
	@override String get pleaseSelectOption => 'Por favor, seleccione una opción.';
	@override String get enterYourInstruction => 'Introduzca sus instrucciones';
}

// Path: pages.orders.manageOrders.extra
class _TranslationsPagesOrdersManageOrdersExtraEs implements TranslationsPagesOrdersManageOrdersExtraEn {
	_TranslationsPagesOrdersManageOrdersExtraEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get billItems => 'Artículos de la factura';
	@override String get manageQuantity => 'Gestionar cantidad';
}

// Path: pages.orders.manageOrders.title
class _TranslationsPagesOrdersManageOrdersTitleEs implements TranslationsPagesOrdersManageOrdersTitleEn {
	_TranslationsPagesOrdersManageOrdersTitleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get editOrder => 'Editar Pedido';
	@override String get editKOT => 'Editar KOT';
}

// Path: pages.orderList.filters.orderType
class _TranslationsPagesOrderListFiltersOrderTypeEs implements TranslationsPagesOrderListFiltersOrderTypeEn {
	_TranslationsPagesOrderListFiltersOrderTypeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => _root.common.orderType;
	@override String get hint => 'Seleccionar tipo de pedido';
}

// Path: pages.orderList.filters.paymentStatus
class _TranslationsPagesOrderListFiltersPaymentStatusEs implements TranslationsPagesOrderListFiltersPaymentStatusEn {
	_TranslationsPagesOrderListFiltersPaymentStatusEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Seleccionar estado de pago';
	@override String get label => 'Estado de pago';
}

// Path: pages.staffs.staffList.filters
class _TranslationsPagesStaffsStaffListFiltersEs implements TranslationsPagesStaffsStaffListFiltersEn {
	_TranslationsPagesStaffsStaffListFiltersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPagesStaffsStaffListFiltersDesignationEs designation = _TranslationsPagesStaffsStaffListFiltersDesignationEs._(_root);
}

// Path: pages.quotation.manageQuotation.title
class _TranslationsPagesQuotationManageQuotationTitleEs implements TranslationsPagesQuotationManageQuotationTitleEn {
	_TranslationsPagesQuotationManageQuotationTitleEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get add => 'Añadir Nueva Cotización';
	@override String get edit => 'Editar Cotización';
	@override String get convert => 'Convertir a Venta';
}

// Path: form.items.variation.name.errors
class _TranslationsFormItemsVariationNameErrorsEs implements TranslationsFormItemsVariationNameErrorsEn {
	_TranslationsFormItemsVariationNameErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, introduzca el nombre de la variación.';
}

// Path: form.items.variation.price.errors
class _TranslationsFormItemsVariationPriceErrorsEs implements TranslationsFormItemsVariationPriceErrorsEn {
	_TranslationsFormItemsVariationPriceErrorsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get required => 'Por favor, introduzca el precio.';
}

// Path: pages.staffs.staffList.filters.designation
class _TranslationsPagesStaffsStaffListFiltersDesignationEs implements TranslationsPagesStaffsStaffListFiltersDesignationEn {
	_TranslationsPagesStaffsStaffListFiltersDesignationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get label => 'Designación';
	@override String get hint => 'Seleccionar designación';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'common.signIn': return 'Iniciar sesión';
			case 'common.signUp': return 'Registrarse';
			case 'common.verifyEmail': return 'Verificar correo electrónico';
			case 'common.customizeProfile': return 'Personalizar perfil';
			case 'common.imageOrLogo': return 'Logo o imagen';
			case 'common.createNewPassword': return 'Crear nueva contraseña';
			case 'common.itemsList': return 'Lista de artículos';
			case 'common.searchItemsName': return 'Buscar nombre de artículos';
			case 'common.categoryList': return 'Lista de categorías';
			case 'common.brandList': return 'Lista de marcas';
			case 'common.unitList': return 'Lista de unidades';
			case 'common.itemDetails': return 'Detalles del artículo';
			case 'common.addStock': return 'Añadir stock';
			case 'common.profile': return 'Perfil';
			case 'common.language': return 'Idioma';
			case 'common.termsAndConditions': return 'Términos y condiciones';
			case 'common.aboutUs': return 'Acerca de nosotros';
			case 'common.logout': return 'Cerrar sesión';
			case 'common.editProfile': return 'Editar perfil';
			case 'common.fullName': return 'Nombre completo';
			case 'common.email': return 'Correo electrónico';
			case 'common.mobileNumber': return 'Número de móvil';
			case 'common.address': return 'Dirección';
			case 'common.password': return 'Contraseña';
			case 'common.forgotPassword': return 'Olvidé mi contraseña';
			case 'common.edit': return 'Editar';
			case 'common.delete': return 'Eliminar';
			case 'common.addItems': return 'Añadir artículos';
			case 'common.stock': return 'Existencias';
			case 'common.currentStock': return 'Stock actual';
			case 'common.value': return 'Valor';
			case 'common.sales': return 'Ventas';
			case 'common.purchase': return 'Compra';
			case 'common.price': return 'Precio';
			case 'common.image': return 'Imagen';
			case 'common.upload': return 'Subir';
			case 'common.addNew': return 'Añadir nuevo';
			case 'common.pricing': return 'Precios';
			case 'common.name': return 'Nombre';
			case 'common.category': return 'Categoría';
			case 'common.brand': return 'Marca';
			case 'common.lowStock': return 'Poco stock';
			case 'common.unit': return 'Unidad';
			case 'common.vat': return 'IVA';
			case 'common.taxType': return 'Tipo de impuesto';
			case 'common.purchasePrice': return 'Precio de compra';
			case 'common.sellingPrice': return 'Precio de venta';
			case 'common.wholeSalePrice': return 'Precio al por mayor';
			case 'common.dealerPrice': return 'Precio de distribuidor';
			case 'common.searchHere': return 'Buscar aquí';
			case 'common.totalItems': return 'Artículos totales';
			case 'common.stockValue': return 'Valor del stock';
			case 'common.congratulation': return 'Felicitaciones';
			case 'common.salesList': return 'Lista de ventas';
			case 'common.searchInvoiceNumber': return 'Buscar número de factura';
			case 'common.view': return 'Ver';
			case 'common.kFor': return 'Para';
			case 'common.total': return 'Total';
			case 'common.subTotal': return 'Subtotal';
			case 'common.insufficientStockAvailableStock': return 'Stock insuficiente, stock disponible';
			case 'common.discount': return 'Descuento';
			case 'common.selectOne': return 'Seleccionar uno';
			case 'common.allCategory': return 'Todas las categorías';
			case 'common.details': return 'Detalles';
			case 'common.parcel': return 'Paquete';
			case 'common.kot': return 'Kot';
			case 'common.table': return 'Mesa';
			case 'common.holdTable': return 'Mesa retenida';
			case 'common.capacity': return 'Capacidad';
			case 'common.commonHint': return 'Ej: 10';
			case 'common.pleaseEnterQuantity': return 'Por favor, introduzca la cantidad';
			case 'common.quantityMustBeGreaterThanZero': return 'La cantidad debe ser mayor que 0';
			case 'common.mobile': return 'Móvil';
			case 'common.orderNo': return 'Nº de pedido';
			case 'common.dateAndTime': return 'Fecha y hora';
			case 'common.items': return 'Artículos';
			case 'common.totalAmount': return 'Importe total';
			case 'common.paidAmount': return 'Cantidad pagada';
			case 'common.dueAmount': return 'Cantidad debida';
			case 'common.paymentType': return 'Tipo de pago';
			case 'common.thankYou': return 'Gracias';
			case 'common.developedBy': return ({required String domain}) => 'Desarrollado por ${domain}';
			case 'common.qty': return 'Precio';
			case 'common.amount': return 'Importe';
			case 'common.dashboard': return 'Panel de control';
			case 'common.reports': return 'Informes';
			case 'common.home': return 'Inicio';
			case 'common.parties': return 'Partes';
			case 'common.subscriptionPlan': return 'Plan de suscripción';
			case 'common.estimateList': return 'Lista de presupuestos';
			case 'common.purchaseList': return 'Lista de compras';
			case 'common.dueList': return 'Lista de pendientes';
			case 'common.lossOrProfit': return 'Pérdida/Ganancia';
			case 'common.stocks': return 'Existencias';
			case 'common.moneyInList': return 'Lista de ingresos';
			case 'common.moneyOutList': return 'Lista de egresos';
			case 'common.transactionList': return 'Lista de transacciones';
			case 'common.income': return 'Ingresos';
			case 'common.expense': return 'Gastos';
			case 'common.quickView': return 'Vista rápida';
			case 'common.to': return 'a';
			case 'common.totalSales': return 'Ventas totales';
			case 'common.totalPurchase': return 'Compras totales';
			case 'common.holdNumber': return 'Pedidos retenidos';
			case 'common.totalExpense': return 'Gastos totales';
			case 'common.loss': return 'Pérdida';
			case 'common.profit': return 'Ganancia';
			case 'common.recentTransaction': return 'Transacciones recientes';
			case 'common.invoice': return 'Factura';
			case 'common.moneyIn': return 'Ingresos';
			case 'common.moneyOut': return 'Egresos';
			case 'common.paid': return 'Pagado';
			case 'common.due': return 'Debido';
			case 'common.partial': return 'Parcial';
			case 'common.print': return 'Imprimir';
			case 'common.addCategory': return 'Añadir categoría';
			case 'common.addExpense': return 'Añadir gasto';
			case 'common.search': return 'Buscar...';
			case 'common.viewDetails': return 'Ver detalles';
			case 'common.title': return 'Título';
			case 'common.date': return 'Fecha';
			case 'common.note': return 'Nota';
			case 'common.phoneNumber': return 'Número de teléfono';
			case 'common.type': return 'Tipo';
			case 'common.selectContactSType': return 'Seleccionar el tipo de contacto';
			case 'common.moreInfo': return 'Más información';
			case 'common.paymentReceived': return 'Pago recibido';
			case 'common.selectSupplier': return 'Seleccionar proveedor';
			case 'common.supplier': return 'Proveedor';
			case 'common.received': return 'Recibido';
			case 'common.balanceDue': return 'Saldo adeudado';
			case 'common.addPurchase': return 'Añadir compra';
			case 'common.selectedItemWillBeCleared': return 'Los artículos seleccionados serán borrados.';
			case 'common.searchItemName': return 'Buscar nombre del artículo';
			case 'common.billItems': return 'Artículos de la factura';
			case 'common.addMoreItems': return 'Añadir más artículos';
			case 'common.payAmount': return 'Pagar importe';
			case 'common.salesReport': return 'Informe de ventas';
			case 'common.purchaseReport': return 'Informe de compras';
			case 'common.stockReport': return 'Informe de stock';
			case 'common.dueReport': return 'Informe de pendientes';
			case 'common.dueCollectionReport': return 'Informe de cobro de pendientes';
			case 'common.transactionReport': return 'Informe de transacciones';
			case 'common.incomeReport': return 'Informe de ingresos';
			case 'common.dueCollectionList': return 'Lista de cobro de pendientes';
			case 'common.expenseReport': return 'Informes de gastos';
			case 'common.dueCollection': return 'Cobro de pendientes';
			case 'common.myProfile': return 'Mi perfil';
			case 'common.printingOption': return 'Opción de impresión';
			case 'common.currency': return 'Moneda';
			case 'common.paymentMethod': return 'Método de pago';
			case 'common.rateUs': return 'Valóranos';
			case 'common.termAndCondition': return 'Términos y condiciones';
			case 'common.tableList': return 'Lista de mesas';
			case 'common.addTable': return 'Añadir mesa';
			case 'common.vatRate': return 'Tasa de IVA %';
			case 'common.action': return 'Acción';
			case 'common.status': return 'Estado';
			case 'common.active': return 'Activo';
			case 'common.inActive': return 'Inactivo';
			case 'common.subVats': return 'Sub-IVAs';
			case 'common.add': return 'Añadir';
			case 'common.taxRate': return 'Tasa de impuesto %';
			case 'common.subTaxes': return 'Sub-impuestos';
			case 'common.group': return 'grupo';
			case 'common.VAT': return 'IVA';
			case 'common.subTaxList': return 'Lista de sub-impuestos';
			case 'common.vatPercent': return 'Porcentaje de IVA';
			case 'common.statusIsCannotInActive': return 'El estado no puede ser inactivo si el IVA está en ventas.';
			case 'common.vatOnSales': return 'IVA en ventas';
			case 'common.transaction': return 'Transacción';
			case 'common.version': return ({required String version}) => 'Versión ${version}';
			case 'common.hold': return 'Mantener';
			case 'common.empty': return 'Vacío';
			case 'common.appName': return 'Michoacana SP';
			case 'common.duePayment': return 'Pago debido';
			case 'common.orders': return 'Pedidos';
			case 'common.all': return 'Todo';
			case 'common.ingredient': return 'Ingrediente';
			case 'common.menus': return 'Menús';
			case 'common.modifierGroups': return 'Grupos de modificadores';
			case 'common.itemModifiers': return 'Modificadores de artículo';
			case 'common.staff': return 'Personal';
			case 'common.coupon': return 'Cupón';
			case 'common.pay': return 'Pagar';
			case 'common.pendingOrders': return 'Pedidos pendientes';
			case 'common.order': return 'Pedido';
			case 'common.payNow': return 'Pagar ahora';
			case 'common.addStaff': return 'Añadir personal';
			case 'common.designation': return 'Designación';
			case 'common.itemAdded': return 'Artículo añadido';
			case 'common.noItemAdded': return 'Ningún artículo añadido';
			case 'common.saveNPrint': return 'Guardar e Imprimir';
			case 'common.allowMultiSelection': return 'Permitir selección múltiple';
			case 'common.required': return 'Requerido';
			case 'common.optional': return 'Opcional';
			case 'common.allowMultiSelectionForSale': return 'Permitir selección múltiple para ventas';
			case 'common.isRequired': return 'Es requerido';
			case 'common.modifier': return 'Modificador';
			case 'common.fullPayment': return 'Pago completo';
			case 'common.payment': return 'Pago';
			case 'common.addTip': return 'Añadir propina';
			case 'common.netPayable': return 'Total a pagar';
			case 'common.receiveAmount': return 'Cantidad recibida';
			case 'common.changeAmount': return 'Cambio';
			case 'common.quotationList': return 'Lista de Cotizaciones';
			case 'common.addQuotation': return 'Añadir Cotización';
			case 'common.convert': return 'Convertir';
			case 'common.variations': return 'Variaciones';
			case 'common.instructions': return 'Instrucciones';
			case 'common.unavailable': return 'No disponible';
			case 'common.tip': return 'Propina';
			case 'common.salesQuotationReport': return 'Informe de Presupuesto de Ventas';
			case 'common.orderType': return 'Tipo de pedido';
			case 'common.deliveryCharge': return 'Cargo de envío';
			case 'common.receiptNo': return 'Número de Recibo';
			case 'common.paidBy': return 'Pagado por';
			case 'common.receivedBy': return 'Recibido por';
			case 'common.paymentAmount': return 'Importe de Pago';
			case 'common.remainingDue': return 'Importe Pendiente';
			case 'common.roleNPermission': return 'Rol y Permiso';
			case 'common.sl': return 'SL';
			case 'common.features': return 'Características';
			case 'common.create': return 'Crear';
			case 'common.update': return 'Actualizar';
			case 'common.quotations': return 'Presupuestos';
			case 'common.restaurant': return 'Restaurante';
			case 'exceptions.somethingWentWrong': return 'Algo salió mal, por favor, inténtelo de nuevo';
			case 'exceptions.noCategoryFound': return '¡No se encontró ninguna categoría!\n Por favor, intente añadir una categoría.';
			case 'exceptions.doYouWantToDeleteThisCategory': return '¿Desea eliminar esta categoría?';
			case 'exceptions.noBrandFound': return '¡No se encontró ninguna marca!\n Por favor, intente añadir una marca.';
			case 'exceptions.doYouWantToDeleteThisBrand': return '¿Desea eliminar esta marca?';
			case 'exceptions.noItemStockFound': return '¡No se encontró stock de artículos!\n Por favor, intente añadir un artículo.';
			case 'exceptions.noUnitFound': return '¡No se encontró ninguna unidad!\n Por favor, intente añadir una unidad.';
			case 'exceptions.doYouDeleteThisUnit': return '¿Desea eliminar esta unidad?';
			case 'exceptions.noSaleFoundPleaseSAddProduct': return '¡No se encontró ninguna venta!\n Por favor, intente añadir una venta.';
			case 'exceptions.doYouWantToDeleteThisSale': return '¿Desea eliminar esta venta?';
			case 'exceptions.pleaseAddItemToTheCartFirst': return 'Por favor, añada artículos al carrito primero';
			case 'exceptions.noItemAdded': return 'No se han añadido artículos';
			case 'exceptions.cannotEditOthersTable': return 'No se puede editar otra mesa.';
			case 'exceptions.tableIsAlreadyBlocked': return 'La mesa ya está reservada.';
			case 'exceptions.failedToGetCustomerDetails': return 'No se pudieron obtener los detalles del cliente.';
			case 'exceptions.noTableFoundPleaseTryAgain': return '¡No se encontraron mesas!\n Por favor, intente añadir una mesa.';
			case 'exceptions.noDueCollectionFound': return '¡No se encontraron facturas pendientes!\n Puede ver las facturas pendientes cuando estén disponibles.';
			case 'exceptions.noExpenseFoundPleaseTryAddingExpense': return '¡No se encontró ningún gasto!\n Por favor, intente añadir un gasto.';
			case 'exceptions.doYouWantToDeleteThisExpense': return '¿Desea eliminar este gasto?';
			case 'exceptions.noExpenseCategoryFound': return '¡No se encontró ninguna categoría de gastos!\n Por favor, intente añadir una categoría de gastos.';
			case 'exceptions.noTransactionFound': return 'No se encontraron transacciones. ¡Por favor, inténtelo de nuevo más tarde!';
			case 'exceptions.pleaseSelectACategory': return 'Por favor, seleccione una categoría';
			case 'exceptions.noIncomeFound': return '¡No se encontraron ingresos!\n Por favor, intente añadir un ingreso';
			case 'exceptions.doYouWantToDeleteThisIncome': return '¿Desea eliminar este ingreso?';
			case 'exceptions.noIncomeCategoryFoundAddingAIncome': return '¡No se encontró ninguna categoría de ingresos!\n Por favor, intente añadir una categoría de ingresos.';
			case 'exceptions.noItemFoundPleaseTryAddingItem': return '¡No se encontró ningún artículo!\n Por favor, intente añadir un artículo.';
			case 'exceptions.noPartiesFound': return 'No se encontraron partes';
			case 'exceptions.doYouWantToDeleteThisParty': return '¿Desea eliminar esta parte?';
			case 'exceptions.noLedgerFound': return ({required String transactionType}) => '¡No se encontró ningún libro de contabilidad!\n Por favor, intente añadir un ${transactionType}';
			case 'exceptions.areYouSureYouSureWantToDeleteThisTaxType': return ({required String taxType}) => '¿Está seguro de que desea eliminar este ${taxType}?';
			case 'exceptions.noItemFoundPleaseSTryAddingAnPurchase': return '¡No se encontró ningún artículo!\n Por favor, intente añadir una compra.';
			case 'exceptions.doYouWantToDeleteThisPurchase': return '¿Desea eliminar esta compra?';
			case 'exceptions.noTransactionFoundYouSeeTransactionHereWhenAvailable': return '¡No se encontraron transacciones!\n Verá las transacciones aquí cuando estén disponibles.';
			case 'exceptions.noSaleFoundPleaseTryAddingSale': return '¡No se encontró ninguna venta!\n Por favor, intente añadir una venta.';
			case 'exceptions.noPurchaseFoundPleaseTryAddingPurchase': return '¡No se encontró ninguna compra!\n Por favor, intente añadir una compra.';
			case 'exceptions.noItemIncomeFound': return '¡No se encontraron ingresos de artículos!\n Puede ver los datos de ingresos cuando estén disponibles.';
			case 'exceptions.noItemExpenseFound': return '¡No se encontraron gastos de artículos!\n Puede ver los datos de gastos cuando estén disponibles.';
			case 'exceptions.noItemDueInvoiceFound': return '¡No se encontraron facturas pendientes de artículos!\n Puede ver las facturas pendientes cuando estén disponibles.';
			case 'exceptions.noItemDueCollectionInvoiceFound': return '\'¡No se encontraron facturas de cobro pendientes de artículos!\n Puede ver las facturas de cobro pendientes cuando estén disponibles.';
			case 'exceptions.doYouWantToDeleteThisTable': return '¿Desea eliminar esta mesa?\'';
			case 'exceptions.thisVatIsBeingUsedOnSales': return '¡Este IVA se está utilizando en las ventas!';
			case 'exceptions.noPaymentMethodFoundPleaseTryAddingAPaymentMethod': return '¡No se encontró ningún método de pago!\n Por favor, intente añadir un método de pago.';
			case 'exceptions.pleaseSelectACustomerFirst': return 'Por favor, seleccione un cliente primero.';
			case 'exceptions.pleaseSelectATableToCreateAKot': return 'Por favor, seleccione una mesa para crear un KOT.';
			case 'exceptions.noStaffFound': return '¡No se encontró personal!\n Por favor, intente añadir personal.';
			case 'exceptions.noIngredientFound': return '¡No se encontró ningún ingrediente!\n Por favor, intente añadir un ingrediente.';
			case 'exceptions.exceedsPaymentAmount': return 'La cantidad recibida no debe ser mayor que la cantidad a pagar.';
			case 'exceptions.noItemModifierFound': return '¡No se encontró ningún modificador de artículo!\n Por favor, intente añadir un modificador de artículo.';
			case 'exceptions.noModifierGroupFound': return '¡No se encontró ningún grupo de modificadores!\n Por favor, intente añadir un grupo de modificadores.';
			case 'exceptions.noOptionsFound': return '¡No se encontraron opciones!';
			case 'exceptions.maxImageCountLimit': return 'Solo puede seleccionar hasta 5 imágenes.';
			case 'exceptions.noQuotationFound': return '¡No se encontró ninguna cotización!\n Por favor, intente añadir una cotización.';
			case 'exceptions.noPermittedUserFound': return '¡No se encontró ningún usuario permitido!\n Intente agregar un usuario.';
			case 'prompt.logout.title': return _root.common.logout;
			case 'prompt.logout.message': return '¿Está seguro de que desea cerrar sesión?';
			case 'prompt.unsavedWarning.title': return '¿Quieres volver?';
			case 'prompt.unsavedWarning.message': return '¡Los campos modificados podrían no guardarse!';
			case 'prompt.verify.title': return 'Verifica tu correo electrónico';
			case 'prompt.verify.description': return ({required InlineSpan emailSpan}) => TextSpan(children: [
				const TextSpan(text: 'Hemos enviado un correo electrónico con un código de verificación'),
				emailSpan,
				const TextSpan(text: '\nEs posible que el correo haya terminado en su carpeta de spam.'),
			]);
			case 'prompt.subscriptionExpired.title': return '¡Suscripción Expirada!';
			case 'prompt.subscriptionExpired.message': return 'Por favor, suscríbete para continuar.';
			case 'prompt.subscriptionExpired.action': return 'Suscribirse';
			case 'prompt.items.delete.title': return '¿Desea eliminar este artículo?';
			case 'prompt.items.filter.title': return 'Filtrar por';
			case 'prompt.items.filter.extra.lowToHigh': return 'De menor a mayor ${_root.common.price}';
			case 'prompt.items.filter.extra.highToLow': return 'De mayor a menor ${_root.common.price}';
			case 'prompt.checkInternet.title': return 'Sin conexión a Internet';
			case 'prompt.checkInternet.message': return 'Por favor, compruebe su conexión Wi-Fi o de red móvil e inténtelo de nuevo';
			case 'prompt.back.title': return 'Presione de nuevo para salir.';
			case 'prompt.stockModelSheet.title': return 'Añadir nuevo stock';
			case 'prompt.paymentMethod.title': return '¿Desea eliminar este método de pago?';
			case 'prompt.extMsg.kotSavedSuccessfully': return 'KOT guardado con éxito';
			case 'prompt.deleteStaff': return '¿Desea eliminar a este miembro del personal?';
			case 'prompt.deleteIngredient': return '¿Desea eliminar este ingrediente?';
			case 'prompt.deleteItemModifier': return '¿Desea eliminar este modificador de artículo?';
			case 'prompt.deleteModifierGroup': return '¿Desea eliminar este grupo de modificadores?';
			case 'prompt.deleteQuotation': return '¿Desea eliminar esta cotización?';
			case 'form.fullName.label': return _root.common.fullName;
			case 'form.fullName.hint': return 'Ingrese ${_root.common.fullName}';
			case 'form.fullName.errors.required': return 'Por favor, ingrese su ${_root.common.fullName}';
			case 'form.email.label': return _root.common.email;
			case 'form.email.hint': return 'Ingrese su ${_root.common.email}';
			case 'form.email.errors.required': return 'Por favor, ingrese su dirección de ${_root.common.email}';
			case 'form.email.errors.invalid': return '⦸ Correo electrónico inválido, por favor, inténtelo de nuevo';
			case 'form.password.label': return _root.common.password;
			case 'form.password.hint': return '* * * * * * * *';
			case 'form.password.errors.required': return 'Por favor, ingrese su ${_root.common.password}';
			case 'form.password.errors.minLength': return ({required Object count}) => '¡La contraseña debe tener al menos ${count} caracteres!';
			case 'form.confirmPassword.label': return 'Confirmar contraseña';
			case 'form.confirmPassword.hint': return '* * * * * * * *';
			case 'form.confirmPassword.errors.required': return 'Por favor, ingrese su ${_root.common.password}';
			case 'form.confirmPassword.errors.invalid': return '\'¡La confirmación de la contraseña no coincide!';
			case 'form.otp.errors.required': return 'Por favor, ingrese el código OTP.';
			case 'form.otp.errors.invalid': return 'Por favor, ingrese el código OTP actual.';
			case 'form.profile.businessCategory.label': return 'Categoría de negocio';
			case 'form.profile.businessCategory.hint': return 'Seleccionar categoría de negocio';
			case 'form.profile.businessCategory.errors.required': return 'Por favor, seleccione la categoría de negocio';
			case 'form.profile.shopOrStore.label': return 'Nombre de la tienda*';
			case 'form.profile.shopOrStore.hint': return 'Ingrese el nombre de la tienda';
			case 'form.profile.shopOrStore.errors.required': return 'Por favor, ingrese el nombre de su tienda';
			case 'form.profile.openingBalance.label': return 'Saldo inicial';
			case 'form.profile.openingBalance.hint': return 'Ingrese el saldo inicial';
			case 'form.profile.vatGstTitle.label': return 'Título IVA/IGV';
			case 'form.profile.vatGstTitle.hint': return 'Ingrese IVA/IGV';
			case 'form.profile.vatGstNumber.label': return 'Número de IVA/IGV';
			case 'form.profile.vatGstNumber.hint': return 'Ingrese el número de IVA/IGV';
			case 'form.vat.name.label': return 'Nombre';
			case 'form.vat.name.hint': return 'Ingrese el nombre del IVA';
			case 'form.vat.name.error.required': return 'Por favor, ingrese el nombre del IVA';
			case 'form.vat.subVat.label': return 'Sub IVA';
			case 'form.vat.subVat.hint': return 'Seleccionar sub IVA';
			case 'form.vat.subVat.errors.required': return 'Por favor, seleccione un sub-IVA';
			case 'form.vat.rate.label': return 'Tasa de IVA %';
			case 'form.vat.rate.hint': return 'Introduzca el tipo de IVA';
			case 'form.vat.rate.errors.required': return 'Por favor, introduzca el tipo de IVA.';
			case 'form.category.label': return _root.common.category;
			case 'form.category.hint': return 'Seleccionar categoría del artículo';
			case 'form.category.error.required': return 'Por favor, ingrese el nombre de la categoría';
			case 'form.items.barcode.label': return 'Código de barras';
			case 'form.items.barcode.hint': return _root.common.selectOne;
			case 'form.items.itemName.label': return 'Nombre del artículo';
			case 'form.items.itemName.hint': return 'Ingrese el nombre del artículo';
			case 'form.items.itemName.extra.required': return 'Por favor, ingrese el nombre del artículo';
			case 'form.items.itemCategory.label': return 'Categoría del artículo';
			case 'form.items.itemCategory.hint': return 'Categoría del artículo';
			case 'form.items.itemCategory.extra.label': return 'Seleccionar categoría';
			case 'form.items.itemCategory.extra.required': return 'Por favor, seleccione una categoría';
			case 'form.items.brand.label': return _root.common.brand;
			case 'form.items.brand.hint': return _root.common.selectOne;
			case 'form.items.brand.extra.hint': return 'Ingrese el nombre de la marca';
			case 'form.items.brand.extra.required': return 'Por favor, ingrese el nombre de la marca';
			case 'form.items.unit.label': return _root.common.unit;
			case 'form.items.unit.hint': return _root.common.selectOne;
			case 'form.items.unit.error.required': return 'Por favor, ingrese el nombre de la unidad';
			case 'form.items.stock.label': return 'Stock inicial';
			case 'form.items.stock.hint': return _root.common.commonHint;
			case 'form.items.stock.extra.required': return 'Por favor, ingrese la cantidad del artículo.';
			case 'form.items.lowStock.label': return _root.common.lowStock;
			case 'form.items.lowStock.hint': return 'Ej: 5';
			case 'form.items.purchasePrice.label': return _root.common.purchasePrice;
			case 'form.items.purchasePrice.hint': return 'Ej: \Q40';
			case 'form.items.purchasePrice.error.required': return 'Por favor, ingrese el precio de compra.';
			case 'form.items.salePrice.label': return 'Precio de venta';
			case 'form.items.salePrice.hint': return 'Ej: \Q60';
			case 'form.items.salePrice.error.required': return 'Por favor, ingrese el precio de venta.';
			case 'form.items.totalSalePrice.label': return 'Precio total de venta';
			case 'form.items.totalSalePrice.hint': return 'Ej: \Q100';
			case 'form.items.wholeSalePrice.label': return _root.common.wholeSalePrice;
			case 'form.items.wholeSalePrice.hint': return 'Ingrese el precio al por mayor';
			case 'form.items.dealerPrice.label': return _root.common.dealerPrice;
			case 'form.items.dealerPrice.hint': return 'Ingrese el precio de distribuidor';
			case 'form.items.discount.label': return 'Descuento (%)';
			case 'form.items.discount.hint': return _root.common.commonHint;
			case 'form.items.applicableTax.label': return 'Impuesto aplicable';
			case 'form.items.applicableTax.hint': return _root.common.selectOne;
			case 'form.items.vatType.label': return _root.common.taxType;
			case 'form.items.vatType.errorText.required': return 'Por favor, seleccione un tipo de IVA';
			case 'form.items.menu.label': return 'Elegir menú';
			case 'form.items.menu.errors.required': return 'Por favor, seleccione un menú.';
			case 'form.items.menu.hint': return 'Seleccione un menú';
			case 'form.items.menu.extra.selectNavLabel': return 'Seleccionar menú de artículo';
			case 'form.items.modifierItems.label': return 'Artículos modificadores';
			case 'form.items.modifierItems.hint': return 'Seleccionar artículos modificadores';
			case 'form.items.preparationTime.label': return ({required InlineSpanBuilder minutes}) => TextSpan(children: [
				const TextSpan(text: 'Tiempo de preparación '),
				minutes('Minutos'),
			]);
			case 'form.items.preparationTime.hint': return 'Ej: 30';
			case 'form.items.variation.name.label': return 'Nombre';
			case 'form.items.variation.name.hint': return 'Introduzca la variación';
			case 'form.items.variation.name.errors.required': return 'Por favor, introduzca el nombre de la variación.';
			case 'form.items.variation.price.errors.required': return 'Por favor, introduzca el precio.';
			case 'form.items.variation.price.label': return 'Precio';
			case 'form.items.variation.price.hint': return 'Ej: \Q30';
			case 'form.itemCart.hint': return _root.common.commonHint;
			case 'form.itemCart.error.required': return _root.common.pleaseEnterQuantity;
			case 'form.itemCart.error.noZero': return _root.common.quantityMustBeGreaterThanZero;
			case 'form.sales.autoGenerateInvoice.label': return 'Nº de factura';
			case 'form.sales.autoGenerateInvoice.hint': return 'P-00001';
			case 'form.sales.date.label': return 'Fecha';
			case 'form.sales.customer.label': return 'Cliente';
			case 'form.sales.customer.hint': return 'Seleccionar cliente';
			case 'form.sales.phone.label': return 'Número de teléfono';
			case 'form.sales.phone.hint': return 'Ingrese el número de teléfono';
			case 'form.sales.address.label': return 'Dirección';
			case 'form.sales.address.hint': return 'Ingrese la dirección';
			case 'form.sales.deliveryCharge.label': return _root.common.deliveryCharge;
			case 'form.sales.deliveryCharge.hint': return 'Ej: \Q20';
			case 'form.sales.deliveryCharge.hint2': return 'Cargo Ej: \Q10';
			case 'form.sales.table.hint': return 'Seleccionar mesa';
			case 'form.sales.waiter.hint': return 'Seleccionar camarero';
			case 'form.bill.label': return 'Nº de factura';
			case 'form.bill.hint': return 'P-00001';
			case 'form.supplier.label': return 'Proveedor';
			case 'form.supplier.hint': return 'Seleccionar proveedor';
			case 'form.supplier.extra.required': return 'Por favor, seleccione un proveedor';
			case 'form.phone.label': return 'Número de teléfono';
			case 'form.phone.hint': return 'Ingrese el número de teléfono';
			case 'form.phone.errors.required': return 'Por favor, ingrese el número de teléfono.';
			case 'form.address.label': return 'Dirección';
			case 'form.address.hint': return 'Ingrese la dirección';
			case 'form.payment.label': return 'Nombre';
			case 'form.payment.hint': return 'Ingrese el nombre del pago';
			case 'form.payment.error.required': return 'Por favor, ingrese un nombre de método de pago';
			case 'form.expense.label': return 'Categoría de gasto';
			case 'form.expense.hint': return 'Seleccionar categoría de gasto';
			case 'form.expense.error.required': return 'Por favor, ingrese la categoría de gasto';
			case 'form.income.label': return 'Categoría de ingreso';
			case 'form.income.hint': return 'Ingrese el nombre de la categoría';
			case 'form.income.error.required': return 'Por favor, ingrese el nombre de la categoría';
			case 'form.income.incomeTitle.label': return 'Título del ingreso';
			case 'form.income.incomeTitle.hint': return 'Ingrese el ingreso';
			case 'form.income.incomeCategory.label': return 'Categoría de ingreso';
			case 'form.income.incomeCategory.hint': return 'Seleccionar categoría';
			case 'form.income.payment.label': return 'Pago';
			case 'form.income.payment.hint': return 'Ej: \Q10';
			case 'form.note.label': return 'Nota (Opcional)';
			case 'form.note.hint': return 'Ingrese texto';
			case 'form.parties.partyName.label': return 'Nombre de la parte';
			case 'form.parties.partyName.hint': return 'Ingrese el nombre de la parte';
			case 'form.parties.partyName.error.required': return 'Por favor, ingrese el nombre de la parte';
			case 'form.parties.partyPhone.label': return 'Número de teléfono';
			case 'form.parties.partyPhone.hint': return 'Ingrese el número de teléfono';
			case 'form.parties.partyPhone.error.required': return 'Por favor, ingrese el número de teléfono';
			case 'form.table.name.label': return 'Nombre de la mesa';
			case 'form.table.name.hint': return 'Ingrese el nombre de la mesa';
			case 'form.table.name.error.required': return 'Por favor, ingrese el nombre de la mesa';
			case 'form.table.capacity.label': return 'Capacidad';
			case 'form.table.capacity.hint': return 'Ingrese la capacidad';
			case 'form.table.capacity.error.required': return 'Por favor, ingrese la capacidad';
			case 'form.designation.label': return _root.common.designation;
			case 'form.designation.hint': return 'Seleccione una designación';
			case 'form.designation.errors.required': return 'Por favor, seleccione una designación.';
			case 'form.ingredientName.label': return 'Nombre del ingrediente';
			case 'form.ingredientName.hint': return 'Introduzca el nombre del ingrediente';
			case 'form.ingredientName.errors.required': return 'Por favor, introduzca el nombre del ingrediente';
			case 'form.item.label': return 'Artículo';
			case 'form.item.hint': return 'Seleccionar artículo';
			case 'form.item.errors.required': return 'Por favor, seleccione un artículo.';
			case 'form.modifierGroup.label': return 'Grupo de modificadores';
			case 'form.modifierGroup.hint': return 'Seleccionar grupo de modificadores';
			case 'form.modifierGroup.errors.required': return 'Por favor, seleccione un grupo de modificadores.';
			case 'form.description.label': return 'Descripción';
			case 'form.description.hint': return 'Introduzca la descripción';
			case 'form.staff.label': return _root.common.staff;
			case 'form.staff.hint': return 'Seleccionar un empleado';
			case 'form.staff.errors.required': return 'Por favor, seleccione un empleado';
			case 'form.loginUserName.label': return 'Nombre de usuario de inicio de sesión';
			case 'form.loginUserName.hint': return 'Introduzca nombre de usuario o dirección de correo electrónico';
			case 'form.loginUserName.errors.required': return 'Por favor, introduzca nombre de usuario o dirección de correo electrónico';
			case 'action.next': return 'Siguiente';
			case 'action.getStarted': return 'Empezar';
			case 'action.skip': return 'Omitir';
			case 'action.select': return 'Seleccionar';
			case 'action.save': return 'Guardar';
			case 'action.verify': return 'Verificar';
			case 'action.signIn': return _root.common.signIn;
			case 'action.signUp': return _root.common.signUp;
			case 'action.kContinue': return 'Continuar';
			case 'action.no': return 'No';
			case 'action.yes': return 'Sí';
			case 'action.okay': return 'De acuerdo';
			case 'action.cancel': return 'Cancelar';
			case 'action.confirm': return 'Confirmar';
			case 'action.tryAgain': return 'Intentar de nuevo';
			case 'action.reset': return 'Restablecer';
			case 'action.apply': return 'Aplicar';
			case 'action.stockAdjust': return 'Ajustar stock';
			case 'action.addMoreItems': return 'Añadir más artículos';
			case 'action.hold': return 'Retener';
			case 'action.parcel': return _root.common.parcel;
			case 'action.buyNow': return 'Comprar ahora';
			case 'action.viewAll': return 'Ver todo';
			case 'action.viewLedger': return 'Ver libro de contabilidad';
			case 'action.submit': return 'Enviar';
			case 'action.selected': return 'Seleccionado';
			case 'action.addToCart': return 'Añadir al carrito';
			case 'action.selectAll': return 'Seleccionar todo';
			case 'action.update': return _root.common.update;
			case 'action.addRole': return 'Agregar Rol';
			case 'pages.language.appbarTitle': return '${_root.action.select} ${_root.common.language}';
			case 'pages.onboard.onboardData.data1.title': return 'Fácil de usar ${_root.common.appName}';
			case 'pages.onboard.onboardData.data1.description': return 'Pedidos fluidos, reservas sin esfuerzo\nPotencia tu restaurante con facilidad';
			case 'pages.onboard.onboardData.data2.title': return 'Gestión de pedidos sin esfuerzo';
			case 'pages.onboard.onboardData.data2.description': return 'Optimice el proceso de toma de pedidos de su restaurante con nuestro intuitivo sistema POS.';
			case 'pages.onboard.onboardData.data3.title': return 'Excelentes análisis e informes';
			case 'pages.onboard.onboardData.data3.description': return 'Nuestro panel de análisis proporciona informes de ventas y compras en tiempo real';
			case 'pages.signIn.title': return 'Bienvenido de nuevo';
			case 'pages.signIn.subtitle': return 'Por favor, introduzca sus datos.';
			case 'pages.signIn.extra.rememberMe': return 'Recordarme';
			case 'pages.signIn.extra.signUpNavigator': return ({required InlineSpanBuilder getStarted}) => TextSpan(children: [
				const TextSpan(text: '¿No tiene una cuenta? '),
				getStarted(_root.action.getStarted),
			]);
			case 'pages.signIn.extra.forgotPassword': return '¿${_root.common.forgotPassword}?';
			case 'pages.signUp.title': return 'Crear una cuenta';
			case 'pages.signUp.subtitle': return 'Por favor, introduzca sus datos';
			case 'pages.signUp.extra.signInNavigator': return ({required InlineSpanBuilder signIn}) => TextSpan(children: [
				const TextSpan(text: '¿Ya tiene una cuenta? '),
				signIn(_root.action.signIn),
			]);
			case 'pages.forgotPassword.title': return _root.common.forgotPassword;
			case 'pages.forgotPassword.subtitle': return 'Ingrese su dirección de correo electrónico para recuperar su contraseña.';
			case 'pages.otpVerification.title': return 'Verificación';
			case 'pages.otpVerification.subtitle': return 'Se ha enviado un pin de 6 dígitos a su dirección de correo electrónico';
			case 'pages.otpVerification.extra.codeResend.codeSendIn': return 'Código enviado en';
			case 'pages.otpVerification.extra.codeResend.resendCode': return 'Reenviar código';
			case 'pages.resetPassword.title': return 'Restablecer contraseña';
			case 'pages.resetPassword.subtitle': return 'Restablezca su contraseña para recuperarla e iniciar sesión en su cuenta';
			case 'pages.resetPassword.extra.dialog.title': return '¡Cambiado exitosamente!';
			case 'pages.resetPassword.extra.dialog.subtitle': return 'Inicie sesión con su nueva contraseña.\nRedirigiéndole al inicio de sesión...';
			case 'pages.items.itemList.extra.emptyItem': return '¡No se encontró ningún artículo!\nPor favor, intente añadir un artículo.';
			case 'pages.items.manageItems.title': return 'Añadir nuevo artículo';
			case 'pages.items.manageItems.title2': return 'Editar artículo';
			case 'pages.items.manageItems.extra.maximum': return 'Máximo 5';
			case 'pages.items.manageItems.extra.wholeSaleAndDealerPrice': return 'Precio al por mayor y de distribuidor';
			case 'pages.items.manageItems.extra.addDiscount': return 'Añadir descuento';
			case 'pages.items.manageItems.extra.addVat': return 'Añadir IVA';
			case 'pages.items.itemDetails.title': return 'Detalles del artículo';
			case 'pages.items.itemDetails.extra.noImageAvailable': return '¡No hay imagen disponible!';
			case 'pages.items.itemDetails.extra.preparationTime': return ({required InlineSpan min, required InlineSpanBuilder mins}) => TextSpan(children: [
				const TextSpan(text: 'Tiempo de preparación: '),
				min,
				const TextSpan(text: ' '),
				mins('mins'),
			]);
			case 'pages.items.itemDetails.extra.pleaseSelectVariation': return 'Por favor, seleccione una variación';
			case 'pages.items.itemDetails.extra.pleaseSelectOption': return 'Por favor, seleccione una opción.';
			case 'pages.items.itemDetails.extra.enterYourInstruction': return 'Introduzca sus instrucciones';
			case 'pages.category.addNewCategory': return 'Añadir nueva categoría';
			case 'pages.category.editCategory': return 'Editar categoría';
			case 'pages.brand.addNewBrand': return 'Añadir nueva marca';
			case 'pages.brand.editBrand': return 'Editar marca';
			case 'pages.unit.addNewUnit': return 'Añadir nueva unidad';
			case 'pages.unit.editUnit': return 'Editar unidad';
			case 'pages.stock.stockList': return 'Lista de stock';
			case 'pages.aboutUs.title': return 'Acerca de nosotros';
			case 'pages.privacyPolicy.title': return 'Política de privacidad';
			case 'pages.termAndCondition.title': return _root.common.termAndCondition;
			case 'pages.orders.manageOrders.extra.billItems': return 'Artículos de la factura';
			case 'pages.orders.manageOrders.extra.manageQuantity': return 'Gestionar cantidad';
			case 'pages.orders.manageOrders.title.editOrder': return 'Editar Pedido';
			case 'pages.orders.manageOrders.title.editKOT': return 'Editar KOT';
			case 'pages.onlinePayment.title': return 'Pago en línea';
			case 'pages.paymentStatus.success.title': return '¡Gracias!';
			case 'pages.paymentStatus.success.message': return 'Revisaremos el pago y lo aprobaremos en un plazo de 24 horas.';
			case 'pages.paymentStatus.success.actionButtonText': return 'Ver factura';
			case 'pages.paymentStatus.fail.title': return '¡Oops! El pago falló';
			case 'pages.paymentStatus.fail.message': return 'Su transacción ha fallado debido a un error técnico.';
			case 'pages.paymentStatus.fail.actionButtonText': return 'Intentar de nuevo';
			case 'pages.confirmationDialog.title': return 'Cerrar sesión';
			case 'pages.confirmationDialog.message': return '¿Está seguro de que desea cerrar sesión?';
			case 'pages.confirmationDialog.acceptationText': return 'No';
			case 'pages.confirmationDialog.rejectionText': return 'Cerrar sesión';
			case 'pages.payment.title': return _root.common.paymentMethod;
			case 'pages.payment.addPaymentMethod': return 'Añadir nuevo método de pago';
			case 'pages.payment.editPaymentMethod': return 'Editar método de pago';
			case 'pages.payment.choseOnlinePayment': return 'Elegir pago en línea';
			case 'pages.payment.selectPaymentMethod': return 'Seleccionar método de pago';
			case 'pages.payment.pleaseSelectAPaymentMethod': return 'Por favor, seleccione un método de pago.';
			case 'pages.payment.methodStatus.title': return 'Estado';
			case 'pages.payment.methodStatus.message': return '¡El estado no puede estar inactivo si la vista rápida está habilitada!.';
			case 'pages.subscriptionPlan.title': return 'Comprar plan premium';
			case 'pages.subscriptionPlan.extra.actionButtonText': return 'Volver';
			case 'pages.subscriptionPlan.extra.message': return 'Pago de suscripción realizado correctamente.\n\nAhora puede acceder a las funciones suscritas.';
			case 'pages.subscriptionPlan.extra.mostPopular': return 'Más popular';
			case 'pages.invoicePreview.title': return 'Vista previa de la factura';
			case 'pages.invoicePreview.message': return 'Vista previa en PDF próximamente';
			case 'pages.currency.title': return _root.common.currency;
			case 'pages.dashboard.overview': return 'Información general';
			case 'pages.dashboard.dashboardPrivacy': return 'Privacidad del panel';
			case 'pages.dashboard.moneyInAndMoneyOut': return 'Ingresos y egresos';
			case 'pages.dashboard.lossAndProfitOverView': return 'Resumen de pérdidas y ganancias';
			case 'pages.due.title': return _root.common.dueList;
			case 'pages.due.collectionList': return 'Lista de cobros';
			case 'pages.due.dueCollection': return 'Cobro de pendientes';
			case 'pages.expense.title': return _root.common.expense;
			case 'pages.expense.editExpense': return 'Editar Gasto';
			case 'pages.expense.addNewExpense': return 'Añadir Nuevo Gasto';
			case 'pages.expense.editExpenseCategory': return 'Editar Categoría de Gasto';
			case 'pages.expense.addNewExpenseCategory': return 'Añadir Nueva Categoría de Gasto';
			case 'pages.expense.payment': return 'Pago';
			case 'pages.expense.expenseCategory': return 'Categoría de Gasto';
			case 'pages.expense.selectCategory': return 'Seleccionar Categoría';
			case 'pages.expense.allExpense': return 'Todos los Gastos';
			case 'pages.expense.pleaseSelectACategory': return 'Por favor, seleccione una categoría';
			case 'pages.expense.expenseTitle.label': return 'Título del Gasto';
			case 'pages.expense.expenseTitle.hint': return 'Introducir gasto';
			case 'pages.lossProfit.title': return 'Lista de Pérdidas/Ganancias';
			case 'pages.lossProfit.noLossProfitFound': return 'No se encontraron pérdidas/ganancias.\nPor favor, intente crear algunas ventas.';
			case 'pages.income.editIncomeCategory': return 'Editar categoría de ingresos';
			case 'pages.income.addNewIncomeCategory': return 'Añadir nueva categoría de ingresos';
			case 'pages.income.incomeCategory': return 'Categoría de ingresos';
			case 'pages.income.allIncome': return 'Todos los ingresos';
			case 'pages.income.editIncome': return 'Editar ingreso';
			case 'pages.income.addNewIncome': return 'Editar ingreso';
			case 'pages.income.addIncome': return 'Añadir ingreso';
			case 'pages.moneyIn.title': return 'Lista de ingresos';
			case 'pages.moneyIn.totalPaymentIn': return 'Ingresos totales';
			case 'pages.moneyOut.title': return 'Lista de egresos';
			case 'pages.moneyOut.totalMoneyOut': return 'Egresos totales';
			case 'pages.profile.title': return 'Mi perfil';
			case 'pages.profile.editProfile': return 'Editar perfil';
			case 'pages.profile.businessInformation': return 'Información del negocio';
			case 'pages.profile.profileInformation': return 'Información del perfil';
			case 'pages.parties.title': return 'Lista de partes';
			case 'pages.parties.allParties': return 'Todas las partes';
			case 'pages.parties.customer': return 'Cliente';
			case 'pages.parties.supplier': return 'Proveedor';
			case 'pages.parties.addParties': return 'Añadir partes';
			case 'pages.parties.editParties': return 'Editar partes';
			case 'pages.parties.partiesDetails': return 'Detalles de las partes';
			case 'pages.parties.personalInfo': return 'Información personal';
			case 'pages.ledger.subTitle': return 'Libro de contabilidad';
			case 'pages.purchase.title': return 'Añadir nueva compra';
			case 'pages.purchase.editPurchase': return 'Editar compra';
			case 'pages.reports.title': return 'Informes';
			case 'pages.table.title': return 'Añadir nueva mesa';
			case 'pages.table.editTable': return 'Editar mesa';
			case 'pages.tax.title': return 'Tasas de IVA';
			case 'pages.tax.buildHeaderTitle': return 'Tasas de IVA - Gestione sus tasas de IVA';
			case 'pages.tax.vatGroup.title': return 'Grupo de IVA';
			case 'pages.tax.vatGroup.subTitle': return 'Grupo de IVA - Gestione su grupo de IVA';
			case 'pages.vat.addNewVat': return 'Añadir nuevo IVA';
			case 'pages.vat.editVat': return 'Editar IVA';
			case 'pages.vat.addNewVatGroup': return 'Añadir nuevo grupo de IVA';
			case 'pages.vat.editVatGroup': return 'Editar grupo de IVA';
			case 'pages.orderList.title': return 'Lista de pedidos';
			case 'pages.orderList.filters.orderType.label': return _root.common.orderType;
			case 'pages.orderList.filters.orderType.hint': return 'Seleccionar tipo de pedido';
			case 'pages.orderList.filters.paymentStatus.hint': return 'Seleccionar estado de pago';
			case 'pages.orderList.filters.paymentStatus.label': return 'Estado de pago';
			case 'pages.staffs.staffList.filters.designation.label': return 'Designación';
			case 'pages.staffs.staffList.filters.designation.hint': return 'Seleccionar designación';
			case 'pages.staffs.staffList.title': return 'Todo el personal';
			case 'pages.staffs.manageStaff.title1': return 'Añadir nuevo personal';
			case 'pages.staffs.manageStaff.title2': return 'Actualizar personal';
			case 'pages.ingredient.ingredientList.title1': return 'Lista de ingredientes';
			case 'pages.ingredient.ingredientList.title2': return 'Seleccionar ingrediente';
			case 'pages.ingredient.manageIngredient.title1': return 'Añadir nuevo ingrediente';
			case 'pages.ingredient.manageIngredient.title2': return 'Editar ingrediente';
			case 'pages.itemModifier.itemModifierList.title': return _root.common.itemModifiers;
			case 'pages.itemModifier.manageItemModifier.title1': return 'Añadir modificadores de artículo';
			case 'pages.itemModifier.manageItemModifier.title2': return 'Editar modificadores de artículo';
			case 'pages.quotation.manageQuotation.title.add': return 'Añadir Nueva Cotización';
			case 'pages.quotation.manageQuotation.title.edit': return 'Editar Cotización';
			case 'pages.quotation.manageQuotation.title.convert': return 'Convertir a Venta';
			case 'pages.rolePermission.rolePermissionList.title': return 'Lista de Roles y Permisos';
			case 'pages.rolePermission.manageRolePermission.title1': return 'Añadir Nuevo Rol';
			case 'pages.rolePermission.manageRolePermission.title2': return 'Editar Rol';
			case 'enums.dropdownDateFilter.daily': return 'Diario';
			case 'enums.dropdownDateFilter.weekly': return 'Semanal';
			case 'enums.dropdownDateFilter.monthly': return 'Mensual';
			case 'enums.dropdownDateFilter.yearly': return 'Anual';
			case 'enums.dropdownDateFilter.custom': return 'Personalizado';
			case 'enums.orderTypes.dineIn': return 'Comer en el local';
			case 'enums.orderTypes.pickUp': return 'Recoger';
			case 'enums.orderTypes.delivery': return 'Entrega';
			case 'enums.orderTypes.reservation': return 'Reserva';
			case 'enums.orderTypes.quotation': return 'Presupuesto';
			case 'enums.paymentStatus.paid': return 'Pagado';
			case 'enums.paymentStatus.unpaid': return 'Impago';
			case 'enums.staffTypes.manager': return 'Gerente';
			case 'enums.staffTypes.waiter': return 'Camarero';
			case 'enums.staffTypes.chef': return 'Cocinero';
			case 'enums.staffTypes.cleaner': return 'Personal de limpieza';
			case 'enums.staffTypes.driver': return 'Conductor';
			case 'enums.staffTypes.deliveryBoy': return 'Repartidor';
			case 'enums.itemFoodTypes.veg': return 'Vegetariano';
			case 'enums.itemFoodTypes.nonVeg': return 'No Vegetariano';
			case 'enums.itemFoodTypes.egg': return 'Huevo';
			case 'enums.itemFoodTypes.drink': return 'Bebida';
			case 'enums.itemFoodTypes.others': return 'Otros';
			case 'enums.itemTypes.single': return 'Individual';
			case 'enums.itemTypes.variation': return 'Variación';
			case 'enums.quotationStatus.open': return 'Abierta';
			case 'enums.quotationStatus.closed': return 'Cerrada';
			default: return null;
		}
	}
}

