using { ArrivalSrv } from '../schema/related-schema';

service TransactionsService {
    entity Arrival as projection on ArrivalSrv;
}
