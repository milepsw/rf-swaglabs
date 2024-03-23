*** Variables ***
${BACK.TO.PRODUCT.BUTTON}   id=back-to-products
${PRODUCT.NAME.TEXT}        //div[contains(@class,"inventory_details_name")and text()="{product_name}"]
${PRODUCT.PRICE.TEXT}       //div[contains(@class,"inventory_details_price")and text()="{product_price}"]
${ADD.TO.CART.BUTTON}       //button[contains(@id,"add-to-cart")]
${REMOVE.BUTTON}            //button[contains(@id,"remove")]