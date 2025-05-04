using my.bookshop as my from '../schema/schema';

service CatalogService {
    @readonly entity Books as projection on my.Books;
}
