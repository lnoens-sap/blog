using { BlogService as my } from '../db/schema';

@path : '/service/BlogService'
service BlogServiceService
{
    @odata.draft.enabled
    entity Products as
        projection on my.Products;
}

annotate BlogServiceService with @requires :
[
    'authenticated-user'
];
