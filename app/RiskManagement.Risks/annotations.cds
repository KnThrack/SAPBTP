using RiskManagementService as service from '../../srv/service';
annotate service.Risk with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Title}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Priority}',
                Value : prio,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Descr}',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Impact}',
                Value : impact,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Criticality}',
                Value : criticality,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Supplierbusinesspartner}',
                Value : supplier_BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
                Label : '{i18n>Mitigation}',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerFullName,
                Label : '{i18n>SupplierFullName}',
            },
            {
                $Type : 'UI.DataField',
                Value : supplier.BusinessPartnerIsBlocked,
                Label : '{i18n>SupplierIsBlocked}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Prio}',
            Value : prio,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Descr}',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Impact}',
            Value : impact,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Criticality}',
            Value : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : supplier_BusinessPartner,
            Label : '{i18n>Supplierbusinesspartner}',
        },
    ],
);

annotate service.Risk with {
    miti @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Mitigations',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : miti_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdAt',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'createdBy',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'owner',
            },
        ],
        Label : 'Mitigation',
    }
};

annotate service.Risk with {
    supplier @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'A_BusinessPartner',
        Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : supplier_BusinessPartner,
                    ValueListProperty : 'BusinessPartner',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Supplier',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerCategory',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerFullName',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'BusinessPartnerIsBlocked',
                },
            ],
        Label : 'Supplier',
    }
};

annotate service.Risk with {
    supplier @Common.ValueListWithFixedValues : false
};
annotate service.Risk with @(
    UI.HeaderInfo : {
        TypeName : 'Risk',
        TypeNamePlural : 'Risks',
        Title : {
            $Type : 'UI.DataField',
            Value : descr,
        },
    }
);
annotate service.A_BusinessPartner with {
    BusinessPartner @Common.Text : {
        $value : Supplier,
        ![@UI.TextArrangement] : #TextFirst,
    }
};
annotate service.Risk with {
    miti @Common.ValueListWithFixedValues : true
};
annotate service.Risk with {
    miti @Common.Text : descr
};
annotate service.Risk with {
    miti @Common.Text : miti.description
};
