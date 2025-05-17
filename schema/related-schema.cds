using {managed} from '@sap/cds/common';
using {
    gs1.GLN,
    gs1.SGLN,
    gs1.GTIN
} from './gs1-types';

entity Material {
    key Material   : String;
        Properties : Composition of many {
                         key GTIN          : GTIN;
                         key PropertyName  : String;
                             PropertyValue : String;
                             Section       : String;
                     };
}

entity ArrivalSrv : managed {
    key document        : String;
        Items           : Composition of many {
                              key itemNo            : Integer;
                                  Material          : Association to Material;
                                  quantity          : Integer;
                                  confirmedQuantity : Integer;
                                  unitOfMeasure     : String;
                          };
        arrivalComplete : Boolean;
        plant           : Association to Plant;
}

entity Plant : managed {
    key name             : String;
    key GLN              : GLN;
        StorageLocations : Composition of many {
                               key name : String;
                               key SGLN : SGLN;
                           }
}
