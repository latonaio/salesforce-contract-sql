CREATE TABLE `data_platform_orders_header_data`
(
  `OrderID`                          int(16) NOT NULL,
  `OrderDate`                        date NOT NULL,
  `OrderType`                        varchar(3) NOT NULL,
  `Buyer`                            int(12) NOT NULL,
  `Seller`                           int(12) NOT NULL,
  `CreationDate`                     date NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `ContractType`                     varchar(4) DEFAULT NULL,
  `VaridityStartDate`                date DEFAULT NULL,
  `VaridityEndDate`                  date DEFAULT NULL,
  `InvoiceScheduleStartDate`         date DEFAULT NULL,
  `InvoiceScheduleEndDate`           date DEFAULT NULL,
  `TotalNetAmount`                   float(13) NOT NULL,
  `TotalTaxAmount`                   float(13) NOT NULL,
  `TotalGrossAmount`                 float(13) NOT NULL,
  `OverallDeliveryStatus`            varchar(2) NOT NULL,
  `TotalBlockStatus`                 tinyint(1) DEFAULT NULL,
  `OverallOrdReltdBillgStatus`       varchar(2) NOT NULL,
  `OverallDocReferenceStatus`        varchar(2) NOT NULL,
  `TransactionCurrency`              varchar(5) NOT NULL,
  `PricingDate`                      date NOT NULL,
  `PriceDetnExchangeRate`            float(8) DEFAULT NULL,
  `RequestedDeliveryDate`            date NOT NULL,
  `HeaderCompleteDeliveryIsDefined`  tinyint(1) DEFAULT NULL,
  `HeaderBillingBlockReason`         tinyint(1) DEFAULT NULL,
  `DeliveryBlockReason`              tinyint(1) DEFAULT NULL,
  `Incoterms`                        varchar(4) DEFAULT NULL,
  `PaymentTerms`                     varchar(4) NOT NULL,
  `PaymentMethod`                    varchar(1) NOT NULL,
  `ReferenceDocument`                int(16) DEFAULT NULL,
  `ReferenceDocumentItem`            int(6) DEFAULT NULL,
  `BPAccountAssignmentGroup`         varchar(2) NOT NULL,
  `AccountingExchangeRate`           float(8) DEFAULT NULL,
  `BillingDocumentDate`              date NOT NULL,
  `IsExportImportDelivery`           tinyint(1) DEFAULT NULL,
  `HeaderText`                       varchar(200) DEFAULT NULL,

    PRIMARY KEY (`OrderID`),
    
    CONSTRAINT `DataPlatformOrdersHeaderBuyer_fk` FOREIGN KEY (`Buyer`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersHeaderSeller_fk` FOREIGN KEY (`Seller`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DataPlatformOrdersHeaderTransactionCurrency_fk` FOREIGN KEY (`TransactionCurrency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
    CONSTRAINT `DataPlatformOrdersHeaderIncoterms_fk` FOREIGN KEY (`Incoterms`) REFERENCES `data_platform_incoterms_incoterms_data` (`Incoterms`),
    CONSTRAINT `DataPlatformOrdersHeaderPaymentTerms_fk` FOREIGN KEY (`PaymentTerms`) REFERENCES `data_platform_payment_terms_payment_terms_data` (`PaymentTerms`),
    CONSTRAINT `DataPlatformOrdersHeaderPaymentMethod_fk` FOREIGN KEY (`PaymentMethod`) REFERENCES `data_platform_payment_method_payment_method_data` (`PaymentMethod`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
