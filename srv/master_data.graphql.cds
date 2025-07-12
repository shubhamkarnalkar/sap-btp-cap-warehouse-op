using {Material} from '../schema/related-schema';

@graphql
service g_master_data @(requires: 'authenticated-user') {
    entity materials @(restrict: [
        {
            grant: '*',
            to   : 'Admin'
        },
        {
            grant: 'read',
            to   : 'User'
        } /* overrides */
    ]) as projection on Material;
}
