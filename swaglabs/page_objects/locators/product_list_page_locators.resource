*** Variables ***
${SORT.BY.BUTTON}                 //select[@class="product_sort_container"]
${PRODUCT.IMG}                    //img[@alt="{product_name}"]
${PRODUCT.NAME.TEXT}              //div[contains(@class,"item_name") and text()="{product_name}"]
${PRODUCT.PRICE.TEXT}             //div[contains(@class,"item_name") and text()="{product_name}"]/../../../div[@class="pricebar"]/div[@class="inventory_item_price"]
${PRODUCT.ADD_TO_CART.BUTTON}     //div[contains(@class,"item_name") and text()="{product_name}"]/ancestor::div[@class="inventory_item_description"]//button[text()="Add to cart"]
${PRODUCT.REMOVE.BUTTON}          //div[contains(@class,"item_name") and text()="{product_name}"]/ancestor::div[@class="inventory_item_description"]//button[text()="Remove"]
${FOOTER.SOCIAL.ICON}             //li[@class="social_{social_name}"]