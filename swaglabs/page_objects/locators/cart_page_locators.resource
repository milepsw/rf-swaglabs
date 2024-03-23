*** Variables ***
${CHECKOUT.BUTTON}          id=checkout
${CONTINUE.SHOP.BUTTON}     id=continue-shopping
${PRODUCT.NAME.TEXT}        //div[@class="inventory_item_name" and text()="{product_name}"]
${CART.REMOVE.BUTTON}       //div[@class="inventory_item_name" and text()="{product_name}"]/../..//button[contains(@id,"remove")]
${PRODUCT.QUANTITY.TEXT}    //div[@class="inventory_item_name" and text()="{product_name}"]/../../../div[@class="cart_quantity"]
${PRODUCT.PRICE.TEXT}       //div[@class="inventory_item_name" and text()="{product_name}"]/../../..//div[@class="item_pricebar"]/div[@class="inventory_item_price" and text()="{product_price}"]