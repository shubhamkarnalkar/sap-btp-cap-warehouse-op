using {managed} from '@sap/cds/common';

entity Material {
    key Material   : String;
        Properties : Composition of many {
                         key GTIN          : String;
                         key PropertyName  : String;
                             PropertyValue : String;
                             Section       : String;
                     };
}

entity ArrivalSrv : managed {
    key document          : String;
        Items             : Composition of many {
                                key itemNo   : Integer;
                                    Material : Association to Material;
                            };
        arrivalComplete   : Boolean;
        quantity          : Integer;
        confirmedQuantity : Integer;
        user              : String;
}
