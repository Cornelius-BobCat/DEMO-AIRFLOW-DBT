# PostgreSQL Export

Generated on 2024-11-27 10:51:12.373618380 UTC by Fabricate v1.1.0

## Instructions

To load the data into a PostgreSQL database, execute the following command replacing the values with your own:

```bash
docker exec -it postgres_data bash
cd init
psql postgres://<user>:<password>@<host>:<port>/<db> -f load.sql -v current_dir="$(pwd)"
psql postgres://marketplace_user:marketplace_password@localhost:5432/marketplace -f load.sql -v current_dir="$(pwd)"

```

Ce positionner dans le dossier init du conteneur postgres_data

## Exported tables

This is the list of exported tables, with their corresponding row count and file names:

    public.brands: 100 rows => brands-d3ec3f06c18ec81d3fc557d4261562a117080256d06289912b666076cb3a0033.csv
    public.cart: 100 rows => cart-3fe14c2d0bb1a286dbbae2bec817c8388b79105263030e103a5ec1ff51ee6045.csv
    public.cart_items: 100 rows => cart_items-ebb8c8f0c5703e8b8d6ded335e92597c287d0bbeabbce3ca2f6e3c8018163245.csv
    public.categories: 100 rows => categories-a80804a01cb5de5b9c140914b9c8c048b86b4f354997bb09903bdc13b5b5f52d.csv
    public.order_items: 100 rows => order_items-f399daf1616abbb6782849d571abba53d46dd882e1c68bc23df9358630e75075.csv
    public.orders: 100 rows => orders-1d4a84d213f08f2e9952fe8fef8eaf78dc2b7732f832b6466d566fe6c1e11641.csv
    public.paiements: 100 rows => paiements-efef6be2b2cf7416304a02bbab79e29a5d1c4d8c801a0631673a5059d232b148.csv
    public.products: 100 rows => products-04a3cb57b2017fc68c882f8a0eefb81990ab96333d97bd3fdcc6594cfa6fc9be.csv
    public.reviews: 100 rows => reviews-e8ef27cdcbdc3b8724fbb66ce8c8995ad4b637f4d45a7dac981d51db3e874dd2.csv
    public.shipping: 100 rows => shipping-9943939ce07be1dea46253cc1f390b45852f1008b5c245bbff5e9f8e8c8b0a67.csv
    public.stocks: 100 rows => stocks-1858a068e672686c67ebe34aa757c3484103f097fdadffbe7c19d98d5b36ed99.csv
    public.tickets: 100 rows => tickets-876a8ee0895764c469164025eaf42168e7ae8cc92bca74f2ed1d0571bcd00798.csv
    public.users: 50 rows => users-4b5f19126d0e4e447e223c0b8523ec4d7b0db72306168499b9dbc9aa2184a41a.csv
    public.wishlist_items: 100 rows => wishlist_items-72aed6dd980763bcc54929f69463c8a4ddcc86bb30104b4260cc7076c31aa402.csv
    public.wishlists: 100 rows => wishlists-5bfcc2d7e3d0d7544e884fb33b5d666aa56458dbc638e5837384396d58635b5d.csv
