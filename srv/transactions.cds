using { ArrivalSrv } from '../schema/related-schema';

service TransactionsService @(requires: 'authenticated-user')  {
    entity Arrival as projection on ArrivalSrv;
}
