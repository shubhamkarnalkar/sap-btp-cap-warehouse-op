using { Material } from '../schema/related-schema';
service master_data {
  entity materials as projection on Material;
}
