using { BlogService as my } from '../db/schema';

@path : '/service/BlogService'
service BlogServiceService
{
    annotate Products with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'authenticated-user' ] },
        { grant : [ 'READ' ], to : [ 'ProductViewer' ] },
        { grant : [ 'READ', 'CREATE' ], to : [ 'ProductAdmin' ] }
    ];

    entity Products as
        projection on my.Products;
}

annotate BlogServiceService with @requires :
[
    'authenticated-user',
    'ProductViewer'
];
