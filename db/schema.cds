namespace BlogService;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Products
{
    key ID : UUID;
    name : String(100);
    price : Decimal(6,2);
}
