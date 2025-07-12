using {Material} from '../schema/related-schema';

service master_data @(requires: 'authenticated-user') {
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
